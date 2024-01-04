import { useGetAllRecipesQuery } from "../../components/use-queries.ts";
import ButtonBar from "../../components/ButtonBar.tsx";
import { Link, MatchRoute } from "@tanstack/react-router";
import { recipeListRoute, recipeRoute } from "../../router-config.tsx";
import { RecipeCard } from "../../components/material/RecipeCard.tsx";
import { LoadingRecipeCard } from "../../components/material/LoadingRecipeCard.tsx";
import { Button, CheckLabel, PageButton } from "../../components/Button.tsx";
import PaginationBar from "../../components/PaginationBar.tsx";
import { NavButtonBar } from "../../components/NavButtonBar.tsx";

type CheckButtonProps = {
  checked: boolean;
  children: React.ReactNode;
  orderBy?: "time" | "rating" | undefined;
};

export function CheckButton({ checked, children, orderBy }: CheckButtonProps) {
  return (
    <Button checked={checked}>
      <Link
        to={recipeListRoute.to}
        search={(s) => ({ ...s, orderBy: orderBy })}
        disabled={checked}
      >
        <CheckLabel checked={checked}>{children}</CheckLabel>
      </Link>
    </Button>
  );
}

export default function RecipeListPage() {
  const { page, orderBy } = recipeListRoute.useSearch({
    select: (s) => ({
      page: s.page || 0,
      orderBy: s.orderBy,
    }),
  });
  console.log("Rendering RecipeListPage with search Params", page, orderBy);
  const result = useGetAllRecipesQuery(page, orderBy);

  return (
    <div className={"bg-goldgray"}>
      <div className={"container mx-auto pb-16 pt-16"}>
        <NavButtonBar>
          <ButtonBar>
            <CheckButton orderBy={undefined} checked={orderBy === undefined}>
              Show newest first
            </CheckButton>
            <CheckButton orderBy={"rating"} checked={orderBy === "rating"}>
              Order by rating
            </CheckButton>
            <CheckButton orderBy={"time"} checked={orderBy === "time"}>
              Order by time
            </CheckButton>
          </ButtonBar>
        </NavButtonBar>

        <div className="mt-8 grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
          {result.data.content.map((recipe) => {
            return (
              <div
                key={recipe.id}
                className={
                  "h-full transform rounded border border-gray-200 bg-white p-4 shadow-lg transition-all duration-500 ease-in-out hover:drop-shadow-2xl "
                }
              >
                <MatchRoute
                  to={recipeRoute.to}
                  params={{ recipeId: recipe.id }}
                  pending
                >
                  {(match) => {
                    console.log("Match Route", recipe.id, match);
                    return match ? (
                      <LoadingRecipeCard />
                    ) : (
                      <RecipeCard recipe={recipe} />
                    );
                  }}
                </MatchRoute>
              </div>
            );
          })}
        </div>
        <div className={"mt-8 flex justify-center"}>
          <PaginationBar totalPages={result.data.totalPages} currentPage={page}>
            {(btn) => (
              <Link
                from={recipeListRoute.fullPath}
                disabled={btn.disabled}
                search={(s) => ({
                  ...s,
                  page: btn.page,
                })}
              >
                <PageButton state={btn} />
              </Link>
            )}
          </PaginationBar>
        </div>
      </div>
    </div>
  );
}

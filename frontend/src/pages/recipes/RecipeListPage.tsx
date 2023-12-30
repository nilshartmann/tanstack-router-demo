import { useGetAllRecipesQuery } from "../../components/use-queries.ts";
import clsx from "clsx";
import ButtonBar from "../../components/ButtonBar.tsx";
import { Link, MatchRoute } from "@tanstack/react-router";
import { recipeListRoute, recipeRoute } from "../../router-config.tsx";
import { RecipeCard } from "../../components/material/RecipeCard.tsx";
import { LoadingRecipeCard } from "../../components/material/LoadingRecipeCard.tsx";
import { Button, CheckLabel } from "../../components/Button.tsx";

type CheckButtonProps = {
  checked: boolean;
  children: React.ReactNode;
  orderBy?: "time" | "rating" | undefined;
};

export function CheckButton({ checked, children, orderBy }: CheckButtonProps) {
  return (
    <Button checked={checked}>
      <Link search={(s) => ({ ...s, orderBy: orderBy })}>
        <CheckLabel checked={checked}>{children}</CheckLabel>
      </Link>
    </Button>
  );
}

type PageLabel = {
  label: string;
  state: "active" | "disabled" | "selectable";
  page: number;
};

function getPageLabels(
  totalPages: number,
  currentPage: number,
  maxButtons: number = 6,
): PageLabel[] {
  let startPage: number;
  let endPage: number;
  const buttons: PageLabel[] = [];

  if (currentPage <= Math.floor(maxButtons / 2)) {
    startPage = 1;
    endPage = Math.min(maxButtons, totalPages);
  } else if (currentPage > totalPages - Math.floor(maxButtons / 2)) {
    startPage = Math.max(totalPages - maxButtons + 1, 1);
    endPage = totalPages;
  } else {
    startPage = currentPage - Math.floor(maxButtons / 2);
    endPage = startPage + maxButtons - 1;
  }

  buttons.push({
    label: "<<",
    state: currentPage > 1 ? "selectable" : "disabled",
    page: 1,
  }); // First Page Button
  buttons.push({
    label: "<",
    state: currentPage > 1 ? "selectable" : "disabled",
    page: currentPage - 1,
  }); // Previous Page Button
  for (let page = startPage; page <= endPage; page++) {
    buttons.push({
      label: page.toString(),
      state: page !== currentPage ? "selectable" : "active",
      page,
    });
  }
  buttons.push({
    label: ">",
    state: currentPage < totalPages ? "selectable" : "disabled",
    page: currentPage + 1,
  }); // Next Page Button
  buttons.push({
    label: ">>",
    state: currentPage < totalPages ? "selectable" : "disabled",
    page: totalPages,
  }); // Last Page Button

  return buttons;
}

type PageButtonProps = {
  children: React.ReactNode;
  state: "active" | "disabled" | "selectable";
  targetPage: number;
};
export function PageButton({ children, state, targetPage }: PageButtonProps) {
  const buttonClassName = clsx(
    "inline-flex h-12 w-12 items-center justify-center rounded px-4 py-2 font-barlow text-white",
    state === "selectable" &&
      "bg-orange_2 hover:bg-orange_2-500 hover:underline",
    state === "active" && "bg-green underline hover:bg-green",
    state === "disabled" && "bg-gray-300",
  );
  return (
    <Link
      className={buttonClassName}
      disabled={state === "active" || state === "disabled"}
      search={(s) => ({
        ...s,
        page: targetPage,
      })}
    >
      {children}
    </Link>
  );
}

export default function RecipeListPage() {
  const { page = 0, orderBy } = recipeListRoute.useSearch();
  const result = useGetAllRecipesQuery(page, orderBy);

  return (
    <div className={"bg-goldgray"}>
      <div className={"container mx-auto pb-16 pt-16"}>
        <div className={"flex justify-end"}>
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
        </div>

        <div className="mt-8 grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
          {result.data.content.map((recipe) => {
            return (
              <div
                key={recipe.id}
                className={
                  "h-full rounded border border-gray-200 bg-white p-4 shadow-lg hover:drop-shadow-lg "
                }
              >
                <MatchRoute
                  to={recipeRoute.to}
                  params={{ recipeId: recipe.id }}
                  pending
                >
                  {(match) =>
                    match ? (
                      <LoadingRecipeCard />
                    ) : (
                      <RecipeCard recipe={recipe} />
                    )
                  }
                </MatchRoute>
              </div>
            );
          })}
        </div>
        <div className={"mt-8 flex justify-center"}>
          <ButtonBar>
            {getPageLabels(result.data.totalPages, page + 1, 6).map((label) => (
              <PageButton
                key={label.label}
                targetPage={label.page - 1}
                state={label.state}
              >
                {label.label}
              </PageButton>
            ))}
          </ButtonBar>
        </div>
      </div>
    </div>
  );
}

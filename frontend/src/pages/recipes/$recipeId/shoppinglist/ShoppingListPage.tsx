import { shoppingListRoute } from "../../../../App.tsx";
import { useGetRecipeQuery } from "../../../../components/use-queries.ts";
import { Link } from "@tanstack/react-router";

export default function ShopingListPage() {
  const { recipeId } = shoppingListRoute.useParams();

  const {
    data: { recipe },
  } = useGetRecipeQuery(parseInt(recipeId));

  return (
    <div className={"container mx-auto mt-8 md:w-1/2"}>
      <h2 className={"mb-4 mt-4 font-space text-2xl font-bold"}>
        Shopping list
      </h2>

      <h1 className={"mb-8 mt-4 font-space text-5xl font-bold hover:underline"}>
        <Link to={`/recipes/$recipeId`}>{recipe.title}</Link>
      </h1>

      {recipe.ingredients.map((i) => {
        return (
          <div
            className={
              "mb-8 border-b border-dotted border-gray-300 pb-8  text-2xl"
            }
          >
            <i className="fa-regular fa-square me-4 "></i>
            <span className={"font-inter text-gray-900 "}>
              {i.amount} {i.unit} {i.name}
            </span>
          </div>
        );
      })}
    </div>
  );
}

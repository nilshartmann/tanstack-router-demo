import { recipeRoute } from "../../../router-config.tsx";
import { RecipePageContent } from "../../../components/material/RecipePageContent.tsx";
import { useGetRecipeQuery } from "../../../components/use-queries.ts";

export default function RecipePage() {
  const { recipeId } = recipeRoute.useParams();
  const { data } = useGetRecipeQuery(recipeId);

  return <RecipePageContent recipe={data.recipe} />;
}

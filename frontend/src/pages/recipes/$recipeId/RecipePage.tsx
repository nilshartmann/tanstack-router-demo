import { recipeRoute } from "../../../router-config.tsx";
import { RecipePageContent } from "../../../components/material/RecipePageContent.tsx";

export default function RecipePage() {
  const { recipe, feedbacksPromise } = recipeRoute.useLoaderData();

  return <RecipePageContent recipe={recipe} />;
}

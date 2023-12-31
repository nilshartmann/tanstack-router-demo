import { fetchFromApi, getEndpointConfig } from "../fetch-from-api.ts";

export async function fetchRecipe(recipeId: string) {
  const recipe = await fetchFromApi(
    getEndpointConfig("get", "/api/recipes/{recipeId}"),
    {
      path: {
        recipeId,
      },
    },
  );

  return recipe.recipe;
}

export async function fetchFeedbacks(recipeId: string) {
  const result = await fetchFromApi(
    getEndpointConfig("get", "/api/recipes/{recipeId}/feedbacks"),
    {
      path: {
        recipeId,
      },
    },
  );

  return result.feedbacks;
}

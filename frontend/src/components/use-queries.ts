import {
  useSuspenseQuery,
  UseSuspenseQueryResult,
} from "@tanstack/react-query";
import {
  GetRecipeFeedbacksResponse,
  GetRecipeResponse,
  PageResponseRecipeDto,
} from "./api-types.ts";
import { fetchFromApi, getEndpointConfig } from "./fetch-from-api.ts";

export function useGetAllRecipesQuery(
  page: number,
  orderBy?: "time" | "rating",
): UseSuspenseQueryResult<PageResponseRecipeDto> {
  return useSuspenseQuery<PageResponseRecipeDto>({
    queryKey: ["recipe-list", page, orderBy],
    queryFn: () => {
      return fetchFromApi(getEndpointConfig("get", "/api/recipes"), {
        query: {
          page,
          size: 6,
          sort: orderBy,
        },
      });
    },
  });
}

export function useGetRecipeQuery(
  recipeId: number,
): UseSuspenseQueryResult<GetRecipeResponse> {
  return useSuspenseQuery<GetRecipeResponse>({
    queryKey: ["recipes", recipeId],
    queryFn: () => {
      return fetchFromApi(getEndpointConfig("get", "/api/recipes/{recipeId}"), {
        path: {
          recipeId,
        },
      });
    },
  });
}

export function useGetRecipeFeedbacksQuery(
  recipeId: number,
): UseSuspenseQueryResult<GetRecipeFeedbacksResponse> {
  return useSuspenseQuery<GetRecipeFeedbacksResponse>({
    queryKey: ["recipes", recipeId, "feedbacks"],
    queryFn: () => {
      return fetchFromApi(
        getEndpointConfig("get", "/api/recipes/{recipeId}/feedbacks"),
        {
          path: {
            recipeId,
          },
        },
      );
    },
  });
}

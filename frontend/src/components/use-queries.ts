import {
  useMutation,
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
  recipeId: string,
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
  recipeId: string,
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

type AddFeedbackMutationProps = {
  recipeId: string;
  commenter: string;
  stars: number;
  comment: string;
};

export function useAddFeedbackMutation() {
  return useMutation({
    mutationKey: ["..."],
    mutationFn: ({ recipeId, ...feedbackData }: AddFeedbackMutationProps) => {
      return fetchFromApi(
        getEndpointConfig("post", "/api/recipes/{recipeId}/feedbacks"),
        {
          path: { recipeId },
          body: {
            feedbackData,
          },
        },
      );
    },
  });
}

import {
  useMutation,
  useQueryClient,
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
  payload: {
    commenter: string;
    stars: number;
    comment: string;
  };
};

export function useAddFeedbackMutation(recipeId: string) {
  const queryClient = useQueryClient();
  return useMutation({
    mutationKey: ["POST", "recipes", recipeId, "feedbacks"],
    mutationFn: ({ payload }: AddFeedbackMutationProps) => {
      return fetchFromApi(
        getEndpointConfig("post", "/api/recipes/{recipeId}/feedbacks"),
        {
          path: { recipeId },
          body: { feedbackData: payload },
        },
      );
    },
    onSuccess: (newFeedback) => {
      queryClient.setQueryData(
        ["recipes", recipeId, "feedbacks"],
        (oldData: unknown) => {
          console.log("ON SUCCESS", newFeedback, oldData);
          if (!oldData) {
            return oldData;
          }
          const result = GetRecipeFeedbacksResponse.safeParse(oldData);
          if (!result.success) {
            console.log("Unknown query data in cache", result, oldData);
            return oldData;
          }

          const oldFeedbacks = result.data;

          const newData = {
            ...oldFeedbacks,
            feedbacks: [...oldFeedbacks.feedbacks, newFeedback.newFeedback],
          } satisfies GetRecipeFeedbacksResponse;

          console.log("NEW DATA", newData);
          return newData;
        },
      );
    },
  });
}

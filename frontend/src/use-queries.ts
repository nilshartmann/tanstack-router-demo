import {
  useSuspenseQuery,
  UseSuspenseQueryResult,
} from "@tanstack/react-query";
import { PageResponseRecipeDto } from "./api-types.ts";
import { fetchFromApi, getEndpointConfig } from "./fetch-from-api.ts";

export function useGetAllRecipesQuery(): UseSuspenseQueryResult<PageResponseRecipeDto> {
  return useSuspenseQuery<PageResponseRecipeDto>({
    queryKey: ["..."],
    queryFn: () =>
      fetchFromApi(getEndpointConfig("get", "/api/recipes"), {
        query: {
          page: 0,
          size: 6,
        },
      }),
  });
}

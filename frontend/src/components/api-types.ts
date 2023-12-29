import z from "zod";

export type CategoryDto = z.infer<typeof CategoryDto>;
export const CategoryDto = z.object({
  type: z.string(),
  title: z.string(),
  description: z.string(),
  icon: z.string(),
});

export type RecipeDto = z.infer<typeof RecipeDto>;
export const RecipeDto = z.object({
  id: z.string(),
  createdAt: z.string(),
  userFullname: z.string(),
  title: z.string(),
  headline: z.string(),
  preparationTime: z.number(),
  cookTime: z.number(),
  categories: z.array(CategoryDto),
  mealType: z.string(),
  averageRating: z.number(),
});

export type PageResponseRecipeDto = z.infer<typeof PageResponseRecipeDto>;
export const PageResponseRecipeDto = z.object({
  content: z.array(RecipeDto),
  totalPages: z.number(),
  hasNext: z.boolean(),
  hasPrevious: z.boolean(),
});

export type Instruction = z.infer<typeof Instruction>;
export const Instruction = z.object({
  orderNo: z.number().optional(),
  description: z.string().optional(),
});

export type Ingredient = z.infer<typeof Ingredient>;
export const Ingredient = z.object({
  name: z.string().optional(),
  amount: z.number().optional(),
  unit: z.string().optional(),
  orderNo: z.number().optional(),
});

export type DetailedRecipeDto = z.infer<typeof DetailedRecipeDto>;
export const DetailedRecipeDto = z.object({
  id: z.string(),
  createdAt: z.string(),
  userFullname: z.string(),
  title: z.string(),
  headline: z.string(),
  preparationTime: z.number(),
  cookTime: z.number(),
  categories: z.array(CategoryDto),
  mealType: z.string(),
  averageRating: z.number(),
  instructions: z.array(Instruction),
  ingredients: z.array(Ingredient),
});

export type GetRecipeResponse = z.infer<typeof GetRecipeResponse>;
export const GetRecipeResponse = z.object({
  recipe: DetailedRecipeDto,
});

export type Feedback = z.infer<typeof Feedback>;
export const Feedback = z.object({
  id: z.union([z.number(), z.undefined()]).optional(),
  createdAt: z.string(),
  commenter: z.string(),
  rating: z.number(),
  comment: z.string(),
});

export type GetRecipeFeedbacksResponse = z.infer<
  typeof GetRecipeFeedbacksResponse
>;
export const GetRecipeFeedbacksResponse = z.object({
  feedbacks: z.array(Feedback),
});

export type get_Recipes = typeof get_Recipes;
export const get_Recipes = {
  method: z.literal("GET"),
  path: z.literal("/api/recipes"),
  parameters: z.object({
    query: z.object({
      page: z.number().optional(),
      size: z.number().optional(),
      sort: z.union([z.literal("time"), z.literal("rating")]).optional(),
    }),
  }),
  response: PageResponseRecipeDto,
};

export type get_GetRecipe = typeof get_GetRecipe;
export const get_GetRecipe = {
  method: z.literal("GET"),
  path: z.literal("/api/recipes/{recipeId}"),
  parameters: z.object({
    path: z.object({
      recipeId: z.string(),
    }),
  }),
  response: GetRecipeResponse,
};

export type get_GetFeedbacks = typeof get_GetFeedbacks;
export const get_GetFeedbacks = {
  method: z.literal("GET"),
  path: z.literal("/api/recipes/{recipeId}/feedbacks"),
  parameters: z.object({
    path: z.object({
      recipeId: z.string(),
    }),
  }),
  response: GetRecipeFeedbacksResponse,
};

// <EndpointByMethod>
export const EndpointByMethod = {
  get: {
    "/api/recipes": get_Recipes,
    "/api/recipes/{recipeId}": get_GetRecipe,
    "/api/recipes/{recipeId}/feedbacks": get_GetFeedbacks,
  },
};
export type EndpointByMethod = typeof EndpointByMethod;
// </EndpointByMethod>

// <EndpointByMethod.Shorthands>
export type GetEndpoints = EndpointByMethod["get"];
export type AllEndpoints = EndpointByMethod[keyof EndpointByMethod];
// </EndpointByMethod.Shorthands>

// <ApiClientTypes>
export type EndpointParameters = {
  body?: unknown;
  query?: Record<string, unknown>;
  header?: Record<string, unknown>;
  path?: Record<string, unknown>;
};

export type MutationMethod = "post" | "put" | "patch" | "delete";
export type Method = "get" | "head" | MutationMethod;

export type DefaultEndpoint = {
  parameters?: EndpointParameters | undefined;
  response: unknown;
};

export type Endpoint<TConfig extends DefaultEndpoint = DefaultEndpoint> = {
  operationId: string;
  method: Method;
  path: string;
  parameters?: TConfig["parameters"];
  meta: {
    alias: string;
    hasParameters: boolean;
    areParametersRequired: boolean;
  };
  response: TConfig["response"];
};

type Fetcher = (
  method: Method,
  url: string,
  parameters?: EndpointParameters | undefined,
) => Promise<Endpoint["response"]>;

type RequiredKeys<T> = {
  [P in keyof T]-?: undefined extends T[P] ? never : P;
}[keyof T];

type MaybeOptionalArg<T> = RequiredKeys<T> extends never
  ? [config?: T]
  : [config: T];

// </ApiClientTypes>

// <ApiClient>
export class ApiClient {
  baseUrl: string = "";

  constructor(public fetcher: Fetcher) {}

  setBaseUrl(baseUrl: string) {
    this.baseUrl = baseUrl;
    return this;
  }

  // <ApiClient.get>
  get<Path extends keyof GetEndpoints, TEndpoint extends GetEndpoints[Path]>(
    path: Path,
    ...params: MaybeOptionalArg<z.infer<TEndpoint["parameters"]>>
  ): Promise<z.infer<TEndpoint["response"]>> {
    return this.fetcher("get", this.baseUrl + path, params[0]) as Promise<
      z.infer<TEndpoint["response"]>
    >;
  }
  // </ApiClient.get>
}

export function createApiClient(fetcher: Fetcher, baseUrl?: string) {
  return new ApiClient(fetcher).setBaseUrl(baseUrl ?? "");
}

/**
 Example usage:
 const api = createApiClient((method, url, params) =>
   fetch(url, { method, body: JSON.stringify(params) }).then((res) => res.json()),
 );
 api.get("/users").then((users) => console.log(users));
 api.post("/users", { body: { name: "John" } }).then((user) => console.log(user));
 api.put("/users/:id", { path: { id: 1 }, body: { name: "John" } }).then((user) => console.log(user));
*/

// </ApiClient

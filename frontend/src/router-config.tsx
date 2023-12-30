/* eslint-disable react-refresh/only-export-components */

import {
  NotFoundRoute,
  Outlet,
  RootRoute,
  Route,
  Router,
} from "@tanstack/react-router";
import Landing from "./pages/Landing.tsx";
import RecipesLayoutRoute from "./pages/recipes/RecipesLayoutRoute.tsx";
import z from "zod";
import RecipeListPage from "./pages/recipes/RecipeListPage.tsx";
import RecipePage from "./pages/recipes/$recipeId/RecipePage.tsx";
import ShopingListPage from "./pages/recipes/$recipeId/shoppinglist/ShoppingListPage.tsx";
import About from "./pages/About.tsx";
import { Privacy } from "./pages/Privacy.tsx";
import StaticLayoutRoute from "./pages/StaticLayoutRoute.tsx";
import {
  fetchFromApi,
  getEndpointConfig,
} from "./components/fetch-from-api.ts";

const rootRoute = new RootRoute({
  component: () => (
    <>
      <Outlet />
      {/*<TanStackRouterDevtools />*/}
    </>
  ),
});

const staticPageLayoutRoute = new Route({
  id: "staticpages",
  getParentRoute: () => rootRoute,
  component: StaticLayoutRoute,
});

const aboutRoute = new Route({
  path: "about",
  getParentRoute: () => staticPageLayoutRoute,
  component: About,
});

const privacyRoute = new Route({
  path: "privacy",
  getParentRoute: () => staticPageLayoutRoute,
  component: Privacy,
});

const notFoundRoute = new NotFoundRoute({
  component: () => <h1>Page not found 😢</h1>,
  getParentRoute: () => rootRoute,
});

const landingPageRoute = new Route({
  getParentRoute: () => rootRoute,
  path: "/",
  component: Landing,
});

const recipesLayoutRoute = new Route({
  getParentRoute() {
    return rootRoute;
  },
  path: "recipes",
  component: RecipesLayoutRoute,
});

const RecipePageListParams = z.object({
  page: z.number().optional(),
  orderBy: z.enum(["time", "rating"]).optional(),
});
type TRecipePageListParams = z.infer<typeof RecipePageListParams>;

export const recipeListRoute = new Route({
  path: "/",
  getParentRoute() {
    return recipesLayoutRoute;
  },
  validateSearch: (search: Record<string, unknown>): TRecipePageListParams =>
    RecipePageListParams.parse(search),
  component: RecipeListPage,
});

export const recipeRoute = new Route({
  path: "$recipeId",
  getParentRoute() {
    return recipesLayoutRoute;
  },

  // pendingComponent: () => <GlobalLoadingIndicator />,

  loader: ({ params }) => {
    return fetchFromApi(getEndpointConfig("get", "/api/recipes/{recipeId}"), {
      path: {
        recipeId: params.recipeId,
      },
    });
  },
  component: RecipePage,
});

export const shoppingListRoute = new Route({
  path: "$recipeId/shoppinglist",
  getParentRoute() {
    return recipesLayoutRoute;
  },
  component: ShopingListPage,
});

const routeTree = rootRoute.addChildren([
  landingPageRoute,
  staticPageLayoutRoute.addChildren([aboutRoute, privacyRoute]),
  recipesLayoutRoute.addChildren([
    recipeListRoute,
    recipeRoute,
    shoppingListRoute,
  ]),
]);

export const router = new Router({ routeTree, notFoundRoute });

declare module "@tanstack/react-router" {
  interface Register {
    router: typeof router;
  }
}

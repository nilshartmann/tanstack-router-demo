import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import Landing from "./pages/Landing.tsx";
import { Suspense } from "react";
import {
  NotFoundRoute,
  Outlet,
  RootRoute,
  Route,
  Router,
  RouterProvider,
} from "@tanstack/react-router";
import RecipeListPage from "./pages/recipes/RecipeListPage.tsx";
import AppLayout from "./pages/recipes/AppLayout.tsx";
import z from "zod";
import RecipePage from "./pages/recipes/$recipeId/RecipePage.tsx";
import ShopingListPage from "./pages/recipes/$recipeId/shoppinglist/ShoppingListPage.tsx";

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      retry: false,
    },
  },
});

const rootRoute = new RootRoute({
  component: () => (
    <>
      <Outlet />
      {/*<TanStackRouterDevtools />*/}
    </>
  ),
});

const notFoundRoute = new NotFoundRoute({
  component: () => <h1>Page not found 😢</h1>,
  getParentRoute: () => rootRoute,
});

const indexRoute = new Route({
  getParentRoute: () => rootRoute,
  path: "/",
  component: Landing,
});

const appRoute = new Route({
  getParentRoute() {
    return rootRoute;
  },
  path: "recipes",
  component: AppLayout,
});

const RecipePageListParams = z.object({
  page: z.number().optional(),
  orderBy: z.enum(["time", "rating"]).optional(),
});
type TRecipePageListParams = z.infer<typeof RecipePageListParams>;

export const recipeListRoute = new Route({
  path: "/",
  getParentRoute() {
    return appRoute;
  },
  validateSearch: (search: Record<string, unknown>): TRecipePageListParams =>
    RecipePageListParams.parse(search),
  component: RecipeListPage,
});

export const recipeRoute = new Route({
  path: "$recipeId",
  getParentRoute() {
    return appRoute;
  },
  component: RecipePage,
});

export const shoppingListRoute = new Route({
  path: "$recipeId/shoppinglist",
  getParentRoute() {
    return appRoute;
  },
  component: ShopingListPage,
});

const routeTree = rootRoute.addChildren([
  indexRoute,
  appRoute.addChildren([recipeListRoute, recipeRoute, shoppingListRoute]),
]);
const router = new Router({ routeTree, notFoundRoute });
declare module "@tanstack/react-router" {
  interface Register {
    router: typeof router;
  }
}

export default function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <Suspense fallback={<h1>Loading</h1>}>
        <RouterProvider router={router} />
      </Suspense>
      {/*<ReactQueryDevtools initialIsOpen={false} />*/}
    </QueryClientProvider>
  );
}

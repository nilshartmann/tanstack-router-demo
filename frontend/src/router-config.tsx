import {NotFoundRoute, Outlet, RootRoute, Route, Router} from "@tanstack/react-router";
import Landing from "./pages/Landing.tsx";
import AppLayout from "./pages/recipes/AppLayout.tsx";
import z from "zod";
import RecipeListPage from "./pages/recipes/RecipeListPage.tsx";
import RecipePage from "./pages/recipes/$recipeId/RecipePage.tsx";
import ShopingListPage from "./pages/recipes/$recipeId/shoppinglist/ShoppingListPage.tsx";

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

const recipesLayoutRoute = new Route({
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
	indexRoute,
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
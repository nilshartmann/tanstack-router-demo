import { Outlet } from "@tanstack/react-router";
import RecipesHeader from "../../components/layout/RecipesHeader.tsx";
import { Suspense } from "react";
import { GlobalLoadingIndicator } from "../../components/material/GlobalLoadingIndicator.tsx";

export default function RecipesPageLayout() {
  return (
    <>
      <RecipesHeader />
      <main className={"flex-grow "}>
        <Suspense fallback={<GlobalLoadingIndicator />}>
          <Outlet />
        </Suspense>
      </main>
    </>
  );
}

import { Outlet } from "@tanstack/react-router";
import RecipesHeader from "../../components/layout/RecipesHeader.tsx";
import { Suspense } from "react";
import { GlobalLoadingIndicator } from "../../components/material/GlobalLoadingIndicator.tsx";
import { Timer } from "../../components/Timer.tsx";

export default function RecipesPageLayout() {
  return (
    <>
      <RecipesHeader>
        <Timer />
      </RecipesHeader>
      <main className={"flex-grow "}>
        <Suspense fallback={<GlobalLoadingIndicator />}>
          <Outlet />
        </Suspense>
      </main>
    </>
  );
}

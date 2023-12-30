import { Outlet } from "@tanstack/react-router";
import Footer from "../../components/layout/Footer.tsx";
import RecipesHeader from "../../components/layout/RecipesHeader.tsx";
import { Suspense } from "react";
import { GlobalLoadingIndicator } from "../../components/material/GlobalLoadingIndicator.tsx";

export default function RecipesLayoutRoute() {
  return (
    <div className={"flex min-h-screen flex-col"}>
      <RecipesHeader />
      <main className={"flex-grow "}>
        <Suspense fallback={<GlobalLoadingIndicator />}>
          <Outlet />
        </Suspense>
      </main>
      <Footer />
    </div>
  );
}

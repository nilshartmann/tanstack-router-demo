import { Outlet } from "@tanstack/react-router";
import Footer from "../../components/layout/Footer.tsx";
import RecipesHeader from "../../components/layout/RecipesHeader.tsx";

export default function RecipesLayoutRoute() {
  return (
    <div className={"flex min-h-screen flex-col"}>
      <RecipesHeader />
      <main className={"flex-grow "}>
        <Outlet />
      </main>
      <Footer />
    </div>
  );
}

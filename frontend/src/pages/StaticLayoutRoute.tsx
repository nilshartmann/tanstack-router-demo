import { Link, Outlet } from "@tanstack/react-router";
import Footer from "../components/layout/Footer.tsx";

export default function StaticLayoutRoute() {
  return (
    <div className={"flex min-h-screen flex-col"}>
      <div className={"container mx-auto h-12"}>
        <div className={"flex h-full items-center justify-between"}>
          <nav className={"space-x-3"}>
            <Link
              className={"hover:text-red hover:underline"}
              to={"/"}
              activeProps={{
                className: "text-red underline",
              }}
            >
              Home
            </Link>
            <Link
              className={"hover:text-red hover:underline"}
              to={"/about"}
              activeProps={{
                className: "text-red underline",
              }}
            >
              About
            </Link>
            <Link
              className={"hover:text-red hover:underline"}
              to={"/privacy"}
              activeProps={{
                className: "text-red underline",
              }}
            >
              Privacy
            </Link>
          </nav>
        </div>
      </div>
      <Outlet />
      <Footer />
    </div>
  );
}

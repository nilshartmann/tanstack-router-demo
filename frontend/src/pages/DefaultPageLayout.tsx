import { Link, Outlet } from "@tanstack/react-router";
import { DefaultLayout } from "../components/layout/DefaultLayout.tsx";

export default function DefaultPageLayout() {
  const nav = (
    <>
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
    </>
  );

  return (
    <DefaultLayout nav={nav}>
      <Outlet />
    </DefaultLayout>
  );
}

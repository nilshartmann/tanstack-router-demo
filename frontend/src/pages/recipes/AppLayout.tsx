import { Link, LinkProps, Outlet } from "@tanstack/react-router";
import { H1 } from "../../components/Heading.tsx";

export default function AppLayout() {
  return (
    <div className={"flex min-h-screen flex-col"}>
      <HeaderTwo />
      <main className={"flex-grow "}>
        <Outlet />
      </main>
      <footer className={"h-16 bg-gray-800 font-inter text-sm text-gray-200 "}>
        <div
          className={
            "container mx-auto flex h-full items-center justify-between"
          }
        >
          <p>Dummy content only. Do not cook 👮‍.</p>
          <p>https://github.com/nilshartmann/larifari</p>
        </div>
      </footer>
    </div>
  );
}

function HeaderTwo() {
  return (
    <>
      <div className={"container mx-auto h-12"}>
        <div className={"flex h-full items-center justify-between"}>
          <nav className={"space-x-3"}>
            <span className={"bg-white p-2"}>Home</span>
            <span className={"bg-white p-2"}>Recipes</span>
            <span className={"bg-white p-2"}>Login</span>
          </nav>
        </div>
      </div>
      <header
        className={"flex h-24 items-center bg-cover bg-center"}
        style={{
          backgroundImage: "url('/images/landing-page.png')",
        }}
      >
        <div className={"container mx-auto"}>
          <div className={"flex h-full items-center justify-between"}>
            <H1
              className={
                "inline-block bg-white p-2 pb-3 font-space text-4xl font-bold text-red"
              }
            >
              Recipify
            </H1>
            <nav className={"space-x-3"}>
              <HeaderLink to={"/"}>Home</HeaderLink>
              <HeaderLink to={"/recipes"}>Recipes</HeaderLink>
              <HeaderLink to={"/"}>Login</HeaderLink>
            </nav>
          </div>
        </div>
      </header>
    </>
  );
}

type To = LinkProps["to"];
type HeaderLinkProps = {
  to: To;
  children: React.ReactNode;
};

export function HeaderLink({ to, children }: HeaderLinkProps) {
  return (
    <Link className={"bg-white p-2 hover:underline"} to={to}>
      {children}
    </Link>
  );
}

import { Link, LinkProps } from "@tanstack/react-router";

type To = LinkProps["to"];
type HeaderLinkProps = {
  to: To;
  children: React.ReactNode;
};

function HeaderLink({ to, children }: HeaderLinkProps) {
  return (
    <Link className={"bg-white p-2 hover:underline"} to={to}>
      {children}
    </Link>
  );
}

export default function RecipesNav() {
  return (
    <nav className={"space-x-3"}>
      <HeaderLink to={"/"}>Home</HeaderLink>
      <HeaderLink to={"/recipes"}>Recipes</HeaderLink>
      <HeaderLink to={"/"}>Login</HeaderLink>
    </nav>
  );
}

import clsx from "clsx";
import { Link, LinkProps } from "@tanstack/react-router";

type To = LinkProps["to"];

type AppLinkProps = {
  to: To;
  size?: "sm" | "regular" | "lg";
  children: React.ReactNode;
};

export default function AppLink({
  size = "regular",
  to,
  children,
}: AppLinkProps) {
  return (
    <Link
      className={clsx(
        "rounded border-2  font-inter font-normal text-white hover:cursor-pointer  hover:text-white hover:shadow-2xl hover:shadow-red",
        size === "lg" &&
          "mb-2 mt-2 border-red bg-red p-4 text-2xl hover:border-red hover:bg-orange_2 ",
        size === "regular" &&
          "mb-2 mt-2 border-2 bg-orange_2 p-2 hover:bg-orange_2-500",
      )}
      to={to}
    >
      {children}
    </Link>
  );
}

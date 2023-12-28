import clsx from "clsx";
import { Link, LinkProps } from "@tanstack/react-router";

type To = LinkProps["to"];

type AppLinkProps = {
  to: To;
  size?: "sm" | "regular" | "lg";
  variant?: "button" | "link";
  children: React.ReactNode;
};

export default function AppLink({
  size = "regular",
  to,
  variant,
  children,
}: AppLinkProps) {
  return (
    <Link
      className={clsx(
        variant === "button" &&
          "rounded border-2 border-red bg-red font-inter font-normal text-white hover:cursor-pointer hover:border-red hover:bg-orange_2 hover:text-white hover:shadow-2xl hover:shadow-red",
        variant === "link" &&
          "&& border-b-main text-primary decoration-primary text-3xl font-bold hover:underline hover:decoration-2",

        {
          "mb-2 mt-2 p-4 text-2xl": variant === "button" && size === "lg",
        },
        {
          "mb-2 mt-2 border-2 p-2 text-base":
            variant === "button" && size === "regular",
        },
        {
          "mt-1 border-2 px-3 py-1 text-sm":
            variant === "button" && size === "sm",
        },
      )}
      to={to}
    >
      {children}
    </Link>
  );
}

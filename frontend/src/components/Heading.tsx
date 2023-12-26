import type { ReactNode } from "react";
import clsx from "clsx";

type HeadingProps = {
  children: ReactNode;
  className?: string;
  style?: "default" | "primary";
};

export function H1({ children, style = "default", className }: HeadingProps) {
  return (
    <h1
      className={clsx(
        `text-3xl`,
        style === "primary" &&
          "border-b-[1px] border-b-grey-3 font-bold text-primary",
        className,
      )}
    >
      {children}
    </h1>
  );
}

export function H2({ children, style = "default", className }: HeadingProps) {
  return (
    <h1
      className={clsx(
        `text-xl`,
        style === "primary" &&
          "border-b-[1px] border-b-grey-3 font-bold text-primary",
        className,
      )}
    >
      {children}
    </h1>
  );
}

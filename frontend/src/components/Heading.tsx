import type { ReactNode } from "react";
import clsx from "clsx";

type HeadingProps = {
  children: ReactNode;
  className?: string;
  style?: "default" | "primary";
};

export function H1({ children, style = "default", className }: HeadingProps) {
  return (
    <h1 className={clsx("font-space text-3xl font-bold", className)}>
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
          "border-b-grey-3 text-primary border-b-[1px] font-bold",
        className,
      )}
    >
      {children}
    </h1>
  );
}

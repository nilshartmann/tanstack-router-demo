import type { ReactNode } from "react";
import clsx from "clsx";

type HeadingProps = {
  children: ReactNode;
  className?: string;
};

export function H1({ children, className }: HeadingProps) {
  return (
    <h1 className={clsx("font-space text-3xl font-bold", className)}>
      {children}
    </h1>
  );
}

import type { ReactNode } from "react";
import { twMerge } from "tailwind-merge";

type HeadingProps = {
  children: ReactNode;
  className?: string;
};

export function H1({ children, className }: HeadingProps) {
  return (
    <h1 className={twMerge("font-space text-3xl font-bold", className)}>
      {children}
    </h1>
  );
}

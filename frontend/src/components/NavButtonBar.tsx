import { ReactNode } from "react";
import ButtonBar from "./ButtonBar.tsx";
import { twMerge } from "tailwind-merge";

type NavButtonBarProps = {
  align?: "left" | "right";
  children: ReactNode;
};

export function NavButtonBar({ align = "right", children }: NavButtonBarProps) {
  const className = twMerge(
    "flex",
    align === "left" ? "justify-start" : "justify-end",
  );

  return (
    <div className={className}>
      <ButtonBar>{children}</ButtonBar>
    </div>
  );
}

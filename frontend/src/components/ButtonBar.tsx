import { ReactNode } from "react";
import { twMerge } from "tailwind-merge";

type ButtonBarProps = { children: ReactNode; align?: "start" | "end" };
export default function ButtonBar({
  children,
  align = "start",
}: ButtonBarProps) {
  const className = twMerge("space-x-4", align === "end" && "flex justify-end");
  return <div className={className}>{children}</div>;
}

import { ReactNode } from "react";

type ButtonBarProps = { children: ReactNode };
export default function ButtonBar({ children }: ButtonBarProps) {
  return <div className={"space-x-4"}>{children}</div>;
}

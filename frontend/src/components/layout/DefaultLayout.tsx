import { ReactNode } from "react";
import Footer from "./Footer.tsx";

type DefaultLayoutProps = {
  children: ReactNode;
  nav?: ReactNode;
};

export function DefaultLayout({ children, nav }: DefaultLayoutProps) {
  return (
    <div className={"flex min-h-screen flex-col"}>
      <div className={"container mx-auto h-12"}>
        <div className={"flex h-full items-center justify-between"}>
          <nav className={"space-x-3"}>{nav}</nav>
        </div>
      </div>

      {children}

      <Footer />
    </div>
  );
}

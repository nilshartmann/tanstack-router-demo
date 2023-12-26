import clsx from "clsx";

type AppLinkProps = {
  href: string;
  size?: "sm" | "regular" | "lg";
  variant?: "button" | "link";
  children: React.ReactNode;
};

export default function AppLink({
  size = "regular",
  href,
  variant,
  children,
}: AppLinkProps) {
  return (
    <a
      className={clsx(
        variant === "button" &&
          "text-white hover:bg-orange_2 hover:text-white font-inter rounded border-2 border-red bg-red font-normal hover:cursor-pointer hover:border-red",
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
      href={href}
    >
      {children}
    </a>
  );
}

import { twMerge } from "tailwind-merge";

type ButtonProps = {
  size?: "sm" | "regular" | "lg";
  checked?: boolean;
  children: React.ReactNode;
};

export function Button({ size = "regular", checked, children }: ButtonProps) {
  return (
    <span
      className={twMerge(
        "inline-flex transform items-center justify-center rounded px-4 py-2 font-barlow font-normal text-white  transition-all duration-500 ease-in-out hover:cursor-pointer hover:underline",
        size === "lg" &&
          "mb-2  mt-2 border-2 border-red bg-red p-4 text-2xl hover:border-red hover:bg-orange_2 hover:shadow-2xl hover:shadow-red ",
        size === "regular" && "mb-2 mt-2",
        size === "regular" && "bg-orange_2 p-2 hover:bg-orange_2-500",
        size === "regular" &&
          checked &&
          "bg-green hover:cursor-default hover:bg-green hover:no-underline",
      )}
    >
      {children}
    </span>
  );
}

type CheckLabelProps = {
  children: React.ReactNode;
  checked: boolean;
};

export function CheckLabel({ children, checked }: CheckLabelProps) {
  const iconClassName = twMerge(
    "fa-regular",
    checked
      ? "fa-circle-check text-white underline-none hover:no-underline cursor-default no-underline"
      : "fa-circle text-gray-200",
  );

  const labelClassName = twMerge(
    "ms-2",
    checked ? "hover:no-underline" : "hover:underline",
  );

  return (
    <>
      <i className={iconClassName}></i>
      <span className={labelClassName}>{children}</span>
    </>
  );
}

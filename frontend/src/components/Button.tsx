import { twMerge } from "tailwind-merge";

type ButtonProps = {
  size?: "regular" | "lg";
  checked?: boolean;
  children: React.ReactNode;
  disabled?: boolean;
};

export function Button({
  size = "regular",
  checked,
  children,
  disabled,
}: ButtonProps) {
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
        disabled &&
          "cursor-default cursor-default bg-orange_2-200 hover:cursor-default hover:bg-orange_2-200",
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
      ? "fa-circle-check underline-none cursor-default text-white no-underline hover:no-underline"
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

type PageButtonState = {
  state: "active" | "disabled" | "selectable";
  label: string;
};

type PageButtonProps = {
  state: PageButtonState;
};
export function PageButton({ state: { state, label } }: PageButtonProps) {
  const buttonClassName = twMerge(
    "inline-flex h-12 w-12 items-center justify-center rounded px-4 py-2 font-barlow text-white",
    state === "selectable" &&
      "bg-orange_2 hover:bg-orange_2-500 hover:underline",
    state === "active" && "bg-green underline hover:bg-green",
    state === "disabled" && "bg-gray-300",
  );
  return <span className={buttonClassName}>{label}</span>;
}

import clsx from "clsx";

type ButtonProps = {
  size?: "sm" | "regular" | "lg";
  checked?: boolean;
  children: React.ReactNode;
};

export function Button({ size = "regular", checked, children }: ButtonProps) {
  return (
    <span
      className={clsx(
        "inline-flex items-center  justify-center rounded  px-4 py-2 font-barlow  font-normal text-white hover:cursor-pointer  hover:underline ",
        size === "lg" &&
          "mb-2  mt-2 border-2 border-red bg-red p-4 text-2xl hover:border-red hover:bg-orange_2 hover:shadow-2xl hover:shadow-red ",
        size === "regular" && "mb-2 mt-2",
        size === "regular" && checked
          ? "bg-green hover:bg-green "
          : "bg-orange_2 p-2 hover:bg-orange_2-500",
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
  const iconClassName = clsx(
    "fa-regular",
    checked ? "fa-circle-check text-white" : "fa-circle text-gray-200",
  );

  return (
    <>
      <i className={iconClassName}></i>
      <span className={"ms-2 hover:underline"}>{children}</span>
    </>
  );
}

import IntrinsicElements = React.JSX.IntrinsicElements;
import { twMerge } from "tailwind-merge";

type InputProps = IntrinsicElements["input"];

export function Input({ className, ...rest }: InputProps) {
  const inputClassname = twMerge(
    "h-8 w-full max-w-full rounded border border-gray-400 bg-white p-2 text-gray-500",
    className,
  );

  return <input className={inputClassname} {...rest}></input>;
}

type TextareaProps = IntrinsicElements["textarea"];

export function Textarea({ className, ...rest }: TextareaProps) {
  const inputClassname = twMerge(
    "w-full max-w-full rounded border border-gray-400 bg-white p-2 text-gray-500",
    className,
  );

  return <textarea className={inputClassname} {...rest}></textarea>;
}

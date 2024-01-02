import IntrinsicElements = React.JSX.IntrinsicElements;

type InputProps = {
  value?: string | undefined;
  placeholder?: string | undefined;
};

type X = IntrinsicElements["input"];

export function Input(props: X) {
  return (
    <input
      className={
        "h-8 max-w-full rounded border border-gray-400 bg-white p-2 text-gray-500"
      }
      {...props}
    ></input>
  );
}

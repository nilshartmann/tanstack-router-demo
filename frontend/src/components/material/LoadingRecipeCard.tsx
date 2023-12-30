import LoadingIndicator from "../LoadingIndicator.tsx";

export function LoadingRecipeCard() {
  return (
    <div className={"flex h-full items-center justify-center"}>
      <LoadingIndicator />
    </div>
  );
}

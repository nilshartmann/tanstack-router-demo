import { Input, Textarea } from "../Input";
import { Button } from "../Button.tsx";
import ButtonBar from "../ButtonBar.tsx";
import { useState } from "react";
import { twMerge } from "tailwind-merge";
import { useAddFeedbackMutation } from "../use-queries.ts";

type AddFeedbackFormProps = {
  recipeId: string;
};

type FormState = {
  commenter: string;
  stars: number;
  comment: string;
};

export function FeedbackForm({ recipeId }: AddFeedbackFormProps) {
  const [formState, setFormState] = useState<FormState>({
    commenter: "",
    stars: -1,
    comment: "",
  });

  const mutation = useAddFeedbackMutation(recipeId);

  const formDisabled = mutation.isPending;

  const handleChange = (e: {
    target: { name: string; value: string | number };
  }) => {
    mutation.reset();
    setFormState((f) => ({
      ...f,
      [e.target.name]: e.target.value,
    }));
  };

  const handleSave = async () => {
    const r = await mutation.mutateAsync({
      payload: formState,
    });

    console.log("RESULT", r);
    setFormState({
      commenter: "",
      stars: 0,
      comment: "",
    });
  };

  return (
    <>
      <h2 className={"mb-4 font-space text-3xl font-bold"}>Your opinion?</h2>
      <div
        className={
          "mb-8 rounded-2xl border border-dotted border-gray-300 bg-white p-8 font-inter text-gray-500 hover:border-solid"
        }
      >
        <div className={"mb-4 font-medium"}>Your name:</div>

        <div className={"mb-8"}>
          <Input
            disabled={formDisabled}
            name={"commenter"}
            className={
              "rounded-lg border-gray-300 pb-6 pt-6 hover:outline hover:outline-orange_2 focus:outline focus:outline-orange_2"
            }
            value={formState.commenter}
            onChange={handleChange}
          />
        </div>

        <div className={"mb-4 font-medium"}>Your rating:</div>

        <div className={"mb-8"}>
          <RatingInput
            stars={formState.stars}
            onStarsChange={(setter) =>
              handleChange({
                target: { name: "stars", value: setter(formState.stars) },
              })
            }
            disabled={formDisabled}
          />
        </div>

        <div className={"mb-4 font-medium"}>Your comment:</div>
        <div className={"mb-2"}>
          <Textarea
            rows={4}
            name={"comment"}
            className={
              "rounded-lg border-gray-300 pb-6 pt-3 focus:outline focus:outline-orange_2"
            }
            value={formState.comment}
            onChange={handleChange}
            disabled={formDisabled}
          />
        </div>
        <div className={"mb-4 flex w-full items-center"}>
          <span
            className={twMerge(
              "text-sm",
              formState.comment.length > 500 && "text-red",
            )}
          >
            {formState.comment.length}/500 characters
          </span>
        </div>
        <div>
          <ButtonBar align={"end"}>
            <Button disabled={formDisabled}>
              <button onClick={() => handleSave()} disabled={formDisabled}>
                Submit Rating
              </button>
            </Button>
          </ButtonBar>
        </div>
        {mutation.isSuccess && (
          <div>
            <div className={"mt-4 font-medium text-green"}>
              Thanks for your submission!
            </div>
          </div>
        )}
        {mutation.isError && (
          <div>
            <div className={"mt-4 font-medium text-red"}>Submission failed</div>
          </div>
        )}
      </div>
    </>
  );
}

type RatingInputProps = {
  stars: number;
  onStarsChange: (action: (newStars: number) => number) => void;
  disabled?: boolean;
};

function RatingInput({ stars, onStarsChange, disabled }: RatingInputProps) {
  const [hoverStarNo, setHoverStarNo] = useState(-1);

  const starClassName = (starNo: number) => {
    const isSelected = starNo <= stars;
    const isHovered = starNo <= hoverStarNo;
    const isAnyHovered = hoverStarNo >= 0;

    // 😱  😱  😱  😱  😱  😱  😱  😱  😱  😱  😱
    return twMerge(
      "fa-star cursor-pointer pe-2 text-orange_2 focus:outline focus:outline-orange_2",
      starNo > 0 && "ps-2",
      isSelected || (starNo >= stars && isHovered && !disabled)
        ? "fa-solid"
        : "fa-regular",
      isAnyHovered && isSelected && starNo > hoverStarNo && "text-orange_2-200",
      !isAnyHovered && isSelected && "text-gray-500",
      !isAnyHovered && !isSelected && "text-gray-300",
      "disabled:cursor-default disabled:text-gray-300 disabled:hover:text-gray-300",
    );
  };

  const handleSelectStar = (starNo: number) =>
    onStarsChange((s) => (s === starNo ? -1 : starNo));

  const handleStarLeave = (starNo: number) =>
    setHoverStarNo((s) => (s === starNo ? -1 : s));

  return (
    <div className={"flex w-full items-center justify-between text-lg"}>
      <button
        disabled={disabled}
        onClick={() => handleSelectStar(0)}
        className={starClassName(0)}
        onFocus={() => setHoverStarNo(0)}
        onBlur={() => handleStarLeave(0)}
        onMouseEnter={() => setHoverStarNo(0)}
        onMouseLeave={() => handleStarLeave(0)}
      />
      <button
        disabled={disabled}
        onClick={() => handleSelectStar(1)}
        className={starClassName(1)}
        onFocus={() => setHoverStarNo(1)}
        onBlur={() => handleStarLeave(1)}
        onMouseEnter={() => setHoverStarNo(1)}
        onMouseLeave={() => handleStarLeave(1)}
      />
      <button
        disabled={disabled}
        onClick={() => handleSelectStar(2)}
        className={starClassName(2)}
        onFocus={() => setHoverStarNo(2)}
        onBlur={() => handleStarLeave(2)}
        onMouseEnter={() => setHoverStarNo(2)}
        onMouseLeave={() => handleStarLeave(2)}
      />
      <button
        disabled={disabled}
        onClick={() => handleSelectStar(3)}
        className={starClassName(3)}
        onFocus={() => setHoverStarNo(3)}
        onBlur={() => handleStarLeave(3)}
        onMouseEnter={() => setHoverStarNo(3)}
        onMouseLeave={() => handleStarLeave(3)}
      />
      <button
        disabled={disabled}
        onClick={() => handleSelectStar(4)}
        className={starClassName(4)}
        onFocus={() => setHoverStarNo(4)}
        onBlur={() => handleStarLeave(4)}
        onMouseEnter={() => setHoverStarNo(4)}
        onMouseLeave={() => handleStarLeave(4)}
      />
    </div>
  );
}

import { Suspense } from "react";
import LoadingIndicator from "../LoadingIndicator.tsx";
import { Await } from "@tanstack/react-router";
import FeedbackList from "./FeedbackList.tsx";
import { recipeRoute } from "../../router-config.tsx";

export function RecipeRatings() {
  const { feedbacksPromise } = recipeRoute.useLoaderData();

  return (
    <>
      <h2 className={"mb-4 font-space text-3xl font-bold"}>Ratings</h2>
      <Suspense
        fallback={<LoadingIndicator>Loading Ratings...</LoadingIndicator>}
      >
        <Await promise={feedbacksPromise}>
          {(feedbacks) => <FeedbackList feedbacks={feedbacks} />}
        </Await>
      </Suspense>
    </>
  );
}

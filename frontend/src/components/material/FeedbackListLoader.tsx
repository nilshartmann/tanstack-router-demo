import { useGetRecipeFeedbacksQuery } from "../use-queries.ts";
import FeedbackList from "./FeedbackList.tsx";

type FeedbackListProps = {
  recipeId: string;
};
export default function FeedbackListLoader({ recipeId }: FeedbackListProps) {
  const {
    data: { feedbacks = [] },
  } = useGetRecipeFeedbacksQuery(recipeId);

  return <FeedbackList feedbacks={feedbacks} />;
}

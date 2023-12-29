import { useGetRecipeFeedbacksQuery } from "../../../components/use-queries.ts";
import { RatingStars } from "../../../components/RatingStars.tsx";
import { Fragment } from "react";
import { formatMinuteDuration } from "../../../components/FormatMinuteDuration.tsx";
import { Link } from "@tanstack/react-router";
import { recipeRoute } from "../../../router-config.tsx";

export default function RecipePage() {
  // const { recipeId } = recipeRoute.useParams();
  // const {
  //   data: { recipe },
  // } = useGetRecipeQuery(parseInt(recipeId));

  const { recipe } = recipeRoute.useLoaderData();

  const {
    data: { feedbacks = [] },
  } = useGetRecipeFeedbacksQuery(recipe.id);

  return (
    <div className={"mb-20"}>
      <div className="mt-8 bg-goldgray pb-12 pe-8 ps-8 pt-12">
        <div
          className={"container mx-auto flex flex-col sm:flex-row sm:space-x-8"}
        >
          <div className={"sm:w-1/2"}>
            <div className={"flex h-full flex-col justify-between"}>
              <div>
                <div className={"flex justify-between"}>
                  <p
                    className={
                      "font-space text-sm font-medium uppercase tracking-[2px] text-red"
                    }
                  >
                    {recipe.mealType}
                  </p>
                </div>
                <h1 className={"mb-4 mt-4 font-space text-5xl font-bold"}>
                  {recipe.title}
                </h1>
                <p className={"text mt-2 font-inter text-gray-500"}>
                  {recipe.headline}
                </p>
                <div className={"mt-4 space-x-1 text-orange_2"}>
                  <RatingStars rating={recipe.averageRating} /> (
                  {recipe.averageRating.toFixed(2)})
                </div>
              </div>
              <div>
                <div className={"mt-4 flex"}>
                  <div className={"mt-4 space-y-2"}>
                    {recipe.categories.map((c) => (
                      <p
                        key={c.description + "_" + c.title}
                        className={
                          "me-2 inline-block rounded border border-green bg-white p-2 text-[15px] text-green"
                        }
                      >
                        <i className={c.icon} />
                        <span className={"ms-2"}>{c.title}</span>
                      </p>
                    ))}
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className={"sm:w-1/2"}>
            <img
              className="mt-2 w-full rounded object-cover sm:mt-4"
              src={`/images/recipes/food_${recipe.id}.png`}
              alt={recipe.title}
            />
          </div>
        </div>
      </div>
      <div className={"container mx-auto mt-8 flex space-x-8"}>
        <div className={"w-2/3"}>
          <h2 className={"mb-12 mt-4 font-space text-3xl font-bold"}>
            Instructions
          </h2>

          <div className={"pe-2 ps-2"}>
            {recipe.instructions.map((i) => (
              <Fragment key={i.orderNo}>
                <div
                  className={
                    "mt-8 items-start border-b border-dotted border-gray-300 pb-8 sm:flex "
                  }
                >
                  <div className={"font-space font-medium text-red sm:w-1/4"}>
                    Step {i.orderNo}
                  </div>
                  <div
                    className={
                      "mt-4 font-inter text-gray-500 sm:mt-0 sm:w-3/4 sm:pe-1.5"
                    }
                  >
                    {i.description}
                  </div>
                </div>
              </Fragment>
            ))}
          </div>
        </div>
        <div className={"w-1/3"}>
          <div className={"border-1 w-full rounded-2xl bg-goldgray p-8"}>
            <div className={"mb-8 mt-4 flex items-end justify-between ps-4"}>
              <h2 className={"font-space text-3xl font-bold"}>Ingredients</h2>
              <div className={"font-inter text-gray-500 "}>
                <Link
                  to={"/recipes/$recipeId/shoppinglist"}
                  params={{ recipeId: String(recipe.id) }}
                >
                  <i className="fa-solid  fa-basket-shopping"></i>{" "}
                  <span className={"underline"}> Shopping list</span>
                </Link>
              </div>
            </div>
            {recipe.ingredients.map((i) => {
              return (
                <div
                  className={
                    "mb-4 border-b border-dotted border-gray-300 pb-4 ps-4"
                  }
                  key={i.name}
                >
                  <i className="fa-regular fa-circle-check me-2 text-orange_2 "></i>
                  <span className={"font-inter text-gray-500 "}>
                    {i.amount} {i.unit} {i.name}
                  </span>
                </div>
              );
            })}
          </div>
          <div className={"border-1 mt-8 w-full rounded-2xl bg-goldgray p-8"}>
            <h2 className={"mb-8 mt-4 ps-4 font-space text-3xl font-bold"}>
              Cooking time
            </h2>

            <div
              className={
                "mb-4 border-b border-dotted border-gray-300 pb-4 ps-4"
              }
            >
              <i className="fa-regular fa-clock-four me-2 text-orange_2 "></i>
              <span className={"font-inter text-gray-500 "}>
                Cooking: {formatMinuteDuration(recipe.cookTime)}
              </span>
            </div>

            <div
              className={
                "mb-4 border-b border-dotted border-gray-300 pb-4 ps-4"
              }
            >
              <i className="fa-regular fa-clock-four me-2 text-orange_2 "></i>
              <span className={"font-inter text-gray-500 "}>
                Preparation: {formatMinuteDuration(recipe.preparationTime)}
              </span>
            </div>

            <div
              className={
                "mb-4 border-b border-dotted border-gray-300 pb-4 ps-4"
              }
            >
              <i className="fa-regular fa-clock-four me-2 text-orange_2 "></i>
              <span className={"font-inter text-gray-500 "}>
                Total:{" "}
                {formatMinuteDuration(recipe.cookTime + recipe.preparationTime)}
              </span>
            </div>
          </div>

          <div className={"border-1 mt-8 w-full rounded-2xl bg-goldgray p-8"}>
            <h2 className={"mb-8 mt-4 ps-4 font-space text-3xl font-bold"}>
              Ratings
            </h2>

            {feedbacks.map((f) => {
              return (
                <div
                  key={f.id}
                  className={
                    "mb-8 border-b border-dotted border-gray-300 pb-8 ps-4"
                  }
                >
                  <span className={"font-inter text-gray-500"}>
                    <div className={"flex items-end justify-between"}>
                      <div className={"font-medium"}>{f.commenter} </div>
                      <div className={"text-sm"}>{formatDate(f.createdAt)}</div>
                    </div>
                    <div className={"mt-1 text-orange_2"}>
                      <RatingStars rating={f.rating} />
                    </div>
                    <div className={"mt-4"}>{f.comment}</div>
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      </div>
    </div>
  );
}

function formatDate(s: string) {
  const date = new Date(s);
  const userLocale = navigator.language;
  return new Intl.DateTimeFormat(userLocale, {
    year: "numeric",
    month: "long",
    day: "numeric",
  }).format(date);
}

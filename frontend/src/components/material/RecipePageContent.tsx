import { DetailedRecipeDto } from "../api-types.ts";
import { NavButtonBar } from "../NavButtonBar.tsx";
import { Button } from "../Button.tsx";
import { Link } from "@tanstack/react-router";
import { RatingStars } from "../RatingStars.tsx";
import { Fragment } from "react";
import { formatMinuteDuration } from "../FormatMinuteDuration.tsx";
import { RecipeRatings } from "./RecipeRatings.tsx";

type RecipePageContentProps = {
  recipe: DetailedRecipeDto;
};

export function RecipePageContent({ recipe }: RecipePageContentProps) {
  return (
    <div className={"mb-20"}>
      <div className={"container mx-auto mt-4"}>
        <NavButtonBar align={"left"}>
          <Button>
            <Link to={"/recipes"}>Back to recipes</Link>
          </Button>
        </NavButtonBar>
      </div>
      <div className="mt-4  bg-goldgray pb-12 pe-8 ps-8 pt-12 ">
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
              className="mt-2 w-full rounded object-cover sm:mt-4 sm:max-h-80"
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

          <RecipeRatings />
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
        </div>
      </div>
    </div>
  );
}

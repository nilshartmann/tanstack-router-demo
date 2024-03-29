import { RecipeDto } from "../api-types.ts";
import { H1 } from "../Heading.tsx";
import { Link } from "@tanstack/react-router";
import { RatingStars } from "../RatingStars.tsx";
import { formatMinuteDuration } from "../FormatMinuteDuration.tsx";
import { recipeRoute } from "../../router-config.tsx";
import { memo } from "react";
import { BookmarkButton } from "./BookmarkButton.tsx";

type RecipeCardProps = {
  recipe: RecipeDto;
};

// Note that this RecipeCard components is marked as re-rendered
// in the devtools, even it is not (https://github.com/facebook/react/issues/19778)
// as a workaround:
//  - use profile to see that it is (not) rerendered
//  - use console.log

const RecipeCard = memo(function RecipeCard({ recipe }: RecipeCardProps) {
  console.log("Render RecipeCard", recipe.id);
  return (
    <div className={"flex flex-col justify-between"}>
      <div>
        <Link to={recipeRoute.to} params={{ recipeId: recipe.id }}>
          <div className={"overflow-hidden"}>
            <img
              className="mb-2 h-48 max-h-full w-full max-w-full transform rounded object-cover transition-all duration-500 ease-in-out hover:scale-110"
              src={`/images/recipes/food_${recipe.id}.png`}
              alt="image1"
            />
            <BookmarkButton recipeId={recipe.id} />
          </div>
        </Link>
        <div className={"mt-8 flex justify-between"}>
          <p
            className={
              "font-space text-sm font-medium uppercase tracking-[2px] text-red"
            }
          >
            {recipe.mealType}
          </p>
        </div>
        <H1 className={"mb-4 mt-4 font-space font-bold"}>
          <Link
            preload={"intent"}
            to={recipeRoute.to}
            params={{ recipeId: recipe.id }}
            className={"hover:text-orange_2 hover:underline"}
          >
            {recipe.title}
          </Link>
        </H1>
        <p className={"text mt-2 font-inter text-gray-500"}>
          {recipe.headline}
        </p>
        <div className={"mt-4 space-x-1 text-orange_2"}>
          <RatingStars rating={recipe.averageRating} />
        </div>
      </div>
      <div className={"mt-4 flex"}>
        <div className={"mt-4 space-y-2"}>
          <p className="me-2 inline-block rounded border border-green bg-white p-2 text-[15px] text-green">
            <i className="fa-regular fa-clock mr-2"></i>
            {formatMinuteDuration(recipe.cookTime + recipe.preparationTime)}
          </p>
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
  );
});

export { RecipeCard };

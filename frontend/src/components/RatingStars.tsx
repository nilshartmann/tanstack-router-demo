type RatingStarsProps = { rating: number };
export function RatingStars({ rating }: RatingStarsProps) {
  // Full stars
  const fullStarsCount = Math.round(rating);

  // Check for a half star
  const halfStar =
    rating - fullStarsCount >= 0.1 && rating - fullStarsCount <= 0.5 ? 1 : 0;

  // Calculate empty stars
  const emptyStarsCount = 5 - fullStarsCount - halfStar;

  // Create stars string
  const stars = [];
  for (let i = 0; i < fullStarsCount; i++) {
    stars.push(<i key={i} className="fa-solid fa-star"></i>);
  }

  if (halfStar === 1) {
    stars.push(
      <i key="halfstar" className="fa-regular fa-star-half-stroke"></i>,
    );
  }

  for (let i = 0; i < emptyStarsCount; i++) {
    stars.push(<i key={stars.length + i} className="fa-regular fa-star"></i>);
  }

  return stars;
}

import { H1 } from "../Heading.tsx";

export default function AboutPageContent() {
  return (
    <>
      <H1>About Recipify</H1>

      <article className={"space-y-8 font-inter text-gray-600"}>
        <p>Welcome to our Cooking Recipe web application!</p>

        <p>
          Got a craving for a mouthwatering dish but don't know how to start?
          We've got your back. We are on a mission to bring the most delicious,
          diverse and approachable cooking recipes to your household's daily
          menu. Whether you're a beginner starting from scratch or an
          experienced chef seeking to learn a new culinary delight, our site has
          something for everyone.
        </p>

        <p>
          We believe cooking is an art, an everyday activity that connects us to
          the colorful array of global cultures. Our platform is a place where
          everyone can come to learn, share, and explore the love of cuisine in
          all its delightful forms.
        </p>

        <p>
          Stay tuned for delicious, out-of-the-ordinary recipes that will add
          spice to your day-to-day meals!
        </p>

        <p>
          Got recipes to share? Join our community and contribute to an
          ever-growing database of appetizing dishes.
        </p>

        <p>We can't wait for you to get cooking!</p>
      </article>
    </>
  );
}

import { useGetAllRecipesQuery } from "./use-queries.ts";

function Landing() {
  const result = useGetAllRecipesQuery();
  return (
    <>
      <div className={"container mx-auto bg-gold"}>
        <div className="grid grid-cols-3 gap-4">
          {result.data.content.map((r) => {
            return (
              <div key={r.id}>
                <h1>{r.title}</h1>
              </div>
            );
          })}
          <img
            className="h-48 w-48 object-cover"
            src="/img_1.png"
            alt="image1"
          />
          <img
            className="h-48 w-48 object-cover"
            src="/img_2.png"
            alt="image2"
          />
          <img
            className="h-48 w-48 object-cover"
            src="/img_3.png"
            alt="image3"
          />
          <img
            className="h-48 w-48 object-cover"
            src="/img_4.png"
            alt="image3"
          />
          <img
            className="h-48 w-48 object-cover"
            src="/img_5.png"
            alt="image3"
          />
        </div>
      </div>
    </>
  );
}

export default Landing;

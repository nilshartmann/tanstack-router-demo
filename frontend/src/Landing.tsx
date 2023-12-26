import { H1 } from "./components/Heading.tsx";
import AppLink from "./components/AppLink.tsx";

export default function LandingPage() {
  return (
    <main
      className={"h-screen w-screen  bg-cover"}
      style={{
        backgroundImage:
          "radial-gradient(rgba(255, 255, 255, 0.6), rgba(255, 255, 255, 0)), url('/images/landing-page.png')",
      }}
    >
      <div className="font-space px-4 pb-16 pt-32 text-center font-bold ">
        <div className="bg-white mx-auto inline-block max-w-4xl p-2 pb-4 text-8xl text-red">
          Recipify
        </div>

        <H1>
          <div
            className={
              "bg-white text-gray-800 mx-auto mt-10 inline-block max-w-4xl p-2 pb-3 text-4xl font-bold"
            }
          >
            Receips for{" "}
            <span className="text-primary relative whitespace-nowrap">
              <span className="relative text-red">hungry devs</span>
            </span>
            .
          </div>
        </H1>
        <div className="bg-white font-barlow mx-auto mt-10 max-w-2xl p-2 pb-3 text-lg font-normal tracking-wide">
          <p>There are a lot of cooking and recipe apps.</p>
          <p>
            But only this one is boiled with modern{" "}
            <span className="relative text-red">frontend and backend</span>{" "}
            ingredients.
          </p>
        </div>
        <div className="mt-10 flex justify-center gap-x-6">
          <AppLink variant="button" href={"/blog"} size={"lg"}>
            Let me in - I'm hungry! 😋
          </AppLink>
        </div>
      </div>
    </main>
  );
}

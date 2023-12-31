import { H1 } from "../components/Heading.tsx";
import { Button } from "../components/Button.tsx";
import { Link } from "@tanstack/react-router";

export default function LandingPage() {
  return (
    <main
      className={"min-w-screen min-h-svh bg-cover"}
      style={{
        backgroundImage:
          "radial-gradient(rgba(255, 255, 255, 0.6), rgba(255, 255, 255, 0)), url('/images/landing-page.png')",
      }}
    >
      <div className="px-4 pt-32 text-center font-space font-bold ">
        <div className="mx-auto inline-block max-w-4xl bg-white p-2 pb-4 text-8xl text-red">
          Recipify
        </div>

        <H1>
          <div
            className={
              "mx-auto mt-10 inline-block max-w-4xl bg-white p-2 pb-3 text-4xl font-bold text-gray-800"
            }
          >
            Receips for{" "}
            <span className="text-primary relative whitespace-nowrap">
              <span className="relative text-red">hungry devs</span>
            </span>
            .
          </div>
        </H1>
        <div className="mx-auto mt-10 max-w-2xl bg-white p-2 pb-3 font-barlow text-lg font-normal tracking-wide">
          <p>There are a lot of cooking and recipe apps.</p>
          <p>
            But only this one is boiled with modern{" "}
            <span className="relative text-red">frontend and backend</span>{" "}
            ingredients.
          </p>
        </div>
        <div className="mt-10 flex justify-center">
          <Button size={"lg"}>
            <Link to={"/recipes"}>Let me in - I'm hungry! 😋</Link>
          </Button>
        </div>
        <div className={"mt-10 flex justify-center space-x-8"}>
          <Button>
            <Link to={"/about"}>About us</Link>
          </Button>
          <Button>
            <Link to={"/privacy"}>Privacy</Link>
          </Button>
        </div>
      </div>
    </main>
  );
}

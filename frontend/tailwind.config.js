import defaultTheme from "tailwindcss/defaultTheme";

const colors = require("tailwindcss/colors");
/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    colors: {
      // tailwind:
      transparent: "transparent",
      current: "currentColor",
      black: colors.black,
      white: colors.white,
      gray: colors.gray,
      // own:
      orange: {
        DEFAULT: "#E29F28",
      },
      red: {
        DEFAULT: "#D54418",
      },
      orange_2: {
        DEFAULT: "#F89223",
      },
    },
    extend: {
      fontFamily: {
        space: ["Space Grotesk", ...defaultTheme.fontFamily.sans],
        inter: ["inter", ...defaultTheme.fontFamily.sans],
        barlow: ["barlow", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [],
};

// Rubik Doodle Shadow

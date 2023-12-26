const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
      colors: {
        magellan: {
          50: "#f5f7fa",
          100: "#eaeef4",
          200: "#d1dae6",
          300: "#a8bbd1",
          400: "#7997b7",
          500: "#587a9f",
          600: "#456184",
          700: "#384e6c",
          800: "#32435a",
          900: "#2d3a4d",
          950: "#252f3f",
        },
        primary: "#252f3f",
        secondary: "#587a9f",
        active: "#384e6c",
        disabled: "#d1dae6",
        text: "#384e6c",
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
  ],
};

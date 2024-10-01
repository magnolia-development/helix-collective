const defaultTheme = require("tailwindcss/defaultTheme");

const brandColors = {
  mint: {
    DEFAULT: "rgb(var(--helix-mint) / <alpha-value>)",
    50: "rgb(var(--helix-mint-50) / <alpha-value>)",
    100: "rgb(var(--helix-mint-100) / <alpha-value>)",
    200: "rgb(var(--helix-mint-200) / <alpha-value>)",
    300: "rgb(var(--helix-mint-300) / <alpha-value>)",
    400: "rgb(var(--helix-mint-400) / <alpha-value>)",
    500: "rgb(var(--helix-mint-500) / <alpha-value>)",
    600: "rgb(var(--helix-mint-600) / <alpha-value>)",
    700: "rgb(var(--helix-mint-700) / <alpha-value>)",
    800: "rgb(var(--helix-mint-800) / <alpha-value>)",
    900: "rgb(var(--helix-mint-900) / <alpha-value>)",
    950: "rgb(var(--helix-mint-950) / <alpha-value>)",
  },
  pistachio: {
    DEFAULT: "rgb(var(--helix-pistachio) / <alpha-value>)",
    50: "rgb(var(--helix-pistachio-50) / <alpha-value>)",
    100: "rgb(var(--helix-pistachio-100) / <alpha-value>)",
    200: "rgb(var(--helix-pistachio-200) / <alpha-value>)",
    300: "rgb(var(--helix-pistachio-300) / <alpha-value>)",
    400: "rgb(var(--helix-pistachio-400) / <alpha-value>)",
    500: "rgb(var(--helix-pistachio-500) / <alpha-value>)",
    600: "rgb(var(--helix-pistachio-600) / <alpha-value>)",
    700: "rgb(var(--helix-pistachio-700) / <alpha-value>)",
    800: "rgb(var(--helix-pistachio-800) / <alpha-value>)",
    900: "rgb(var(--helix-pistachio-900) / <alpha-value>)",
    950: "rgb(var(--helix-pistachio-950) / <alpha-value>)",
  },
  slate: {
    DEFAULT: "rgb(var(--helix-slate) / <alpha-value>)",
    50: "rgb(var(--helix-slate-50) / <alpha-value>)",
    100: "rgb(var(--helix-slate-100) / <alpha-value>)",
    200: "rgb(var(--helix-slate-200) / <alpha-value>)",
    300: "rgb(var(--helix-slate-300) / <alpha-value>)",
    400: "rgb(var(--helix-slate-400) / <alpha-value>)",
    500: "rgb(var(--helix-slate-500) / <alpha-value>)",
    600: "rgb(var(--helix-slate-600) / <alpha-value>)",
    700: "rgb(var(--helix-slate-700) / <alpha-value>)",
    800: "rgb(var(--helix-slate-800) / <alpha-value>)",
    900: "rgb(var(--helix-slate-900) / <alpha-value>)",
    950: "rgb(var(--helix-slate-950) / <alpha-value>)",
  },
  gray: {
    DEFAULT: "rgb(var(--helix-gray) / <alpha-value>)",
    50: "rgb(var(--helix-gray-50) / <alpha-value>)",
    100: "rgb(var(--helix-gray-100) / <alpha-value>)",
    200: "rgb(var(--helix-gray-200) / <alpha-value>)",
    300: "rgb(var(--helix-gray-300) / <alpha-value>)",
    400: "rgb(var(--helix-gray-400) / <alpha-value>)",
    500: "rgb(var(--helix-gray-500) / <alpha-value>)",
    600: "rgb(var(--helix-gray-600) / <alpha-value>)",
    700: "rgb(var(--helix-gray-700) / <alpha-value>)",
    800: "rgb(var(--helix-gray-800) / <alpha-value>)",
    900: "rgb(var(--helix-gray-900) / <alpha-value>)",
    950: "rgb(var(--helix-gray-950) / <alpha-value>)",
  },
  gold: {
    DEFAULT: "rgb(var(--helix-gold) / <alpha-value>)",
    50: "rgb(var(--helix-gold-50) / <alpha-value>)",
    100: "rgb(var(--helix-gold-100) / <alpha-value>)",
    200: "rgb(var(--helix-gold-200) / <alpha-value>)",
    300: "rgb(var(--helix-gold-300) / <alpha-value>)",
    400: "rgb(var(--helix-gold-400) / <alpha-value>)",
    500: "rgb(var(--helix-gold-500) / <alpha-value>)",
    600: "rgb(var(--helix-gold-600) / <alpha-value>)",
    700: "rgb(var(--helix-gold-700) / <alpha-value>)",
    800: "rgb(var(--helix-gold-800) / <alpha-value>)",
    900: "rgb(var(--helix-gold-900) / <alpha-value>)",
    950: "rgb(var(--helix-gold-950) / <alpha-value>)",
  },
};

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,html}",
    "./node_modules/flowbite/**/*.js",
  ],
  theme: {
    colors: {
      primary: brandColors.pistachio,
      secondary: brandColors.gray,
      neutral: brandColors.mint,
    },
    extend: {
      fontFamily: ["Inter var", ...defaultTheme.fontFamily.sans],
      colors: {
        /* Brand colors */
        "helix-mint": brandColors.mint,
        "helix-pistachio": brandColors.pistachio,
        "helix-slate": brandColors.slate,
        "helix-gray": brandColors.gray,
        "helix-gold": brandColors.gold,
      },
    },
  },
  safeList: [
    {
      pattern: /^(bg|border|ring|shadow|text)-helix-(mint|pistachio|slate|gray|gold)/,
      variants: ["hover", "focus"],
    },
    {
      pattern: /^(bg|border|ring|shadow|text)-helix-(mint|pistachio|slate|gray|gold)\/(0|25|50|75|100)/,
      variants: ["hover", "focus"],
    },
    {
      pattern: /^(bg|border|ring|shadow|text)-helix-(mint|pistachio|slate|gray|gold)-(50|100|200|300|400|500|600|700|800|900|950)/,
      variants: ["hover", "focus"],
    },
    {
      pattern: /^bg-helix-(mint|pistachio|slate|gray|gold)-(50|100|200|300|400|500|600|700|800|900|950)\/(0|25|50|75|100)$/,
      variants: ["hover", "focus"],
    },
  ],
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
    require("flowbite/plugin"),
  ],
};


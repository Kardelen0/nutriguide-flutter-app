/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary:"#10B981",   
        secondary: "#FF6B35",  
        textPrimary: "#2C2C2C",
        bg1: "#FFD1C0",        
        bg2: "#FFFFFF",        
        customBorder:"#555555"
      }
    },
  },
  plugins: [],
}
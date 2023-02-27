const colors = require('tailwindcss/colors');
/**
 * @type { import('tailwindcss').Config }
 */
module.exports = {
  content: ['./theme/**/*.ftl'],
  experimental: {
    optimizeUniversalDefaults: true,
  },
  plugins: [require('@tailwindcss/forms')],
  theme: {
    extend: {
      colors: {
        blue: 'hsl(216, 33%, 25%)',
        purple: '#7e5bef',
        pink: '#ff49db',
        orange: '#F46523',
        green: '#13ce66',
        yellow: '#ffc82c',
        'gray-dark': '#273444',
        gray: 'hsl(56, 6%, 94%)',
        'gray-light': '#d3dce6',

        primary: colors.blue,
        secondary: colors.gray,

        provider: {
          bitbucket: '#0052CC',
          facebook: '#1877F2',
          github: '#181717',
          gitlab: '#FC6D26',
          google: '#4285F4',
          instagram: '#E4405F',
          linkedin: '#0A66C2',
          microsoft: '#5E5E5E',
          oidc: '#F78C40',
          openshift: '#EE0000',
          paypal: '#00457C',
          slack: '#4A154B',
          stackoverflow: '#F58025',
          twitter: '#1DA1F2',
        },
      },
      fontFamily: {
        sans: ['Raleway', 'sans-serif'],
      },
    },
  },
};

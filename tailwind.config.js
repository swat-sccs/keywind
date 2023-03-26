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
            blue: '#31425F',
            purple: '#7e5bef',
            pink: '#ff49db',
            orange: '#F46523',
            green: '#13ce66',
            yellow: '#ffc82c',
            'gray-dark': '#273444',
            gray: '#f1f1f1',
            'gray-light': '#d3dce6',

            primary: {
                50: '#31425F',
                100: '#31425F',
                200: '#31425F',
                300: '#31425F',
                400: '#31425F',
                500: '#31425F',
                600: '#31425F',
                700: '#31425F',
                800: '#31425F',
                900: '#31425F',
            },
            secondary: {
                50: '#f1f1f1',
                100: '#f1f1f1',
                200: '#6c757d',
                300: '#6c757d',
                400: '#6c757d',
                500: '#6c757d',
                600: '#212529',
                700: '#212529',
                800: '#212529',
                900: '#212529',
            },

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
    },
    fontFamily: {
        sans: ['Raleway', 'sans-serif'],
    },
    },
};

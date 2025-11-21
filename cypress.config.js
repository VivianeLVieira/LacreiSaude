const { defineConfig } = require('cypress');
const webpackPreprocessor = require('@cypress/webpack-preprocessor');
const { addCucumberPreprocessorPlugin } = require('@badeball/cypress-cucumber-preprocessor');

async function setupNodeEvents(on, config) {
  await addCucumberPreprocessorPlugin(on, config);

  const options = {
    webpackOptions: {
      module: {
        rules: [
          {
            test: /\.feature$/,
            use: [
              {
                loader: '@badeball/cypress-cucumber-preprocessor/webpack',
                options: config,
              },
            ],
          },
        ],
      },
    },

  };

  on('file:preprocessor', webpackPreprocessor(options));

  return config;
}

module.exports = {
  projectId: "<Please create a project in Cypress Cloud>",
  default: defineConfig({
    e2e: {
      specPattern: 'cypress/e2e/**/*.feature',
      supportFile: false,
      // supportFile: "cypress/support/e2e.js",
      setupNodeEvents,
    },
  }),
  setupNodeEvents,
};


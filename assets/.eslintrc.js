module.exports = {
  extends: ['eslint-config-airbnb-base'],
  rules: {
    'class-methods-use-this': 0,
    'no-param-reassign': 0,
    'no-shadow': ['error', { allow: ['done', 'resolve', 'reject', 'cb'] }],
    'prettier/prettier': ['error', { singleQuote: true }]
  },

  env: {
    browser: true
  },

  parser: 'babel-eslint',

  settings: {
    'import/resolver': {
      webpack: {
        config: {
          resolve: {
            modules: ['js', 'node_modules']
          }
        }
      }
    }
  }
};

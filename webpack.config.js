const path = require('path');

module.exports = {
  mode: 'development',
  entry: {
    home: './assets/js/page/home.js',
    "create-article": './assets/js/page/create-article.js',
  },
  output: {
    path: path.resolve(__dirname, 'static', 'js'),
    filename: '[name].js',
  },
  module: {
    rules: [{
      exclude: /node_modules/,
      test: /\.js$/,
      use: {
        loader: 'babel-loader',
        options: {
          presets: ['@babel/env'],
        },
      },
    }, {
      test: /\.css$/,
      use: ['style-loader', 'css-loader'],
    }, {
      test: /\.ts$/,
      use: ['ts-loader'],
    }],
  },
  // devServer: {
  //   static: {
  //     directory: path.join(__dirname, 'public'),
  //   },
  //   compress: true,
  //   port: 8000,
  // },
  devtool: 'source-map',
};

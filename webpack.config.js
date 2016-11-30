module.exports = {
  entry: ["./app/assets/javascripts/react/app.jsx"],
  output: {
    path: "./app/assets/javascripts/",
    filename: "react_transpiled.js"
  },
  module: {
    loaders: [
      { test: /\.jsx$/, exclude: /node_modules/, loader: "babel-loader" }
    ]
  },
  resolve: {
    extensions: ['', '.js', '.jsx']
  }
};

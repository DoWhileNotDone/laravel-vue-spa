module.exports = async () => {
  return {
    rootDir: ".",
    verbose: true,
    "moduleFileExtensions": ["js", "json", "vue"],
    "transform": {
      "^.+\\.js$": "babel-jest",
      "^.+\\.vue$": "vue-jest",
    },
    transformIgnorePatterns: ['/node_modules/'],
    collectCoverage: true,
    coverageReporters: ["clover"],
    coverageDirectory: "<rootDir>/coverage/js",    
  }
};
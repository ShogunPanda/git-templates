{
  "name": "{{name}}",
  "version": "0.0.1",
  "description": "{{description}}",
  "main": "main.js",
  "files": [
    "main.js",
    "lib",
    "README.md",
    "CHANGELOG.md"
  ],
  "scripts": {
    "postpublish": "git push origin --tags && git push origin",
    "test": "./node_modules/.bin/mocha",
    "posttest": "./node_modules/.bin/eslint main.js lib/*.js test/*.js",
    "coverage": "./node_modules/.bin/istanbul --report=html cover ./node_modules/.bin/_mocha",
    "travis-ci": "./node_modules/.bin/istanbul --report=lcovonly cover ./node_modules/.bin/_mocha && cat ./coverage/lcov.info | ./node_modules/coveralls/bin/coveralls.js",
    "docs": "./node_modules/.bin/jsdoc -c .jsdoc.json -t ./node_modules/ink-docstrap/template -R README.md -r"
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/{{githubUser}}/{{name}}"
  },
  "keywords": [],
  "author": "{{author}} <{{authorEmail}}>",
  "license": "MIT",
  "bugs": {
    "url": "https://github.com/{{githubUser}}/{{name}}/issues"
  },
  "homepage": "{{url}}",
  "dependencies": {},
  "devDependencies": {
    "chai": "~3.5.0",
    "coveralls": "~2.11.8",
    "eslint": "~2.4.0",
    "ink-docstrap": "~1.1.4",
    "istanbul": "~0.4.2",
    "jsdoc": "~3.4.0",
    "mocha": "~2.4.5",
    "sinon": "~1.17.3"
  }
}

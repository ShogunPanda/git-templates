#
# This file is part of the {{module}} npm package. Copyright (C) {{year}} and above {{author}} <{{authorEmail}}>.
# Licensed under the MIT license, which can be found at http://www.opensource.org/licenses/mit-license.php.
#

language: node_js
script: npm run-script travis-ci
node_js:
  - "5.0"
  - "5.5"
  - "5"
notifications:
  email: false
# relative-package [![Build Status](https://secure.travis-ci.org/nopnop/relative-package.png?branch=master)](http://travis-ci.org/nopnop/relative-package) [![NPM version](https://badge-me.herokuapp.com/api/npm/relative-package.png)](http://badges.enytc.com/for/npm/relative-package)


> Find the package.json (or another) relative to a given path


## Getting Started

Install the module with: `npm install relative-package`

## Usage

### Find package.json:

```javascript
var relativePackage = require('relative-package');

console.log('package.json relative to where relativePackage() is called:\n  %s',
  relativePackage())

console.log('package.json relative a given path:\n  %s',
  relativePackage('./test/relative-package.test.js'))

console.log('package.json relative to a given absolute path:\n  %s',
  relativePackage(__dirname + '/readme.md'))

console.log('package.json relative to a given package:\n  %s',
  relativePackage('mocha'))

console.log('package.json relative to a given package:\n  %s',
  relativePackage('mocha'))
```

### Find any other file:

```javascript
var relativePackage = require('relative-package');

console.log('.gitignore relative to where relativePackage() is called:\n  %s',
  relativePackage(null, '.gitignore'))

console.log('Readme.md of a given package:\n  %s',
  relativePackage('mocha', 'Readme.md'))
```


(see [demo.js](./demo.js))

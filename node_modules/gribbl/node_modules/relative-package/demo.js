var relativePackage = require('./index.js');


console.log('Find package.json:')
console.log('-----------------------------------------------------------')

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


console.log('\n')
console.log('Find any other file:')
console.log('-----------------------------------------------------------')

console.log('.gitignore relative to where relativePackage() is called:\n  %s',
  relativePackage(null, '.gitignore'))

console.log('Readme.md of a given package:\n  %s',
  relativePackage('mocha', 'Readme.md'))

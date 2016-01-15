var expect          = require('expect.js')
var resolve         = require('path').resolve
var relativePackage = require('../')

describe('relative-package', function() {

  describe('relativePackage([from]) should return absolute path to package.js', function() {

    it('from the module where relativePackage() is used', function() {
      expect(relativePackage())
        .to.eql(resolve(__dirname, '../package.json'))
    })

    it('from a relative path to the module where relativePackage() is used', function() {
      expect(relativePackage('../readme.md'))
        .to.eql(resolve(__dirname, '../package.json'))
    })

    it('from any absolute path to a module', function() {
      expect(relativePackage(__filename))
        .to.eql(resolve(__dirname, '../package.json'))
    })

    it('from a package', function() {
      expect(relativePackage('mocha'))
        .to.eql(resolve(__dirname, '../node_modules/mocha/package.json'))
    })

    it('from a path relative to a package', function() {
      expect(relativePackage('mocha/lib/mocha.js'))
        .to.eql(resolve(__dirname, '../node_modules/mocha/package.json'))
    })

  })

  describe('relativePackage([from], filename) should return absolute path to a given filename', function() {

    it('from the module where relativePackage() is used', function() {
      expect(relativePackage(null, '.editorconfig'))
        .to.eql(resolve(__dirname, '../.editorconfig'))
    })

    it('from a relative path to the module where relativePackage() is used', function() {
      expect(relativePackage('../readme.md', '.editorconfig'))
        .to.eql(resolve(__dirname, '../.editorconfig'))
    })

    it('from any absolute path to a module', function() {
      expect(relativePackage(__filename, '.editorconfig'))
        .to.eql(resolve(__dirname, '../.editorconfig'))
    })

    it('from a package', function() {
      // Find `mocha`'s `Readme.md`
      expect(relativePackage('mocha', 'Readme.md'))
        .to.eql(resolve(__dirname, '../node_modules/mocha/Readme.md'))
    })

    it('from a path relative to a package', function() {
      // Find `mocha`'s `Readme.md` from one of its files
      expect(relativePackage('mocha/lib/mocha.js', 'Readme.md'))
        .to.eql(resolve(__dirname, '../node_modules/mocha/Readme.md'))
    })

  })

  describe('should return null', function() {

    it('from an invalid relative path', function() {
      expect(relativePackage('../invalid')).to.be(null)
    })

    it('from an invalid absolute path', function() {
      expect(relativePackage('/invalid')).to.be(null)
    })

    it('from an invalid package', function() {
      expect(relativePackage('invalid')).to.be(null)
    })

    it('from an invalid path relative to a package', function() {
      expect(relativePackage('mocha/invalid')).to.be(null)
    })

    it('if the searched file is not found', function() {
      expect(relativePackage(null, '__do_not_find_me_')).to.be(null)
    })

  })

})

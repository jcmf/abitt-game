var resolve  = require('resolve')
var dirname  = require('path').dirname
var join     = require('path').join
var callsite = require('callsite')
var exists   = require('fs').existsSync

module.exports = function(relativeTo, filename) {
  var path, caller, searchIn;
  filename   = filename || 'package.json';

  // Resolve caller module
  caller     = getCaller()

  // Search relatively to caller module
  relativeTo = relativeTo || caller;

  // Resolve relativeTo to an absolute path
  try {
    relativeTo = resolve.sync(relativeTo, {basedir:dirname(caller)})
  } catch(e) { return null }

  // Search into each relativeTo's parent directory
  searchIn = dirname(relativeTo)

  while(dirname(searchIn) != searchIn) {
    path = join(searchIn, filename)

    // Found, return path
    if(exists(path)) return path;

    // Not found, go up
    searchIn = dirname(searchIn);
  }

  return null;
}

// Adaptation from https://github.com/ForbesLindesay/rfile
function getCaller() {
  var stack = callsite()
  for (var i = 0; i < stack.length; i++) {
    var filename = stack[i].getFileName();
    if (filename !== __filename) return filename
  }
  throw new Error('Can not find caller filename')
}

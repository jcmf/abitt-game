Now the CLI.  First we need to parse command-line options.

    opts = require 'commander'
    opts
    .usage '[OPTION...] FILE.(jade|html)...'
    .option '-d | --debug', 'include source maps'
    .option '-o | --output <DIR>', 'set .html output directory'
    .option '-p | --pretty', 'prefer to generate more whitespace'
    .parse process.argv
    if not opts.args.length then opts.help()

Now do the stuff.  Setting `nonull` lets us raise an error if one
of the arguments is the name of a file that doesn't exist.

    gulp = require 'gulp'
    gribbl = require './api'
    gulp.src opts.args, nonull: yes
    .pipe gribbl opts
    .pipe gulp.dest opts.output or '.'

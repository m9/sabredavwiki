#!/usr/bin/env coffee

wikiwym = require 'wikiwym'
fs = require 'fs'
cli = require 'cli'

cli.enable('glob', 'status')

options = cli.parse()
files = cli.args;

if files.length
  files.splice(0,1)
  
  content = fs.readFileSync(files[0],'utf8')
  cli.output(wikiwym.parse(content))
else
  cli.withStdin (content) ->
    cli.output(wikiwym.parse(content))  

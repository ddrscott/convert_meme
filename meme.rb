#!/usr/bin/env ruby

require 'optparse'
require 'shellwords'

LOCATIONS = %i(north south center)

def parse_options
  options = {}
  options[:captions] = {}
  captions = options[:captions]
  OptionParser.new do |opts|
    opts.banner = 'Usage: meme.rb --src file --dest file [--north text]  [--south text]'

    # build location options
    LOCATIONS.each do |loc|
      opts.on("--#{loc} CAPTION", "set #{loc} caption") { |text| captions[loc] = text }
    end

    opts.on('--src SOURCE_IMG', 'source file') { |val| options[:src] = val }
    opts.on('--dest DESTINATION_IMG', 'destination file') { |val| options[:dest] = val }

  end.parse!

  options
end

def pretty_join(cmd)
  cmd.map{|c| "  #{c.ljust(30)} \\" } * "\n"
end

options = parse_options

font = '/Library/Fonts/Impact.ttf'
width = `identify -format %w #{options[:src]}`.to_i
caption_height = width/8
strokewidth = width/500

cmd = %w(convert)
cmd << options[:src]
cmd << '-background none'
cmd << "-font #{font}"
cmd << '-fill white'
cmd << '-stroke black'
cmd << "-strokewidth #{strokewidth}"
cmd << "-size #{width}x#{caption_height}"

options[:captions].each do |location, text|
  cmd << "-gravity #{location} caption:#{Shellwords.escape(text)} -composite"
end
cmd << options[:dest]

if options[:verbose]
  $stderr.puts "+#{pretty_join(cmd)}"
end

# run it
puts `#{cmd * ' '}`

puts `identify #{options[:dest]}`

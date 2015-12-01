#!/usr/bin/env ruby
#
# Example Usage: 
#   ./typemap_gen.rb /Library/Fonts/*.ttf > .magic/type.xml

puts '<typemap>'
ARGV.each{|e|
  base=File.basename(e)
  if base =~ /^[[:ascii:]]+$/
    f,n=base.split('.')
    puts %Q{<type format="#{f}" name="#{n}" glyphs="#{e}" />}
  end
}
puts '</typemap>'

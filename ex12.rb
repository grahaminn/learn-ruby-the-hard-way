require 'open-uri'

open("https://www.ruby-lang.org/en") do |f|
  f.each_line {|line| p line}
  puts f.base_uri # <URI::HTTP:0x40e6ef2 URL://www.ruby-lang.org/en/>
  puts f.content_type # "text/html"
  puts f.charset # "iso-8859-1"
  puts f.content_encoding  # []
  puts f.last_modified # Thu Dev 05 02:45:02 UTC 2002
end

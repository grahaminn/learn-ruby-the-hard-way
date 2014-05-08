from_file, to_file = ARGV
script = $0

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how ?
indata = File.open(from_file, 'r') { |file| file.read() }

output = File.open(to_file, 'w') { |file| file.write(indata) }

puts "Alright, all done."


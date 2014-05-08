filename = ARGV.first

filehandle = File.open(filename, 'r')
puts filehandle.read()
filehandle.close()

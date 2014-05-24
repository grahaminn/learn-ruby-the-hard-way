# create a mapping of county to abbreviation

counties = {
  'Northamptonshire' => 'Northants',
  'Cambridgeshire' => 'Cambs',
  'Buckinghamshire' => 'Bucks',
  'Leicestershire' => 'Leics'
}

# create a basic set of counties and their county towns

cities = {
  'Northants' => 'Northampton',
  'Cambs' => 'Cambridge',
  'Bucks' => 'Aylesbury'
}

# add some more cities
cities['Leics'] = 'Leicester'

# puts out a city
puts '-' * 10
puts "Leics county has: ", cities['Leics']

# puts some counties
puts '-' * 10
puts "Northamptonshire's abbreviation is: ", counties['Northamptonshire']
puts "Cambridgeshire's abbreviation is: ", counties['Cambridgeshire']

# do it by using the county then cities dict
puts '-' * 10
puts "Leics county has: ", cities[counties['Leicestershire']]

# puts every county abbreviation
puts '-' * 10
for county, abbrev in counties
  puts "%s is abbreivated %s" % [county, abbrev]
end

# puts every city in county
puts '-' * 10
for abbrev, city in cities
  puts "%s has the city %s" % [abbrev, city]
end

# now do both at the same time
puts '-' * 10
for county, abbrev in counties
    puts "%s county is abbreviated %s and has city %s" % [county, abbrev, cities[abbrev]]
end

puts '-' * 10
# if it's not there you get nil
county = counties['Glamorgan']

if not county
  puts "Sorry, no Glamorgan"
end

# get a city with a default value
city = cities['Glam'] || 'Does Not Exist'
puts "The city for the county 'Glam' is: %s" % city

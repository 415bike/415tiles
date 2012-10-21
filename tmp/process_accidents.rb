require 'rubygems'
require 'csv'
require 'geocoder'

infile = "accidents.csv"
outfile = File.open("accidents_geo.csv", "w")

outfile.write "FullAddress,Fatal,Injured,LightingCondition,RoadSurface,latitude,longitude\n"

CSV.foreach(infile) do |row|
  geo = Geocoder.search(row.first)
  next if geo.empty?
  out = "#{row[1]},#{row[2]},#{row[3]},#{row[4]},#{geo.first.latitude},#{geo.first.longitude}\n"
  puts out
  outfile.write out
  sleep 1
end

outfile.close
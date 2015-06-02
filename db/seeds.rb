# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

compost_site_data = JSON.parse(Net::HTTP.get(URI.parse('https://data.cityofnewyork.us/resource/rmmq-46n5.json')))

compost_site_data.each do |cs|
  CompostSite.create(
    name: cs['location'],
    address: cs['location_1']['human_address'].gsub('"','').gsub('{address:', '').gsub('city:', ' ').gsub('state:', ' ').gsub('zip:', ' ').gsub('&nbsp;&nbsp;&nbsp;}', ''),
    latitude: cs['location_1']['latitude'].to_f,
    longitude: cs['location_1']['longitude'].to_f,
    days: cs['days'],
    hours: cs['hours'],
    organizer: cs['organizer'],
    composted_by: cs['composted_by'],
    url: cs['website']['url']
  )
end

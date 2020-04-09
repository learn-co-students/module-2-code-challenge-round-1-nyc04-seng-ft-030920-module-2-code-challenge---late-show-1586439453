Guest.destroy_all
Appearance.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.first(100).each do |row|
  g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
  g.occupation = row['GoogleKnowlege_Occupation']
  g.save
end

date = Date.parse('2015-09-08')

(1..40).each do |num|
  Episode.create(date: date, number: num)
  date = date.next
end

michael = Guest.find_by(name: "Michael J. Fox")
jane = Guest.find_by(name: "Jane Seymour")
rebecca = Guest.find_by(name: "Rebecca Gayheart")

Appearance.create(guest_id: michael.id, episode_id: 12, rating: 4)
#invalid
# app = Appearance.create(guest_id: michael.id, episode_id: 12, rating: 1)

Appearance.create(guest_id: michael.id, episode_id: 30, rating: 5)
Appearance.create(guest_id: michael.id, episode_id: 1, rating: 1)
Appearance.create(guest_id: jane.id, episode_id: 9, rating: 3)
Appearance.create(guest_id: rebecca.id, episode_id: 20, rating: 1)

# episode = Episode.find_by(number: 12)
# app = Appearance.find_by(guest_id: 274, episode_id: 12)
# app.rating
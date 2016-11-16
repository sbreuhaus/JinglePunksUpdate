require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', '1000 cues with tags.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  s = Song.new
  s.name = row['song']
  tag_row = row['tags']
  new_tags = tag_row.split(/\s*,\s*/)

  new_tags.each do |tag|
    t = Tag.new
    t.name = tag
    s.tags << t
    t.save!
  end
  s.save!

end

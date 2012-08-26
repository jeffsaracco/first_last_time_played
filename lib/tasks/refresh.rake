
require 'rubygems'
require 'open-uri'

task :refresh => :environment do
  doc = Nokogiri::HTML(open("http://www.ihoz.com/firstlast.html"))
  table = doc.css("table")
  songs = (4..(table.children.count - 1)).map { |index| table.children[index].children.children.map(&:text) }

  if songs
    Song.destroy_all

    songs.each do |song|
      puts "creating #{song[0]}"
      Song.create!(
        name: song[0],
        first_time_date: Date.strptime(song[1], "%m/%d/%y"),
        first_time_show: song[2],
        last_seen_date: Date.strptime(song[3], "%m/%d/%y"),
        last_seen_show: song[4],
        current_gap: song[5].gsub(" shows", "")
      )
    end
  end

end

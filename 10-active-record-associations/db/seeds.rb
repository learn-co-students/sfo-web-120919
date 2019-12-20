10.times do 
	Character.create(name: Faker::TvShows::Friends.character)
end

10.times do 
	Episode.create(name: Faker::TvShows::Friends.quote)
end

20.times do 
	Appearance.create(character: Character.all.sample, episode: Episode.all.sample)
end

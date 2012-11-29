# ninja1 = Ninja.create(:name => "Zahra")
# ninja2 = Ninja.create(:name => "Aaron")
# ninja3 = Ninja.create(:name => "Chyld")
# ninja4 = Ninja.create(:name => "Dustin")
# ninja5 = Ninja.create(:name => "Ray")
# ninja6 = Ninja.create(:name => "Jon")

# ninjas = [ninja1, ninja2, ninja3, ninja4, ninja5, ninja6]

# 25.times do |ninja|
# 	ninjas.sample(ninja)
# end


('A'..'Z').each do |letter|
	n = Ninja.create(:name => letter)
end
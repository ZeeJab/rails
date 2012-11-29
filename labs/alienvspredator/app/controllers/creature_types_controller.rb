class CreatureTypesController < ApplicationController
	def index
		@creature_types = CreatureType.page(params[:page]) #instaed of .all you do .page(params[:page])becasue you're using the kaminari
	end

	def create
		name = params[:name]
		@ct = CreatureType.create(:name => name)
		#beacause this is a javascript requesnt instea od creat.html.erb
		# it'll look for a create.js.rb
	end

	def show
		id = params[:id]
		@creaturetype = CreatureType.find(id) #the url that came in the url
	end

	def search #this is an ajax request 
		name = params[:name]
		@creature_types = CreatureType.where(:name => name)
	end
end


# [5] pry(main)> CreatureType.where(:name => 'Allen')ame => 'Allen')
#   CreatureType Load (2.2ms)  SELECT "creature_types".* FROM "creature_types" WHERE "creature_types"."name" = 'Allen'
# => [#<CreatureType id: 13, name: "Allen", created_at: "2012-11-26 16:15:58", updated_at: "2012-11-26 16:15:58">]
# [8] pry(main)> CreatureType
# => CreatureType(id: integer, name: string, created_at: datetime, updated_at: datetime)
# [9] pry(main)> Creature.where(:weapon => "mace").where(:name => "C")
#   Creature Load (0.8ms)  SELECT "creatures".* FROM "creatures" WHERE "creatures"."weapon" = 'mace' AND "creatures"."name" = 'C'
# => [#<Creature id: 705, name: "C", weapon: "mace", password_digest: "$2a$10$iY/irFUY.R.W2o.zOt.1ie/hRXVd6SYs3Qf3gZHwOO5X...", creature_type_id: 16, created_at: "2012-11-26 16:15:59", updated_at: "2012-11-26 16:15:59">]
# [10] pry(main)> Creature.where(:weapon => "mace").map(&:name)
#   Creature Load (0.7ms)  SELECT "creatures".* FROM "creatures" WHERE "creatures"."weapon" = 'mace'
# => ["C", "D", "J", "S", "U", "X", "Y"]
# [11] pry(main)> Creature.where(:weapon => "mace").map(&:name)

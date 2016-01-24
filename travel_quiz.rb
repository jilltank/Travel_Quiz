@distance = {"close" => ["atlanta treehouse", "hike inn", "monastery of the holy spirit", "skyridge yurts"], "away" => ["sapelo island", "sea island resort", "bohemian hotel", "leconte lodge"]}
@theme = {"adventure" => ["leconte lodge", "hike inn", "bohemian hotel", "skyridge yurts"], "relax"=> ["monastery of the holy spirit", "atlanta treehouse", "sea island resort", "sapelo island"]}
@cost = {"affordable" => ["skyridge yurts", "sapelo island", "monastery of the holy spirit", "leconte lodge"], "luxury" => ["atlanta treehouse", "hike inn", "sea island resort", "bohemian hotel"]}
@master_list = @distance["close"] + @distance["away"]
@details = {'atlanta treehouse' => ['The Atlanta Treehouse! It\'s everyone\'s favorite AirBnb luxury spot, set on a private lot in the middle of Metro Atlanta. Fulfill your childhood dreams of living in a treehouse as you travel across the bridge to the two-person paradise.'], "hike inn" => ["The Hike Inn! The adventure starts in getting there; it's a six-mile hike, one way. Once there, you'll enjoy the company of the other hikers during your family-style breakfasts and dinners, but you'll be able to sleep in your own bunk room. Beware: part of this eco-friendly lodge's appeal is Hike Inn's policy of 'no cell phones.'"], 'monastery of the holy spirit' => ["The Monastery of the Holy Spirit! This Conyers, Georgia haven is a place of peace and solitude--you can come for a day or stay for a week, with the option of taking a vow of silnce while you're there."], "skyridge yurts" => ["SkyRidge Yurts! This Bryson City, North Carolina spot is a family-favorite. Just 3 hours from Atlanta, these yurts at perched at the top of a beautiful ridge and come fully equipped with central heating and air, bedrooms, bathrooms, kitchens/kitchenettes, their own grills and decks, a fire pit, and a good time. Venture down the hill to the Nantahala Outdoor Center for all kinds of outdoor adventures."], 'sapelo island' => ["Sapelo Island! Unless you know one of the locals, the only way to access this state-protected island is to book ferry tickets and lodge or camp at Reynolds Mansion. Once there, you can check out the sea turtle reserve at the marine institute, or visit Hog Haven and talk to the Gullah-Geechee residents."], "sea island resort" => ["Sea Island Resort, a 5-Star resort on Sea Island, Georgia. If you get bored on the beach, you can also enjoy horseback riding, boating, golf, the spa, and many other amenities."], "bohemian hotel" => ["The Bohemian Hotel on the Savannah Riverfront. Savannah is a city with plenty of history and culture, and if you get bored with that, you can walk the shops of the Riverfront, take a boat cruise down the river, or head out to the coast to visit the beach or take a dolphin tour."], 'leconte lodge' => ["LeConte Lodge, at the summit of Mt LeConte, and the highest guest lodge in the eastern United States. Even though it's a tough climb to the top, be sure to book early, as tickets sell a year in advance. Once there, you can sleep in either a cabin or a lodge room and enjoy the hot-cooked meals and a great sense of accomplishment."]}


def q1
	puts "Do you want to go somewhere CLOSE to home or further AWAY from the daily grind?"
	ans = gets.chomp.downcase
	if ans == 'close' || ans == 'away'
		@distance = @distance[ans]
	else
		puts 'Invalid response. Please try again.'
		puts ' '
		q1
	end
end

def q2
	puts "Do you want to go somewhere with lots of ADVENTURE or where you can just RELAX?"
	ans = gets.chomp.downcase
	if ans == 'adventure' || ans == 'relax'
		@theme = @theme[ans]
	else
		puts 'Invalid response. Please try again.'
		puts ' '
		q2
	end
end

def q3
	puts "Do you want to go somewhere AFFORDABLE or have a more LUXURY experience?"
	ans = gets.chomp.downcase
	if ans == 'affordable' || ans == 'luxury'
		@cost = @cost[ans]
	else
		puts 'Invalid response. Please try again.'
		puts ' '
		q3
	end
end

def tabulate_results
	@master_list.each do |option|
		if @distance.include?(option) && @theme.include?(option) && @cost.include?(option)
			puts "The results are in, you should check out:"
			puts @details[option]
		end
	end
end

def main
	puts "This program recommends some excellent getaways, none of them more than a day's drive from Atlanta." 
	puts "It ask you questions about your preferences and tabulate results based on your answers."
	puts "Let's begin."
	puts "---------------------------------------------------------------"
	q1
	q2
	q3
	tabulate_results
end

main
Trip.delete_all
$TRIPS = {}
$USERS = {}

Trip.delete_all
Hotel.delete_all
Extra.delete_all

$TRIPS[:mayflower] = Trip.create!(
    :name => "Mayflower Luxury Cruise",
    :tag_line => "Enjoy The Cruise That Started It All",
    :start_date => "September 6, 1620", 
    :end_date => "November 21, 1620", 
    :location => "Atlantic Ocean",
    :activity => "Cruising",
    :image_name => "mayflower.jpg",
    :description => "You'll take a scenic 66 day, 67 night cruise from England to Cape Cod. Come for the scurvy, stay for the starvation",
    :price => 1204)
    
Hotel.create!(
  :trip => $TRIPS[:mayflower],
  :name => "Deluxe Suite",
  :description => "A luxury suite. On the Mayflower. Really.",
  :price => 500
)

Hotel.create!(
  :trip => $TRIPS[:mayflower],
  :name => "Standard Room",
  :description => "Just a room with a tiny view.",
  :price => 300
)

Hotel.create!(
  :trip => $TRIPS[:mayflower],
  :name => "Cargo",
  :description => "Just you and the rats.",
  :price => 100
)

Extra.create!(
  :trip => $TRIPS[:mayflower],
  :name => "Martha's Vineyard",
  :description => "Tour Martha's Vineyard",
  :price => 400
)

Extra.create!(
  :trip => $TRIPS[:mayflower],
  :name => "Special Boat Tour",
  :description => "Tour The Whole Boat",
  :price => 300
)

Extra.create!(
  :trip => $TRIPS[:mayflower],
  :name => "Double Rations",
  :description => "Risk the ire of other passengers with extra food",
  :price => 200
)

Extra.create!(
  :trip => $TRIPS[:mayflower],
  :name => "See The Compact",
  :description => "Box seat for signing of the Mayflower Compact",
  :price => 300
)

$TRIPS[:shakespeare] = Trip.create!(
    :name => "See Shakespeare's Plays",
    :tag_line => "See The Master As Intended",
    :start_date => "November 1, 1604", 
    :end_date => "October 31, 1605",
    :location => "England",
    :activity => "Theater",
    :image_name => "shakespeare.jpg",
    :description => "See the world's greatest playwright on his home turf. Tour 17th Century London.",
    :price => 1313)
    
# TripOption.create!(
#   :trip => shakespeare,
#   :group => :hotel,
#   :name => "Luxury",
#   :description => "The finest suite that 1604 has to offer.",
#   :price => 350
# )

# TripOption.create!(
#   :trip => shakespeare,
#   :group => :hotel,
#   :name => "Normal",
#   :description => "Live like a playwright.",
#   :price => 200
# )

# TripOption.create!(
#   :trip => shakespeare,
#   :group => :hotel,
#   :name => "Groundling",
#   :description => "Live like a peseant",
#   :price => 100
# )

# TripOption.create!(
#   :trip => shakespeare,
#   :group => :extra,
#   :name => "Tickets to Hamlet",
#   :description => "To see, or not to see",
#   :price => 145
# )

# TripOption.create!(
#   :trip => shakespeare,
#   :group => :extra,
#   :name => "Tickets to Romeo and Juliet",
#   :description => "Wherefore art the theatre?",
#   :price => 145
# )

# TripOption.create!(
#   :trip => shakespeare,
#   :group => :tour,
#   :name => "Globe Theater Tour",
#   :description => "Behind the scenes of all the scenes",
#   :price => 100
# )

# TripOption.create!(
#   :trip => shakespeare,
#   :group => :tour,
#   :name => "Buckingham Palace Tour",
#   :description => "Beat the tourist rush and see the castle",
#   :price => 156
# )
    
mars = Trip.create!(
    :name => "Mission To Mars", 
    :tag_line => "Take One Huge Step For Man",
    :start_date => "July 16, 2047", 
    :end_date => "July 24, 2049",
    :location => "Outer Space",
    :activity => "Space Travel",
    :description => "Tag along on the first manned mission to the Red Planet.",
    :image_name => "mars.jpg",
    :price => 2093)
    
# TripOption.create!(
#   :trip => mars,
#   :group => :hotel,
#   :name => "Captain's Quarters",
#   :description => "Bunk with the Captain of the First mission to Mars",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => mars,
#   :group => :hotel,
#   :name => "Officers' Quarters",
#   :description => "Bunk with the officers of the First mission to Mars",
#   :price => 750
# )

# TripOption.create!(
#   :trip => mars,
#   :group => :hotel,
#   :name => "Crews' Quarters",
#   :description => "Bunk with the crew of the first mission to Mars",
#   :price => 500
# )

# TripOption.create!(
#   :trip => mars,
#   :group => :hotel,
#   :name => "Cargo",
#   :description => "Bunk with the cargo of the first mission to Mars",
#   :price => 250
# )

# TripOption.create!(
#   :trip => mars,
#   :group => :extra,
#   :name => "Martian Life Form",
#   :description => "Come home with your very own Martian",
#   :price => 1500
# )

# TripOption.create!(
#   :trip => mars,
#   :group => :extra,
#   :name => "Golf",
#   :description => "Play Golf at a fraction of Earth gravity",
#   :price => 1200
# )

# TripOption.create!(
#   :trip => mars,
#   :group => :tour,
#   :name => "Phobos",
#   :description => "Tour one of Mars' tiny moons",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => mars,
#   :group => :tour,
#   :name => "Olympus Mons",
#   :description => "For the serious mountain man",
#   :price => 750
# )

cubbies = Trip.create!(:name => "The Cubs Win The World Series",
    :tag_line => "Experience The Ultimate Rarity",
    :start_date => "October 10, 1908", 
    :end_date => "October 14, 1908",
    :location => "USA",
    :activity => "Baseball", 
    :image_name => "cubbies.jpg",
    :description => "Watch the 1908 Cubs win the World Series and start a 103 year drought. Game tickets included.",
    :price => 10343)
    
# TripOption.create!(
#   :trip => cubbies,
#   :group => :hotel,
#   :name => "A Suite of your own",
#   :description => "A top end suite in downtown Chicago",
#   :price => 400
# )

# TripOption.create!(
#   :trip => cubbies,
#   :group => :hotel,
#   :name => "A room of your own",
#   :description => "A room somewhere in Chicago",
#   :price => 200
# )

# TripOption.create!(
#   :trip => cubbies,
#   :group => :hotel,
#   :name => "A bench of your own",
#   :description => "Sleep in the Cubs' dugout",
#   :price => 100
# )

# TripOption.create!(
#   :trip => cubbies,
#   :group => :extra,
#   :name => "Throw out the first pitch",
#   :description => "Throw out the ceremonial first pitch at a game. Limited availablity.",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => cubbies,
#   :group => :extra,
#   :name => "Catch a home run",
#   :description => "We'll sit you in the precise seat needed to catch a home run coming your way. But the reflexes need to be yours.",
#   :price => 500
# )
    
# TripOption.create!(
#   :trip => cubbies,
#   :group => :tour,
#   :name => "Ballpark tour",
#   :description => "Take a behind the scenes tour of the ballpark",
#   :price => 100
# )    

# TripOption.create!(
#   :trip => cubbies,
#   :group => :tour,
#   :name => "Chicago Architectural tour",
#   :description => "See the future sites of all of Chicago's cool buildings",
#   :price => 150
# )
    
lewis = Trip.create!(:name => "Hike With Lewis And Clark",
    :tag_line => "Enjoy the Great Outdoors",
    :start_date => "May 14, 1804", 
    :end_date => "September 23, 1806", 
    :location => "USA",
    :activity => "Hiking",
    :image_name => "lewis.jpg",
    :description => "Get back to nature with the original walking tour of the American west.",
    :price => 10343)
    
# TripOption.create!(
#   :trip => lewis,
#   :group => :hotel,
#   :name => "Deluxe Tent",
#   :description => "The finest tent sleeping option 1806 can buy.",
#   :price => 175
# )

# TripOption.create!(
#   :trip => lewis,
#   :group => :hotel,
#   :name => "Average tent",
#   :description => "Just a tent, you know.",
#   :price => 100
# )

# TripOption.create!(
#   :trip => lewis,
#   :group => :hotel,
#   :name => "Sleep under the stars",
#   :description => "Commune with nature all-day, every-day",
#   :price => 50
# )

# TripOption.create!(
#   :trip => lewis,
#   :group => :extra,
#   :name => "Bug repellent",
#   :description => "Surprisingly useful across the prairie",
#   :price => 100
# )

# TripOption.create!(
#   :trip => lewis,
#   :group => :extra,
#   :name => "Snickers Bars",
#   :description => "We bet you miss candy while crossing the plains",
#   :price => 75
# )

# TripOption.create!(
#   :trip => lewis,
#   :group => :tour,
#   :name => "Mount Rushmore",
#   :description => "A little out of your way, and no presidential statues",
#   :price => 100
# )

# TripOption.create!(
#   :trip => lewis,
#   :group => :tour,
#   :name => "Surf the Pacific ocean",
#   :description => "Fun for the whole family",
#   :price => 150
# )
    
parc = Trip.create!(:name => "Visit Xerox PARC",
    :tag_line => "See the Lab That Started It All",
    :start_date => "December 12, 1979", 
    :end_date => "December 13, 1979", 
    :location => "California",
    :activity => "Geeking Out",
    :description => "Visit the world-famous Xerox PARC lab on a tour with some represntatives of Apple Computer. Nothing to see here...",
    :image_name => "parc.jpg",
    :price => 10343)
    
# TripOption.create!(
#   :trip => parc,
#   :group => :hotel,
#   :name => "Luxury hotel",
#   :description => "All the luxuries of 1979. WiFi not available",
#   :price => 400
# )

# TripOption.create!(
#   :trip => parc,
#   :group => :hotel,
#   :name => "Normal hotel",
#   :description => "Some of the luxuries of 1979. WiFi still not available",
#   :price => 200
# )

# TripOption.create!(
#   :trip => parc,
#   :group => :hotel,
#   :name => "No Hotel",
#   :description => "Sleep at the PARC facility, just like an overworked employee",
#   :price => 100
# )

# TripOption.create!(
#   :trip => parc,
#   :group => :extra,
#   :name => "Take home a Xerox Star",
#   :description => "The computer that started it all. WiFi not included",
#   :price => 3045
# )

# TripOption.create!(
#   :trip => parc,
#   :group => :extra,
#   :name => "Alan Kay's autograph",
#   :description => "'Nuff said. It's Alan Kay.",
#   :price => 500
# )

# TripOption.create!(
#   :trip => parc,
#   :group => :tour,
#   :name => "Tour the PARC facility with Steve Jobs",
#   :description => "Tour may include WIMP interface, mouse, OO Programming, and the Ethernet.",
#   :price => 100
# )

# TripOption.create!(
#   :trip => parc,
#   :group => :tour,
#   :name => "Stanford University student tour",
#   :description => "See the sights1",
#   :price => 25
# )
    
washington = Trip.create!(:name => "Cross The Delaware",
    :tag_line => "A Winter Nature Hike With Washington",
    :start_date => "December 25, 1776", 
    :end_date => "December 26, 1776", 
    :location => "USA",
    :activity => "Hiking",
    :image_name => "washington.jpg",
    :description => "Follow the Colonial Army as they make their way toward one of the critical battles of the Revolution",
    :price => 21353)
    
# TripOption.create!(
#   :trip => washington,
#   :group => :hotel,
#   :name => "Live with the general",
#   :description => "Expensive. But quiet. Watch out though -- we hear that George snores.",
#   :price => 500
# )

# TripOption.create!(
#   :trip => washington,
#   :group => :hotel,
#   :name => "Live with the officers",
#   :description => "Moderate. But liveable.",
#   :price => 300
# )

# TripOption.create!(
#   :trip => washington,
#   :group => :hotel,
#   :name => "Live with the troops",
#   :description => "Cheap. But noisy.",
#   :price => 100
# )

# TripOption.create!(
#   :trip => washington,
#   :group => :hotel,
#   :name => "Live with the rats",
#   :description => "Cheaper. But noisier.",
#   :price => 10
# )

# TripOption.create!(
#   :trip => washington,
#   :group => :extra,
#   :name => "Washington's Autograph",
#   :description => "Have George put his John Hancock on a piece of paper",
#   :price => 5000
# )

# TripOption.create!(
#   :trip => washington,
#   :group => :extra,
#   :name => "Pose for the famous picture",
#   :description => "My general crossed the Delaware and all I got was this lousy picture.",
#   :price => 200
# )

# TripOption.create!(
#   :trip => washington,
#   :group => :tour,
#   :name => "Tour the Colonial Camp",
#   :description => "Shoes optional.",
#   :price => 400
# )

# TripOption.create!(
#   :trip => washington,
#   :group => :tour,
#   :name => "Tour the British Barracks",
#   :description => "Don't give away the surprise!",
#   :price => 200
# )
    
napoleon = Trip.create!(:name => "Escape From Elba",
    :tag_line => "A Hundred Days With Napoleon",
    :start_date => "February 26, 1815", 
    :end_date => "June 20, 1815", 
    :location => "France",
    :activity => "War",
    :image_name => "napoleon.jpg",
    :description => "Relive history's most famous prison escape",
    :price => 34645)
    
# TripOption.create!(
#   :trip => napoleon,
#   :group => :hotel,
#   :name => "Bunk with the Emperor",
#   :description => "Live like a king. Literally.",
#   :price => 1250
# )

# TripOption.create!(
#   :trip => napoleon,
#   :group => :hotel,
#   :name => "Bunk with the Loyalists",
#   :description => "Live near a king.",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => napoleon,
#   :group => :hotel,
#   :name => "Bunk with the English",
#   :description => "Live against a king",
#   :price => 750
# )

# TripOption.create!(
#   :trip => napoleon,
#   :group => :extra,
#   :name => "Height contest!",
#   :description => "Find out if you are taller than history's most famous shorty.",
#   :price => 100
# )

# TripOption.create!(
#   :trip => napoleon,
#   :group => :extra,
#   :name => "Get a cool hat",
#   :description => "Just like Napoleon's",
#   :price => 50
# )

# TripOption.create!(
#   :trip => napoleon,
#   :group => :tour,
#   :name => "Behind the scenes at Elba",
#   :description => "Find out how an Emporer in exile lives",
#   :price => 160
# )

# TripOption.create!(
#   :trip => napoleon,
#   :group => :tour,
#   :name => "Battlefield tour of Waterloo",
#   :description => "Tour the battlefield where Napoleon met his you-know-what",
#   :price => 110
# )
    
everest = Trip.create!(:name => "Climb Everest With Hillary",
    :tag_line => "Relive The Most Famous Climb",
    :start_date => "March 1, 1953", 
    :end_date => "June 15, 1953", 
    :location => "Himalayas",
    :activity => "Mountain Climbing",
    :image_name => "everest.jpg",
    :description => "All the excitement of knowing the outcome in advance",
    :price => 21353)
    
# TripOption.create!(
#   :trip => everest,
#   :group => :hotel,
#   :name => "Luxury accomodations",
#   :description => "Live like you are at base camp",
#   :price => 200
# )

# TripOption.create!(
#   :trip => everest,
#   :group => :hotel,
#   :name => "Moderate accomodations",
#   :description => "Live like you are on the mountain",
#   :price => 150
# )

# TripOption.create!(
#   :trip => everest,
#   :group => :hotel,
#   :name => "Hard to sleep accomodations",
#   :description => "Live like you are near the peak",
#   :price => 100
# )

# TripOption.create!(
#   :trip => everest,
#   :group => :extra,
#   :name => "Take your picture at the peak",
#   :description => "Enjoy the top of the world",
#   :price => 1500
# )

# TripOption.create!(
#   :trip => everest,
#   :group => :extra,
#   :name => "Double oxygen",
#   :description => "Make it easier to breathe",
#   :price => 1200
# )

# TripOption.create!(
#   :trip => everest,
#   :group => :tour,
#   :name => "What else. Climb the mountain",
#   :description => "See everything",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => everest,
#   :group => :tour,
#   :name => "See beautiful Nepal",
#   :description => "Wander at the foot of the mountains",
#   :price => 100
# )
    
beatles = Trip.create!(:name => "The Beatles In Concert",
    :tag_line => "Attend the Historic Final Tour",
    :start_date => "August 12, 1966", 
    :end_date => "August 29, 1966", 
    :location => "USA",
    :activity => "Concert Going",
    :image_name => "beatles.jpg",
    :description => "See the fab four one final time",
    :price => 33450)
    
# TripOption.create!(
#   :trip => beatles,
#   :group => :hotel,
#   :name => "We're with the band",
#   :description => "Stay at top-notch accomodations",
#   :price => 1500
# )

# TripOption.create!(
#   :trip => beatles,
#   :group => :hotel,
#   :name => "We're with the fans",
#   :description => "Stay at accomodations",
#   :price => 600
# )

# TripOption.create!(
#   :trip => beatles,
#   :group => :hotel,
#   :name => "We're here",
#   :description => "Stay.",
#   :price => 200
# )

# TripOption.create!(
#   :trip => beatles,
#   :group => :extra,
#   :name => "Signed guitars",
#   :description => "From John, Paul, and George",
#   :price => 1500
# )

# TripOption.create!(
#   :trip => beatles,
#   :group => :extra,
#   :name => "Have John or Paul write a song about you",
#   :description => "Offer only valid if your name is Michelle, Jude, or Prudence",
#   :price => 100
# )

# TripOption.create!(
#   :trip => beatles,
#   :group => :tour,
#   :name => "Backstage pass",
#   :description => "Meet the Beatles",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => beatles,
#   :group => :tour,
#   :name => "Ride on a tour bus",
#   :description => "Actually, kind of dull",
#   :price => 500
# )
    
enigma = Trip.create!(:name => "Crack The Enigma",
    :tag_line => "Use the First Turing Machine",
    :start_date => "September 15, 1939", 
    :end_date => "January 1, 1943", 
    :location => "UK",
    :activity => "Geeking Out",
    :image_name => "enigma.jpg",
    :description => "Break the Enigma code with Britain's greatest geniuses",
    :price => 33450)
    
# TripOption.create!(
#   :trip => enigma,
#   :group => :hotel,
#   :name => "Deluxue Hotel",
#   :description => "We can guarantee this is not affected by the Blitz",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => enigma,
#   :group => :hotel,
#   :name => "A hotel",
#   :description => "We can not so guarantee",
#   :price => 600
# )

# TripOption.create!(
#   :trip => enigma,
#   :group => :hotel,
#   :name => "A bed",
#   :description => "Sleep in a bomb shelter",
#   :price => 300
# )

# TripOption.create!(
#   :trip => enigma,
#   :group => :extra,
#   :name => "Work with Alan Turing",
#   :description => "Or an incredible machine simulation",
#   :price => 500
# )

# TripOption.create!(
#   :trip => enigma,
#   :group => :extra,
#   :name => "Crack a code",
#   :description => "And save the day",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => enigma,
#   :group => :tour,
#   :name => "Behind the scenes at Bletchly Park",
#   :description => "See were all the math was mathed",
#   :price => 100
# )

# TripOption.create!(
#   :trip => enigma,
#   :group => :tour,
#   :name => "Beautful London",
#   :description => "Tour London during the War",
#   :price => 175
# )
    
polo = Trip.create!(:name => "Tour With Marco Polo",
    :tag_line => "Travel The Exotic Spice Road",
    :start_date => "January 1, 1271", 
    :end_date => "January 1, 1275", 
    :location => "China",
    :activity => "Hiking",
    :image_name => "polo.jpg",
    :description => "A once in a lifetime opportunity",
    :price => 33450)
    
# TripOption.create!(
#   :trip => polo,
#   :group => :hotel,
#   :name => "Stay with Marco",
#   :description => "Only the best",
#   :price => 1000
# )

# TripOption.create!(
#   :trip => polo,
#   :group => :hotel,
#   :name => "Stay near Marco",
#   :description => "Not quite the best",
#   :price => 750
# )

# TripOption.create!(
#   :trip => polo,
#   :group => :hotel,
#   :name => "Stay with the horses",
#   :description => "Only the cheapest",
#   :price => 100
# )

# TripOption.create!(
#   :trip => polo,
#   :group => :extra,
#   :name => "Genuine spice",
#   :description => "Keep your meat from tasting spoiled",
#   :price => 500
# )

# TripOption.create!(
#   :trip => polo,
#   :group => :extra,
#   :name => "Play Marco Polo with Marco Polo",
#   :description => "If we can find a swimming pool",
#   :price => 100
# )

# TripOption.create!(
#   :trip => polo,
#   :group => :tour,
#   :name => "Walk the great wall",
#   :description => "Before all the tourists",
#   :price => 100
# )

# TripOption.create!(
#   :trip => polo,
#   :group => :tour,
#   :name => "Walk the spice road",
#   :description => "Caravan with the best",
#   :price => 150
# )
    
User.delete_all

$USERS[:fred] = User.create!(
    # :persistence_token => "persistence token",
    :first_name => "Fred",
    :last_name => "Flintstone",
    # :password_salt => "salt",
    :password => "password",
    :password_confirmation => "password",
    :email => "fred@test.com")
    
# fred.user_preferences.create(:kind => "century", :name => "1600s")

$USERS[:wilma] = User.create!(
    # :persistence_token => "persistence token",
    :first_name => "Wilma",
    :last_name => "Flintstone",
    # :password_salt => "salt",
    :password => "password",
    :password_confirmation => "password",
    :email => "wilma@test.com")
    
$USERS[:barney] = User.create!(
    # :persistence_token => "persistence token",
    :first_name => "Barney",
    :last_name => "Rubble",
    # :password_salt => "salt",
    :password => "password",
    :password_confirmation => "password",
    :email => "barney@test.com")
        
$USERS[:betty] = User.create!(
    # :persistence_token => "persistence token",
    :first_name => "Betty",
    :last_name => "Rubble",
    # :password_salt => "salt",
    :password => "password",
    :password_confirmation => "password",
    :email => "betty@test.com")
    
Relationship.delete_all    
    
Relationship.create(:sender => $USERS[:fred], :receiver => $USERS[:barney])
Relationship.create(:sender => $USERS[:wilma], :receiver => $USERS[:betty])

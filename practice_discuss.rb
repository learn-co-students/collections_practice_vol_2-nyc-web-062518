# arr = ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]
#
# arr.select do |word|
#   if word.start_with?("a")
#     word
#   end
# end
#
# # #DANIELS CODE
# # arr.select { |word| word[0] == "a" }
#
#
# sentence = "Hey Daniel how are you today"
#
# def count_words(sentence)
#   sentence.split(" ").length
# end
#
# foods = {
#   "pie" => "delicious",
#   "broccoli" => "not delicious",
#   "carrots" => "not delicious",
#   "apples" => "delicious",
#   "peanut butter" => "delicious"
#   }
#
# def food_good(foods)
#   foods.delete_if do |k,v|
#     v == "not delicious"
#   end
# end
#
# #daniels method wins again
# # def food_good(foods)
# #   puts foods.select { |food, tasty| tasty == "not delicious" }.keys
# # end
#
# characters = ["Daenerys Targaryen", "Jon Snow" ,"Arya Stark", "Tyrion Lannister", "Sansa Stark", "Cersei Lannister", "Margaery Tyrell"]
#
# def downcase_names(characters)
#   characters.map do |names|
#     names.downcase
#   end
# end
#
# archer = {
#     "name" => "Sterling Mallory Archer",
#     "co-workers"=> ["Lana Kane", "Cyril Figgis", "Cheryl Tunt", "Pam Poovey", "Dr Krieger"],
#     "favorite_drink" => "Bloody Mary",
#     "Quotes" => ["I swear to god, I had something for this", "Phrasing", "Boop", "Danger Zone", "Read a book", "Do you not?", "Can't or won't?"]
# }
#
# archer["Quotes"].sample


class Animal

  def species(input = "cat")
    

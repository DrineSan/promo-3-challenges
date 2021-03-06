
actor = {
  :lastname => "Vandamme",
  :firstname => "Jean-Claude",
  :age => 50,
  :activities => ["acting", "bodybuilding", "martial arts"]
}

# Ex 1: add a :country key in the actor hash with a value "Belgium"
actor[:country] = "Belgium"

# Ex 2: b is a copy of actor, but with a firstname equal to "Paul"
b = actor.dup
b[:firstname] = "Paul"

# Ex 3: c is an array containing the values of the actor hash
c = []
actor.each_value do |value|
  # c.push(value)
  c << value
end


# Ex 4: d is an array listing the activities of the actor, in
#       reverse alphabetical order, and in upper case.
d = []
activities = actor[:activities].sort.reverse

activities.each do |activity|
  d << activity.upcase
end

# d = actor[:activities].sort.reverse.map {|activity| activity.upcase}


# Ex 5: JCVD's birthday is today! Uh-oh? We should increment his age by 1 year.
actor[:age] += 1

# Ex 6: actor_dup is a copy of actor but whose keys are strings, not symbols.
#       Don't build actor_dup by hand, re-use actor to build actor_dup.
actor_dup = {}
actor.each do |key, value|
  actor_dup[key.to_s] = value
end


# Ex 7: the actor applies to an acting job by sending a resume. His resume
#       is a hash describing him but not mentioning his age nor that he loves
#       bodybuilding. Re-use the actor hash to build resume.
copy_actor = actor.dup
copy_actor[:activities] = copy_actor[:activities].dup
copy_actor[:activities].delete("bodybuilding")
copy_actor.delete(:age)
resume = copy_actor

# autre possibilité:
# index = copy_actor[:activies].index("bodybuilding")
# copy_actor[:activities].delete_at(index)



# Ex 8:
people = [
  { :name => "capitaine haddock", :hair => "brown", :hat => true },
  { :name => "tintin", :hair => "blond" },
  { :name => "professeur tournesol", :hair => "brown", :hat => true },
  { :name => "dupont", :hair => "brown", :mustache => true },
  { :name => "dupond", :hair => "brown", :mustache => true }
]

# Ex 8.1: for each person in people, add a :sex key (value is always "male",
#         because Hergé is bit sexist...)
people.each do |element|
  element[:sex] = "male"
end


# Ex 8.2: create a new list of people, called brownies, including only the
#         people with brown hair
brownies = people.select{ |element| element[:hair] == "brown"}



# Ex 8.3: create a new list of people, including only people without a hat, and
#         having a name including the letter "t"
no_hat_but_t_name = people.select{|element| element[:hat] == nil && element[:name].include?("t")}

p no_hat_but_t_name

# Ex 8.4: generate a list containing the names of all the people in reverse
#         alphabetical order
names = []
people.each{|element| names << element[:name]}
names.sort!
names.reverse!

# names = people.map{|element| element[:name]}.sort.reverse


# Ex 8.5. count the number of people having a mustache

people_with_mustache = people.select{|element| element[:mustache] == true}
mustache_count = people_with_mustache.size




puts "1. #{actor[:country] == "Belgium"}"
puts "2. #{b[:firstname] == "Paul" && actor[:firstname] == "Jean-Claude"}"
puts "3. #{c == ["Vandamme", "Jean-Claude", 50, ["acting", "bodybuilding", "martial arts"], "Belgium"] || c == ["Vandamme", "Jean-Claude", 51, ["acting", "bodybuilding", "martial arts"], "Belgium"]}"
puts "4. #{d == ["MARTIAL ARTS", "BODYBUILDING", "ACTING"]}"
puts "5. #{actor[:age] == 51}"
puts "6. #{actor_dup == {
  "lastname" => "Vandamme",
  "firstname" => "Jean-Claude",
  "age" => 51,
  "activities" => ["acting", "bodybuilding", "martial arts"],
  "country" => "Belgium"
}}"
puts "7. #{resume == {
  :lastname => "Vandamme",
  :firstname => "Jean-Claude",
  :activities => ["acting", "martial arts"],
  :country => "Belgium"
}}"
puts "8.1. #{people.all? { |p| p[:sex].to_s == "male" }}"
puts "8.2. #{brownies.size == 4 && brownies.all? { |p| p[:hair] == "brown" }}"
puts "8.3. #{no_hat_but_t_name == [{ :name => "tintin", :hair => "blond", :sex => "male" }, { :name => "dupont", :hair => "brown", :mustache => true, :sex => "male" }]}"
puts "8.4. #{names == ["tintin", "professeur tournesol", "dupont", "dupond", "capitaine haddock"]}"
puts "8.5. #{mustache_count == 2}"

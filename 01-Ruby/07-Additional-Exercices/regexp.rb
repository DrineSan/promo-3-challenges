# Go on rubular.com and exercise yourself. The regex reference on the bottom
# of the page is really helpfull too...

# Ex 1.a.
#   Write a regular expression that matches strings containing the "a" character anywhere in the string,
#   so the regex should match "bar", "apple" and "soda" but not "pool".
r1a = /a/ # TODO

# Ex 1.b.
#   Write a regular expression that matches strings starting with the "a" character,
#   so the regex should match "apple" but not "bar".
r1b = /\Aa/ # TODO

# Ex 1.c.
#   Write a regular expression that matches strings ending with the "a" character,
#   so the regex should match "soda" but not "bar".
r1c = /a\z/ # TODO

# Ex 1.d.
#   Do you know another way, not using regular expressions, to detect if a string contains, starts with, or ends with an "a"?

# méthodes include?, start_with? et end_with?

# Ex 1.e.
#   Write a regular expression that matches strings containing two consecutive "t" characters,
#   so the regex should match "roulette" and but not "tête".
r1e = /t{2}/ # TODO



# Ex 2.a.
#   Write a regex that matches strings containing a digit character
r2a = /\d/ # TODO


# Ex 2.b.
#   Write a regex that matches strings containing at least 3 consecutive digit characters
#   so the regex should match "123 soleil", "ab9801e" and "vol 747 pour sydney" but not "between 1 and 20"
r2b = /\d{3}/ # TODO

# Ex 2.c.
#   Write a regex that matches a string containing exactly 4 characters : a digit, then the letter "f", then two digits.
r2c = /\A\df\d\d\z/ # TODO



# Ex 3.a.
#   Write a regex that matches a string containing 1 or more digits, and only digits (no other character, no spaces, no newlines, ...)
r3a = /\A\d{1,}\z/ # TODO

# Ex 3.b.
#   Write a regex that matches a string containing 0 or more digits, and only digits (no other character)
r3b = /\A\d*\z/ # TODO

# Ex 3.c.
#   Write a regex that matches a string starting with "prix : " (don't forget to match the spaces), then between
#   3 and 6 consecutive digits, then the euro sign "€".
#   The string should not contain anything else.
#   For example, the regex should match "prix : 100€", "prix : 12990€" but not "prix : 51€" nor "prix : 1000000€".
r3c = /\Aprix\s:\s\d{3,6}€\z/ # TODO


# Ex 3.d.
#   Write a regex that matches a string starting with one or more "a" characters, then exactly 1 "b" character, then
#   between 4 and 7 "c" characters, and then ending with zero or more "d" characters.
#   Should match: "abcccc", "abccccd", "aaabcccccccddddddd"
#   Shouldn't match:
#     - "bccccd" (doesn't start with at least one "a")
#     - "aabbcccc" (there should only be one "b" character)
#     - "abcccd" (there should be at least 4 consecutive "c")
#     - "abccccccccdd" (there should be at most 7 consective "c")
r3d = /\Aa+bc{4,7}d*\z/ # TODO




# Ex 4.a.
#   Write a regex that matches a string containing a "b" or a "c" character.
#   The regex should match "bar", "toc", "club" but not "dog" or "hat".
r4a = /[bc]/ # TODO

# Ex 4.b.
#   Write a regex that matches a string containing only vowels in lowercase (no other characters).
#   The regex should match "a", "oui", "yo", "eu", "aieuoy" but not "a e i o u y", "oui!" nor "ouais".
r4b = /\A[aeiouy]+\z/ # TODO

# Ex 4.c.
#   Write a regex that matches a string containing only vowels in lowercase or upercase (no other characters).
r4c = /\A[aeiouyAEIOUY]+\z/ # TODO

# Ex 4.d.
#   Write a regex that matches any string which doesn't end with the "x" character.
#   The regex should match a", "ziggy stardust" and "x-men" but "houx".
r4d = /[^x]\z/ # TODO

# Ex 4.e.
#   Write a regex that matches any string which doesn't contain the "x" character at all.
#   The regex should match "" (empty string), "a", "ziggy stardust" but not "x-men" nor "houx".
r4e = /\A[^x]*\z/ # TODO



# Ex 5.a.
#   Write a regex that matches any string containing "bo" or "ta"
#   The regex should match "abonnement", "rétablir", "taboulé" but not "tomate" nor "bateau"
r5a = /(bo|ta)/ # TODO

# Ex 5.b.
#   Write a regex that matches only the words "avion" and "action" in both singular and plural forms.
#   You should use both the ? operator and the (a|b) construct in the regexp.
r5b = /\A(avions?|actions?)\z/ # TODO
# autre possibilité: r5b = /\Aa(v|ct)ions?\z/ # TODO



###############################
#  Real world example
###############################

# Ex 6.a
#   Write a regexp to validate credit card numbers. A valid credit card number is made of 4 groups of 4 consecutive
#   digits each, and separated by a space. For example: "5131 1980 7633 6621". There should be no other caracters
#   than digits and spaces, and there should be no spaces before the first digit or after the last digit.
credit_card_regexp = /\A\d{4}\s\d{4}\s\d{4}\s\d{4}\z/ # TODO

# Ex 6.b
#   Write a shorter version of the credit_card_regexp
credit_card_regexp_2 = /\A(?:\d{4}\s){3}\d{4}\z/

# Ex 6.c
#   Use your brand new regexp to extract the credit card number from the following text. You need to code
#   the missing parts of the credit_card_extractor method:
def credit_card_extractor(string)
  # TODO look at http://www.ruby-doc.org/core-2.1.2/String.html#method-i-match
  # TODO look at http://www.ruby-doc.org/core-2.1.2/String.html#method-i-scan
  string.scan(/\d{4}\s\d{4}\s\d{4}\s\d{4}/)
end

text = "My credit card number is 5131 7613 3221 6290. Don't tell anyone!"

credit_card_number = credit_card_extractor(text)[0]

text2 = <<-TOTO
My credit card number is 5131 7613 3221 6290. Don't tell anyone!
My credit card number is 5131 7613 3221 6291. Don't tell anyone!
My credit card number is 5131 7613 3221 6292. Don't tell anyone!
My credit card number is 5131 7613 3221 6293. Don't tell anyone!
My credit card number is 5131 7613 3221 6294. Don't tell anyone!
TOTO

credit_card_numbers = credit_card_extractor(text2)


















####################
# TESTS
####################

def rmatch(r, yes, no = [])
  yes.all? { |s| s.match(r) } && no.none? { |s| s.match(r) }
end

puts "1.a. #{r1a == /a/}"
puts "1.b. #{r1b == /\Aa/ || r1b == /^a/}"
puts "1.c. #{r1c == /a\z/ || r1c == /a$/}"
puts "1.e. #{r1e == /tt/ || r1e == /t{2}/}"
puts "2.a. #{r2a == /\d/ || r2a == /[0-9]/}"
puts "2.b. #{rmatch(r2b, ["123 soleil", "ab9801e", "vol 747 pour sydney"], ["between 1 and 20"])}"
puts "2.c. #{rmatch(r2c, ["1f34", "0f00"], ["00f00", "1f125", "a\n1f86", "3f22\n"])}"
puts "3.a. #{rmatch(r3a, ["1", "01234", "98710191888"], ["", "a1234", "a\n1234", "1234\n", "1 2 3"])}"
puts "3.b. #{rmatch(r3b, ["", "1", "01234", "98710191888"], ["a1234", "a\n1234", "1234\n", "1 2 3"])}"
puts "3.c. #{rmatch(r3c, ["prix : 100€", "prix : 12990€"], ["", "prix : 51€", "prix : 1000000€", "my prix : 123€!"])}"
puts "3.d. #{rmatch(r3d, ["abcccc", "abccccd", "aaabcccccccddddddd"], ["bccccd", "abbcccc", "abcccd", "abccccccccdd"])}"
puts "4.a. #{rmatch(r4a, ["bar", "toc", "club"], ["dog", "hat"])}"
puts "4.b. #{rmatch(r4b, ["a", "oui", "yo", "eu", "aieuoy"], ["a e i o u y", "oui!", "ouais"])}"
puts "4.c. #{rmatch(r4c, ["a", "oui", "yo", "eu", "aieuoy", "A", "YO", "AIEOUY"], ["a e i o u y", "oui!", "ouais", "YO!"])}"
puts "4.d. #{rmatch(r4d, ["a", "ziggy stardust", "x-men"], ["houx"])}"
puts "4.e. #{rmatch(r4e, ["", "a", "ziggy stardust"], ["x-men", "houx"])}"
puts "5.a. #{rmatch(r5a, ["abonnement", "rétablir", "taboulé"], ["tomate", "bateau"])}"
puts "5.b. #{rmatch(r5b, ["avion","avions","action","actions"], ["anion", "anions", " avion ", "un avion", "des\navions", "action\ns"])}"
puts "6.a. #{rmatch(credit_card_regexp, ["5131 7613 3221 6290"], ["513 1980 3221 6290", "5131 1980 7613", "6031198076136290"])}"
puts "6.a. #{rmatch(credit_card_regexp_2, ["5131 7613 3221 6290"], ["513 1980 3221 6290", "5131 1980 7613", "6031198076136290"])}"
puts "6.c. #{credit_card_number == '5131 7613 3221 6290'}"
puts "6.c. #{credit_card_numbers == ['5131 7613 3221 6290', '5131 7613 3221 6291', '5131 7613 3221 6292', '5131 7613 3221 6293', '5131 7613 3221 6294']}"



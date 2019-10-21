# Write a program that takes a word and returns the pig latin version.
# Here are the (simplified) rules of pig latin:
#
# If the word starts with consonant, move it to the end and then add 'ay'
# Or, if the word starts with a vowel, add 'way' to the end
# e.g. dog  -> ogday
#      up   -> upway
#
# Don't worry about handling multiple consonants
# Assume the words are lowercase.
# Assume your user is a developer — e.g. you don't need to write a user interface.

def pig_latin(word)
  first_letter = word[0].downcase
  if ["a", "e", "i", "o", "u"].include?(first_letter)
    "#{word}way"
  else
    a = "#{word}".slice!(1..-1) + first_letter
    "#{a}ay"

  end
end

pig_latin("donkey")

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')

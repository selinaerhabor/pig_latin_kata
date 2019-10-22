# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  if vowels.include?(word[0])
    "#{word}way"
  elsif vowels.include?(word[1])
    a = "#{word}".slice!(1..-1) + word[0]
    "#{a}ay"
  elsif vowels.include?(word[3])
    a = "#{word}".slice!(3..-1) + word[0] + word[1] + word[2]
    "#{a}ay"
  elsif vowels.include?(word[4])
    a = "#{word}".slice!(4..-1) + word[0] + word[1] + word[2] + word[3]
    "#{a}ay"
  elsif consonants.include?(word[0])
    a = "#{word}".slice!(1..-1) + word[0]
    "#{a}ay"
  consonants.include?(word[0] && word[1])
    a = "#{word}".slice!(2..-1) + word[0] + word[1]
    "#{a}ay"
  elsif consonants.include?(word[0] && word[1] && word[2])
    a = "#{word}".slice!(3..-1) + word[0] + word[1] + word[2]
    "#{a}ay"
  else
    a = "#{word}".slice!(1..-1) + word[0]
    "#{a}ay"
  end
end

pig_latin("syllab")

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')

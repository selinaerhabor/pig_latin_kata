# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  w0 = word[0]
  w1 = word[1]
  if w0 == "q" && w1 == "u"
    a = "#{word}".slice!(2..-1) + w0 + w1
    "#{a}ay"
  elsif w0 == "q"
    a = "#{word}".slice!(1..-1) + w0
    "#{a}ay"
  else
    "#{word}way"
  end
end

pig_latin("quick")

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')

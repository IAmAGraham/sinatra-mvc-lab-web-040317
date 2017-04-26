require 'pry'

class PigLatinizer

      def piglatinize(word)
           if word.index(/[aeiouAEIOU]/) == 1
               word.split("").rotate.join.concat("ay")
           elsif word.length == 1
               word.concat("way")
           elsif word.index(/[aeiouAEIOU]/) == 0
               word.concat("way")
           else
               word.split("").rotate(word.index(/[aeiou]/)).join.concat("ay")
           end
       end

       def to_pig_latin(phrase)
          phrase.split(" ").collect {|w|
               piglatinize(w)
           }.join(" ")
       end

end

#    attr_accessor :word
#   #
#   # def initialize(word)
#   #   @word = word
#   # end
#
#   def piglatinize(word)
#     vowels = ['a', 'e', 'i', 'o', 'u']
#     # alphabet = ('a'..'z').to_a
#     # consonants = alphabet - vowels
#       # binding.pry
#       word.split("").each_with_index do |letter, index|
#
#
#         if vowels.include?(letter.downcase) && index == 0
#           return word + "way"
#         elsif vowels.include?(letter) && word.index(letter) != 0
#           first = word.slice(0...index)
#           second = word.slice(index...-1)
#           return second + first + "ay"
#         else
#           next
#         end
#       end
#     end
#
#   def to_pig_latin(phrase)
#     phrase.split(" ").collect { |word| piglatinize(word) }.join(" ")
#   end
#
#
# end
# PigLatinizer.new

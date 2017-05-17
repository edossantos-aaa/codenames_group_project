class Hint < ActiveRecord::Base
  has_and_belongs_to_many(:games)



    define_method(:test_word) do
      test_result = true
      word = self.name()
            binding.pry
      url = "http://www.dictionaryapi.com/api/v1/references/collegiate/xml/"+word+"?key=21eda67f-ddd7-49a5-82d1-24d33cb744e9"

      if not RestClient.get(url).include?("entry id")
        test_result = word
      else
        test_result = false
      end
    test_result
  end
#     define_method(:thesaurus_word) do
#     wordsArray = @word1.split(" ")
#     wordsArray.each() do |word|
#       url = "http://www.dictionaryapi.com/api/v1/references/thesaurus/xml/" + word + "?key=3965a6b8-f1b2-4a75-97e5-ebb5f28a70ee"
#       if not RestClient.get(url).include?("entry id")
#         test_result = word
#       end
#     end
#     test_result
# end
end

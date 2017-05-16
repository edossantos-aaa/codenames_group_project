class Spymaster1  < ActiveRecord::Base
belongs_to(:games)

  @word1 = self

    define_method(:test_word) do
    test_result = true
    wordsArray = @word1.split(" ")
    wordsArray.each() do |word|
      url = "http://www.dictionaryapi.com/api/v1/references/collegiate/xml/" + word + "?key=21eda67f-ddd7-49a5-82d1-24d33cb744e9"
      if not RestClient.get(url).include?("entry id")
        test_result = word
      end
    end
    test_result
  end
    define_method(:thesaurs_word) do
    wordsArray = @word1.split(" ")
    wordsArray.each() do |word|
      url = "http://www.dictionaryapi.com/api/v1/references/thesaurus/xml/" + word + "?key=3965a6b8-f1b2-4a75-97e5-ebb5f28a70ee"
      if not RestClient.get(url).include?("entry id")
        test_result = word
      end
    end
    test_result
end
end

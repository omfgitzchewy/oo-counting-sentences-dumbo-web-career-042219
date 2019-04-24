require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    words = self.split(" ")
    i = 0
    words.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        i += 1
      end
    end
    i
  end

end

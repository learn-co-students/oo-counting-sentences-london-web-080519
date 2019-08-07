require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_string = self.split /\.|\?|!/
    split_string.delete("")
    sentence_count = split_string.length
    binding.pry
    sentence_count
  end
end
require 'pry'

class String
  # true if string end with "."
  # attr_accessor :sentence
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
    # split the sentence in array using regex [.!?] 
    # then delete the empty index in array by regect
    self.split(/[.!?]/).reject {|x| 
    x.empty?}.size
  end
end
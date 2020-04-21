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
    prev_char = ""
    counter = 0
    self.split('').map do |char|
      if (char == "!" || char == "?" || char == ".") && prev_char != "!" && prev_char != "?" && prev_char != "."
        counter = counter + 1
      end
      prev_char = char
    end 
    counter
  end
end

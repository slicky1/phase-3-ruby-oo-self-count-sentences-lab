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

  def count_sentences_0
    raw = self.split(/\. |\! |\? /)
    return 0 if raw == []
    returns = raw.size
    returns -= 1 if raw.last[-1].match(/\.|\!|\?/) == nil #!= "." && "?" && "!"
    returns
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end
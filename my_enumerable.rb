module MyEnumerable
  def all?
    each do |n|
    return false unless yield n
    end
    true
  end
  def any?
    each do |n|
      return true if yield n      
    end
    false
  end
end
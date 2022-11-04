require_relative "my_enumerable"
include MyEnumerable

class  MyList
  def initialize(list)
    @list = list
  end
 def each(&lists)
  @list.each(&lists)
 end
  
end

number_list = [1,2,3,4]
list = MyList.new(number_list)
# Test #all?
puts list.all? {|e| e < 5}
puts list.all? {|e| e > 5}

#Test #any 
puts list.any? {|e| e == 2}
puts list.any? {|e| e == 5}

#Test filter 
print list.filter {|e| e.odd?}
print list.filter {|e| e.even?}

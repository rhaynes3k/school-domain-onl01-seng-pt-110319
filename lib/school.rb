require 'pry'
class School
  def initialize(sch)
    roster = {}
    @school = sch
    @roster = roster
#binding.pry
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
    @roster[grade] = []
    @roster[grade] << name
    end
  end  

  def grade(grade)
    n_arr = []
    @roster[grade].each do |n|
       n_arr.push(n)     
    end
    n_arr
  end
  
  def sort
    n_hash = {}
   @roster.each do |g,n|
     n_hash[g] = n.sort
   end
   n_hash
  end
end









# code here!
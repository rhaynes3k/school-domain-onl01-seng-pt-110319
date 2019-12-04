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
   s_arr = []  
   @roster.each do |g, n|
     s_arr.push(n.sort).to_h
     
   end
   #binding.pry
   
  end 
end









# code here!
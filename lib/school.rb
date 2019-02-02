require "pry"

class School 
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  attr_accessor :name, :roster #make sure this is defined outside of method
  
  def add_student(name, grade)
    
      if @roster.include?(grade)
        @roster[grade] << name
      else
        @roster[grade] = [] #must be included here, otherwise you will overwrite the array
        @roster[grade] << name
      
    end
  end 
  
  def grade(grade)
    return @roster[grade]
  end 
   
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end
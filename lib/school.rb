# code here!

class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster.any? do |key, value|
      if key == grade
        return value
      end
    end
  end 
  
  def sort
    new_hash = {}
    roster.each do |key, value|
      new_hash[key] = value.sort
    end
      return new_hash
  end
end
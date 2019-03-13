# code here!
require 'pry'

class School

  attr_reader :roster
  attr_accessor :name, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    # checks if roster[grade] is nil. return [] if it is.
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster.collect {|key, value|
        return value if key == grade
      }
  end

  def sort
    new_roster = {}
    roster.each {|key, value|
        new_roster[key] = value.sort 
      }
    new_roster
  end

end

school = School.new("Bayside High School")
school.add_student("AC Slater", 9)
school.add_student("Kelly Kapowski", 10)
school.add_student("Screech", 11)
school.add_student("Manon Jacquin", 9)
school.add_student("Diogo Costa", 10)
school.add_student("Myrto", 11)
school.roster
school.grade(9)
school.sort
# binding.pry

puts "blabla"

require 'pry'

class School

  attr_accessor :name, :roster, :student, :grade

  def initialize(name)#school name
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    #if @roster.keys returns an array of grades
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade].sort!
    end
    @roster
  end

end

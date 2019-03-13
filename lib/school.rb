require 'pry'

class School
attr_accessor :name, :student, :grade
attr_reader :name, :roster, :student, :grade

def initialize(name)
 @name = name
 @roster = {}
end

def add_student(student, grade)
  roster[grade] ||= []
  roster[grade] << student
end

def grade(grade)
 roster[grade]
end

def sort
  roster.sort_by { |age, name| age }.to_h
  roster.each do |age, name|
    name.sort!
  end
end
end

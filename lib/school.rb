# code here!
require 'pry'

class School

    attr_accessor :name, :roster, :student, :grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
    end

    def grade(grade)
        @roster[grade]
    end


    def sort
        @roster.map do |key, value|
            @roster[key].sort!
        end
        @roster
    end

end
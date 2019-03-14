require 'pry'

class School

    attr_accessor :roster 

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    
    def add_student (student_name, grades)
        @roster[grades] ||= []
        @roster[grades] << student_name     
    end

    def grade (grades)
        @roster[grades]
    end

    def sort
        hash = {}
        roster.each {|k, v| hash[k] = v.sort}
        hash
    end



end
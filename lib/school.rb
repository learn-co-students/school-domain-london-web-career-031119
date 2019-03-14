# code here!


class School
    attr_reader :roster
    attr_accessor :name, :grade

    def initialize(roster)
        @roster = Hash.new
    end

    def add_student(name, grade)
        # @roster[grade] = []
        # @roster[grade] << name
        (@roster[grade] ||= []) << name
    end

    def grade(grade)
        @roster[grade] = roster[grade]
    end

    def sort
    
        sorted = {}
        roster.each {|k, v| sorted[k] = v.sort}
        sorted
    end
end

# Hash[@card_value_counts.sort_by{|k, v| k * -1}]
# hash["new_key"] = []
# hash["new_key"] << "new_value_for_value_array"

# @agency_list[domain] ||= []
# @agency_list[domain] << match
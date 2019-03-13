class School
  attr_accessor :school, :roster

def initialize (school)
    @school = school
    @roster = {}
end


def add_student(name, num)
    if @roster[num] == nil
      @roster[num] = []
    else
    @roster[num].push name
end
 @roster[num].push name
 @roster[num].uniq!
end

def grade (grade)
  return @roster[grade]
end

def sort
  @roster.values.each do |names|
    names.sort!
      end
  @roster
end

end

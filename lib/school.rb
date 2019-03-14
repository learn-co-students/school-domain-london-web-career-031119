# code here!
class School
  attr_accessor :roster

  def initialize(school_name)
    @roster = {}
  end

  def add_student(name, num)
    @roster[num] ? @roster[num].push(name) : @roster[num] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|k,v| v.sort!}
  end
end
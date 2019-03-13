require 'pry'
# code here!
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster
  #   @roster
  # end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
    #--------OR----------#
      #if self.roster[grade] already exists, leave it alone!!!
      #else set self.roster[grade] = []
    # self.roster[grade] ||= []
    # #then you can start populating the empty array
    # self.roster[grade] << name
  end

  def grade(grade)
    # @roster[grade]
    self.roster[grade]
    # binding.pry
  end

  def sort
    self.roster.each do |grade, students|
      students.sort!
    end
  end

end

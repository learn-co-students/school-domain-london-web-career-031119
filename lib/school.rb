class School

  attr_accessor :roster, :name

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster.include?(grade) ? (@roster[grade] << name) : (@roster[grade] = [name])
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each { |grade, names| new_hash[grade] = names.sort }
    @roster = new_hash
  end

end
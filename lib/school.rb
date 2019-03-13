class School

  attr_reader :roster
  # attr_accessor

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster_sorted_by_grade = @roster.sort.to_h

    final_sort = {}

    roster_sorted_by_grade.each do |grade, names|
      final_sort[grade] = names.sort
    end

    final_sort
  end


end

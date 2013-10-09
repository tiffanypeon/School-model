require 'pry'
class School 
  attr_accessor :roster, :name, :students
  
  def initialize(name)
    @roster = Hash.new
    @name = name
  end

  def add_student(name, grade)
    if self.roster.has_key?(grade)
      self.roster[grade] += [name].flatten
    else
      self.roster[grade] = [name]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    sorted = {}
    self.roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
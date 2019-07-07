class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade].push(student)
    else
      @roster[grade]=[student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.keys.sort
  end
end

require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'sl7_solution.sqlite'
)

class Student < ActiveRecord::Base
  # we have name, surnames, birthday, website, number_of_dogs
  # and first_programming_experience

  AGE_MINIMUM = 16

  validates_presence_of :surnames
  validates_format_of :website, with: /\Ahttp:/
  validates_numericality_of :number_of_dogs, greater_than: 0
  validate :name_presence
  validate :proper_age
  validate :not_before_1970_with_more_than_a_dog
  validate :not_llorenç_or_sharon

  def complete_name
    [name, surnames].join(' ')
  end

  private

  def name_presence
    unless name.present?
      errors.add(:name, 'must be present')
    end
  end

  def proper_age
    unless birthday < AGE_MINIMUM.years.ago
      errors.add(:birthday, 'is too young')
    end
  end

  def not_before_1970_with_more_than_a_dog
    if birthday < Date.new(1970) && number_of_dogs > 1
      errors.add(:birthday, 'cannot be before 1970 and have >1 dogs')
    end
  end

  def not_llorenç_or_sharon
    ["Llorenç", "Sharon"]
    if %w{ Llorenç Sharon }.include?(name)
      errors.add(:name, "cannot be #{name}")
    end
  end
end

# get a valid student
student = Student.new name: 'Someone', surnames: 'with Surnames',
  website: 'http://someplace.com', birthday: 25.years.ago,
  number_of_dogs: 1
puts "Base student is #{student.valid? ? 'valid' : 'not valid'}"

# #complete_name
student.name = 'Albert'
student.surnames = 'Bellonch'
puts "For Albert Bellonch, the complete name is #{student.complete_name}"

# validation 1
student.birthday = Date.new(1960)
student.number_of_dogs = 2
puts "If from 1960 and with 2 dogs is #{student.valid? ? 'valid' : 'not valid'}"
student.number_of_dogs = 1

# validation 2
student.name = 'Llorenç'
puts "If named Llorenç is #{student.valid? ? 'valid' : 'not valid'}"

# validation 3
student.name = nil
puts "If name not set then student is #{student.valid? ? 'valid' : 'not valid'}"

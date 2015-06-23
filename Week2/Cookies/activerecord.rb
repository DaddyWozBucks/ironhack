require 'rubygems'
require 'active_record'
require 'date'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'activerecord.sqlite'
)

class Student < ActiveRecord::Base
  # we have name, surnames, birthday, website, number_of_dogs
  # and first_programming_experience

  AGE_MINIMUM = 16

  validates_presence_of :name, :surnames
  validates_format_of :website, with: /\Ahttp:/
  validates_numericality_of :number_of_dogs, greater_than: 0
  validate :proper_age
  validate :complete_name
  validate :swingingsixties
  validate :webchecker
  validate :mayday

  private

  def proper_age
    unless birthday < AGE_MINIMUM.years.ago
      errors.add(:birthday, 'is too young')
    end
  end

  def complete_name
    unless name.length > 2 && surnames.length > 2
      errors.add(:incompletename, "incomplete names")
    end
  end

  def swingingsixties
    unless birthday > Date.parse('1969-12-31') && number_of_dogs < 2
      errors.add(:sixtiesbabies, "You are too old to learn anything. Go home to your dog pack!")
    end
  end

  def webchecker
    unless website.length < 100
      errors.add(:urltoolong, "Please shorten your URL")
    end
  end
  def mayday
    unless birthday.mon = 5
      errors.add(:nongemini, "My sincerest sympathies for not being born at the right time of year")
    end
  end

end


warwick = Student.new
warwick.birthday = "1989-05-30"
warwick.name = "Warwick"
warwick.surnames = "Kilroy Beamish"
warwick.number_of_dogs = 1
warwick.first_programming_experience = true
warwick.website = "http://www.warwickindahouse.io"
p warwick.valid?
p warwick.errors
warwick.save

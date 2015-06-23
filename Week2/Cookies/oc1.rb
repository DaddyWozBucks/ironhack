# OC1. IronhackLIST

# Oh, man. We are so proud of our Student class. Validated, short, compact. Is it love?

# Anyway, the thing you probably missed from SL7 is having some web in between. Some routes, some Sinatra, some ERB… so let’s do it, why
# not?

# You will now implement a Ironhack directory of students, that shows a list of everyone’s name, surname, birthday, a clickable link to
# their website, if they have programming experience or not (Yes/No) and, more importantly, ¡the number of dogs they have!

# Apart from that, you should be able to create new students through the interface, and also delete the ones which have 0 dogs (we cannot
# kick the others out, they have dogs!).

# Go for it!
require 'sinatra'
require 'sinatra/reloader'
require 'rubygems'
require 'active_record'
require 'date'
require 'pry'

set :port, 3003
set :bind, '0.0.0.0'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'oc1.sqlite'
)





class Student < ActiveRecord::Base
  # we have name, surnames, birthday, website, number_of_dogs
  # and first_programming_experience

  AGE_MINIMUM = 16

  validates_presence_of :name, :surnames
  validates_format_of :website, with: /\Ahttp:/
  # validates_numericality_of :number_of_dogs, greater_than: 0
  validate :proper_age
  validate :complete_name
  validate :swingingsixties
  validate :webchecker
  #validate :mayday

  def to_s
  	"#{name} #{surnames} #{birthday} #{number_of_dogs} #{website} #{first_programming_experience}"
  end

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
  # def mayday
  #   unless birthday.mon == 5
  #     errors.add(:nongemini, "My sincerest sympathies for not being born at the right time of year")
  #   end
  # end

end

get "/" do
	@students = Student.all
	erb :ironhackindex
end

post "/studentadd" do
	one_student = Student.new(params)
	#binding.pry
	p one_student.save
	p one_student.errors
	redirect "/"
end

post "/student/delete/:id" do
	student_to_delete = Student.find(params[:id])
	student_to_delete.destroy
	redirect "/"
end

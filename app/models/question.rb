class Question < ActiveRecord::Base

  attr_accessible :answer_the_question, :ask_a_question
  #has_and_belongs_to_many :users
  has_many :authorships
  has_many :users, :through => :authorships

  def has_been_updated_by_user?(user)
    return self.users.include? user
  end
end

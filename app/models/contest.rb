class Contest < ActiveRecord::Base
	has_many :quizzes, :dependent => :destroy
	accepts_nested_attributes_for :quizzes, :reject_if => lambda {|a| a[:ques_content].blank?}, allow_destroy: true	
	has_many :participants
end

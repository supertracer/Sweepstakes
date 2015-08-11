class ContestUsersController < ApplicationController
  def index
  	@quiz = Quiz.last
  	@participant= Participant.new
  end

  def edit
  
  end

  def new
  	# Rails.logger.info(params)
  	# @quiz = Quiz.last
  	# @participant= Participant.update_attributes(:id => params[:id])
  	# Rails.logger.info(params)

  	# if @quiz.correct_opt != @participant.answer
  	# 	redirect_to(:action => 'index')
  	# else
  	# 	new_contest_user_path
  	# end
  end
  
  def create
  	Rails.logger.info(params)
  	@quiz = Quiz.last
  	@participant  = Participant.where("id = ? ", params[:id]).last
     puts " #{params.inspect} "
  	@participant.update_attributes(:id => params[:id])
  	Rails.logger.info(params)

  	if @quiz.correct_opt != @participant.answer
  		redirect_to(:action => 'index')
  	else
  		contest_users_path
  	end

  end

  # private
  
  # def participant_params
  # 	params.require(:participant).permit(:id,:participant_name,:participant_email,:participant_phone)
  # end

  # def quiz_params
  # 	params.require(:quiz).permit(:id,:ques_content,:opt_A,:opt_B,:opt_c,:opt_d)
  # end





end

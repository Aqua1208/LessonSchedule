class ParticipantsController < ApplicationController
  def new
  end

  def create
    user = current_user
    lesson = Lesson.find(session[:lesson_id])
    participant = lesson.participants.build(user_id: user.id, lesson_id: lesson.id)
    participant.save
    session.delete(:lesson_id)
    redirect_to lessons_path
  end

  # def participation
  #   participant = session[:participant]
  #   user_id = participant["user_id"]
  #   lesson_id = participant["lesson_id"]
  #   participation = Participant.find_by(user_id: user_id, lesson_id: lesson_id)
  #   participation.toggle!(:participation)
  #   session.delete(:participant_id)
  #   redirect_to request.referer
  # end

  # def reservation
  #   reservation = Participant.find(session[:participant_id])
  #   reservation.toggle!(:reservation)
  #   session.delete(:participant_id)
  #   redirect_to request.referer
  # end  

  def destroy
    user = current_user
    lesson = Lesson.find(session[:lesson_id])
    participant = Participant.find_by(user_id: user.id, lesson_id: lesson.id)
    participant.destroy
    session.delete(:lesson_id)
    redirect_to lessons_path
  end
end

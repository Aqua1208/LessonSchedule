class ParticipantsController < ApplicationController
  def new
  end

  def create
    @lesson = Lesson.find(session[:lesson_id])
    user = current_user
    participant = @lesson.participants.build(user_id: user.id)
    participant.save
    session.delete(:lesson_id)
    redirect_to lesson_path(@lesson)
  end

  def update
  end

  def participation
    participation = Participant.find(session[:participant_id])
    participation.toggle!(:participation)
    redirect_to request.referer
  end
  

  def destroy
  end
end

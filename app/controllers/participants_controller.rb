class ParticipantsController < ApplicationController
  def new
  end

  def create
    @lesson = Lesson.find(session[:lesson_id])
    user = current_user
    participant = @lesson.participants.build(user_id: user.id)
    participant.save
    session.delete(:lesson_id)
    flash[:notice] = "講座登録が完了しました"
    redirect_to lesson_path(@lesson)
  end

  def update
  end

  def destroy
  end
end

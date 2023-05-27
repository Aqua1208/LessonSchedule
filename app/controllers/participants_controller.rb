class ParticipantsController < ApplicationController
  def new
  end

  def create
    @lesson = Lesson.find(session[:lesson_id])
    user = current_user
    puts "Lesson ID: #{@lesson.id}"
    puts "User ID: #{user.id}"
    participant = @lesson.participants.build(user_id: user.id)
    participant.save
    session.delete(:lesson_id)
    redirect_to lessons_path
  end

  def update
  end

  def destroy
  end
end

module ApplicationHelper
  def user_all
    User.all
  end

  def lesson_all
    Lesson.all
  end

  def lesson_find_id
    Lesson.find(params[:id])
  end

  def participant_all
    Participant.all
  end

  def teacher_all
    Teacher.all
  end

  def teacher_find_id
    Teacher.find(params[:id])
  end
end

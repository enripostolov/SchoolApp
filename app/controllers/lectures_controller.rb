class LecturesController < ApplicationController

  def new
    @lecture = Lecture.new(start_date: Date.today)
  end

  def create
    @lecture = Lecture.new(lecture_params)

    if @lecture.save
      redirect_to @lecture
    else
      render 'new'
    end
  end

  private
  def lecture_params
    params.require(:lecture).permit(:topics, :teacher, :school_class)
  end

end


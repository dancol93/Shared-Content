class Students::AcademicNotesController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def permit_params
    params.require(:academic_notes).permit()
  end
end

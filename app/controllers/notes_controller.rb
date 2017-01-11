class NotesController < ApplicationController

  def show
   @note = Note.find(params[:id])
 end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)    # Not the final implementation!
    if @note.save
      flash[:success] = "Запись создана!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def note_params
    params.require(:note).permit(:name, :email, :content)
  end

end

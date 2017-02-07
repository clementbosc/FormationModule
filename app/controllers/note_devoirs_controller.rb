class NoteDevoirsController < ApplicationController
  before_action :set_devoir, only: [:update]
  
  
  def update
    @note_devoir.note=note_params[:note]
    @note_devoir.save
    redirect_to :back
  end
  


  private
  def set_devoir
    @note_devoir=NoteDevoir.find(params[:id])
  end
  
  def note_params
    params.require(:note_devoir).permit(:note)
  end
end

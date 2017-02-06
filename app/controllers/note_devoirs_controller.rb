class NoteDevoirsController < ApplicationController

  def add_note_devoir
    d=NoteDevoir.create(user_id: note_devoir_params[:id],
			devoir_id: note_devoir_params[:user_id],
			note: note_devoir_params[:note])
  end

  private

  def note_devoir_params
    params.require(:devoir_id).permit([:id,:user_id,:note])
  end

end

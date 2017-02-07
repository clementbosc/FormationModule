class InterrogationsController < ApplicationController
  before_action :set_interrogation, only: [:update]
  
  
  def update
    @note_interrogation.note=note_params[:note]
    @note_interrogation.save
    redirect_to :back
  end
  


  private
  def set_interrogation
    @note_interrogation=Interrogation.find(params[:id])
  end
    def note_params
    params.require(:interrogation).permit(:note)
  end
end

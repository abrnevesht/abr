class MagsController < ApplicationController
  def new
    @mag = Mag.new
  end
  def show
     @mag = Mag.find(params[:id])
     render :layout => "mag_layout"    
  end
end

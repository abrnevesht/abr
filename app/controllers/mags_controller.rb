class MagsController < ApplicationController
  def new
    @mag = Mag.new
  end
  def show
     @mag = Mag.find(params[:id])
     render :layout => "mag_layout"    
  end
  def index
    @mags =Mag.paginate(page: params[:page])
  end
  def new
    @mag =Mag.new
  end

  def create
    @mag =Mag.new(mag_params)
  end
  def edit
    @mag =Mag.find(params[:id])
    render :layout => "mag_layout"    
  end
  
  def destroy
   Mag.find(params[:id]).destroy
    redirect_to mags_url
  end 
  

end

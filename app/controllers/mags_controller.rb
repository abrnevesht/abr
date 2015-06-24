require 'cgi'
class MagsController < ApplicationController
  def new
    @mag = Mag.new()
    render :layout => "mag_layout"    
  end
  def show
     @mag = Mag.find(params[:id])
     render :layout => "mag_layout"    
  end
  def index
    #@mags =Mag.paginate(page: params[:page])
    render "show"
  end

  def create
    @mag =Mag.new()
    if @mag.save
      redirect_to :controller => 'mags', :action => 'edit', :id => @mag.id 
    else
      render 'new'
    end
  end
  def edit
    @mag =Mag.find(params[:id])
    render :layout => "mag_layout"    
  end

  def update
    @mag = Mag.find(params[:id])
    s=request.request_parameters.to_s.split(",")[3]
    s=s.split("\{\"content\"\=\>\"")[1]
    s=s.sub! "\"}", '' 
    #s=s.split("*")[1]
    #s=s.split("\"")[0]
    r=@mag.update_attribute(params[:field],CGI.unescapeHTML(s))
      # Handle a successful update.
    if r
      redirect_to :controller => 'mags', :action => 'show', :id =>params[:id]
    else
      render "new"
    end
  end
  
  def destroy
   Mag.find(params[:id]).destroy
    redirect_to mags_url
  end 
  

end

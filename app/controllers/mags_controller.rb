# encoding: utf-8
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
    @mag =Mag.new(:name=>User.find_by(id: session[:user_id]).name)
    if @mag.save
  	 	@st="https://abrnevesht.herokuapp.com/"+"comments/new"
    	@st=@st+"?index="
    	@st=@st+ @mag.id.to_s
    	@st=@st+"&name="
    	@st=@st+ @mag.name
  		@qr = RQRCode::QRCode.new(@st).to_img.resize(100, 100).to_data_url
        r = @mag.update_attribute(:QR, @qr)
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

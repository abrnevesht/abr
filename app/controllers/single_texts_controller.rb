# encoding: utf-8
class SingleTextsController < ApplicationController
  def edit
     f = params[:field]
     mag = Mag.find(params[:index])
     @con= mag.send(f)
     render :layout => "singletext_layout"    
  end

  def new 
     @st=SingleTexts.new()
  end

  def update
    @mag = Mag.find(params[:ind])
    render "edit"
    #if @mag.update_attribute()
  end

end

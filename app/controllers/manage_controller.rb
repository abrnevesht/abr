require 'will_paginate/array'
class ManageController < ApplicationController
  def main
     @mag_name = User.find_by(id: session[:user_id]).name
     @mags= Mag.where(name:@mag_name).paginate({:page => params[:page], :per_page => 3})#.paginate(page: params[:page],:per_page => 4)

  end

end

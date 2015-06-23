class Mag < ActiveRecord::Base
  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @logo = attributes[:logo]
    @descrip = attributes[:descrip]
    @titr1 = attributes[:titr1]
    @text1 = attributes[:text1]
    @titr2 = attributes[:titr2]
    @text2 = attributes[:text2]
    @titr3 = attributes[:titr3]
    @text3 = attributes[:text3]
    @titr4 = attributes[:titr4]
    @text4 = attributes[:text4]
    @modir = attributes[:modir]
    @sardabir = attributes[:sardabir]
   
  end

end


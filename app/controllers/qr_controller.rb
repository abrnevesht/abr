# encoding: utf-8
require 'rqrcode_png'
class QrController < ApplicationController
  def index
  	@qr = RQRCode::QRCode.new("https://abrnevesht.herokuapp.com").to_img.resize(200, 200).to_data_url
  end
end

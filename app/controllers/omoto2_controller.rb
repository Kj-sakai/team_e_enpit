# config: utf-8
require 'rakuten_web_service'

class Omoto2Controller < ApplicationController
  def omoto2
    RakutenWebService.configuration do |c|
      c.application_id = ENV["APPID"]
      c.affiliate_id = ENV["AFID"]
  end
  items = RakutenWebService::Ichiba::Item.search(:keyword => 'Rails')
  end
end

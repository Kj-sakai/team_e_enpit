# config: utf-8
require 'rakuten_web_service'

class OmotoController < ApplicationController
  def omoto
    RakutenWebService.configuration do |c|
      c.application_id = ENV["APPID"]
      c.affiliate_id = ENV["AFID"]
  end
  @rankings = RakutenWebService::Ichiba::Item.ranking(:age =>40, :sex => 0)
  end
end

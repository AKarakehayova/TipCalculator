require "calculator_tips/version"
require 'unirest'
require 'json'

module CalculatorTips
  class Bill
    attr_accessor :amount , :tip_percent
    def initialize(amount,tip_percent)
      @amount = amount
      @tip_percent = tip_percent
    end

    def total
      tip = amount * (tip_percent / 100.to_f)
      total_amount = amount + tip
    end

    def tip_amount
      tip = amount * (tip_percent / 100.to_f)
    end

   #communicate with external API
    def external_communication
      response = Unirest.post "http://office.code-runners.com:8888",
                        headers:{ "Accept" => "application/json" },
                        parameters:{ :amount => amount.to_s, :tip => tip.to_s }
      p response.body
    end
  end
end


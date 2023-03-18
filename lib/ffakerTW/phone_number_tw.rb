# frozen_string_literal: true

module FFakerTW
  module PhoneNumberTW
    extend ModuleUtils
    extend self

    HOME_PHONE_PREFIXES = %w[02 03 04 05 06 07 08].freeze
    MOBILE_PHONE_PREFIX = '09'

    #def phone_number
    def name
      #rand(0..1).zero? ? home_work_phone_number : mobile_phone_number
      rand(0..1).zero? ? telphone : mobile
    end

    #def home_work_phone_number
    def telphone
      prefix = fetch_sample(HOME_PHONE_PREFIXES)
      case prefix
      when '02', '04'
        FFakerTW.numerify("#{prefix}-####-####")
      else
        FFakerTW.numerify("#{prefix}-###-####")
      end
    end

    #def mobile_phone_number
    def mobile
      FFakerTW.numerify("#{MOBILE_PHONE_PREFIX}##-###-###")
    end

    def country_code
      '+886'
    end

    #def international_phone_number
    def international_telphone
      number = home_work_phone_number
      number[0..4] = "#{contry_code}-#{number[2]}-"
      number
    end

    def international_mobile
      number = mobile_phone_number
      number[0] = "#{contry_code}-"
      number
    end

    #def international_phone_number
    def international
      #rand(0..1).zero? ? international_mobile_phone_number : international_home_work_phone_number
      rand(0..1).zero? ? international_telphone : international_mobile
    end
  end
end

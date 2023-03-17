# frozen_string_literal: true

module FFakerTW
  module AddressUK
    include FFakerTW::Address

    extend ModuleUtils
    extend self

    COUNTRY = ['England', 'Scotland', 'Wales', 'Northern Ireland'].freeze
    POSTCODE = ['??# #??', '??## #??'].freeze

    def county
      fetch_sample(COUNTY)
    end

    def country
      fetch_sample(COUNTRY)
    end

    def postcode
      FFakerTW.bothify(fetch_sample(POSTCODE)).upcase
    end
  end
end

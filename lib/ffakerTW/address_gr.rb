# frozen_string_literal: true

module FFakerTW
  module AddressGR
    include FFakerTW::Address

    extend ModuleUtils
    extend self

    STREET_PREFIX = [%w[Οδός Πάροδος]].freeze
    STREET_NUMBER = [%w[# ## ###]].freeze
    STATE = REGION

    def zip_code
      FFakerTW.numerify '#####'
    end

    def region
      fetch_sample(STATE)
    end

    def city
      fetch_sample(CITY)
    end

    def street_name
      fetch_sample(STREET)
    end

    def street_nbr
      FFakerTW.numerify(fetch_sample(STREET_NUMBER))
    end

    def street_address
      "#{fetch_sample(STREET_PREFIX)} #{street_name}, #{street_nbr}"
    end
  end
end

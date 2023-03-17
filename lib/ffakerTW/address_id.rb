# frozen_string_literal: true

module FFakerTW
  module AddressID
    include FFakerTW::Address

    extend ModuleUtils
    extend self

    STREET_PREFIX = %w[Jl Jln].freeze

    def zip_code
      FFakerTW.numerify '#####'
    end

    def state
      fetch_sample(STATE)
    end

    def state_abbr
      fetch_sample(STATE_ABBR)
    end

    def city
      fetch_sample(CITY)
    end

    def street_prefix
      fetch_sample(STREET_PREFIX)
    end

    def street
      "#{street_prefix}. #{fetch_sample(COMMON_STREET_NAMES)}, No. #{rand(1..100)}"
    end
  end
end

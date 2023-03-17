# frozen_string_literal: true

module FFakerTW
  module AddressRU
    include FFakerTW::Address

    extend ModuleUtils
    extend self

    POSTAL_CODE_FORMAT = ['######'].freeze
    STREET_NBR_FORMATS = %w[## # ###].freeze

    def city
      fetch_sample(CITY)
    end

    def province
      fetch_sample(PROVINCE)
    end

    def zip_code
      FFakerTW.numerify(POSTAL_CODE_FORMAT)
    end

    def street_name
      fetch_sample(STREET)
    end

    def street_address
      "#{street_name}, д. #{street_number}"
    end

    def street_number
      FFakerTW.numerify(STREET_NBR_FORMATS)
    end
  end
end

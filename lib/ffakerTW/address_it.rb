# frozen_string_literal: true

module FFakerTW
  module AddressIT
    extend ModuleUtils
    extend self

    NUM = ['#', '##', '##', '###', '####', '#-##'].freeze
    SEP = [', ', ' '].freeze
    TYPE = %w[via viale piazza piazzale].freeze
    POSTAL_CODE_FORMATS = ['#####'].freeze

    def street_address
      FFakerTW.numerify(fetch_sample(NUM)) +
        fetch_sample(SEP) +
        fetch_sample(TYPE) + ' ' +
        FFakerTW::NameIT.name
    end

    def postal_code
      FFakerTW.numerify(fetch_sample(POSTAL_CODE_FORMATS))
    end

    def city
      fetch_sample(CITY)
    end

    def full_address
      %(#{street_address}#{fetch_sample(SEP)}#{postal_code} #{fetch_sample(CITY)})
    end

    def region
      fetch_sample(REGION)
    end
  end
end

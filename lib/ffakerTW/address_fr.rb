# frozen_string_literal: true

module FFakerTW
  module AddressFR
    include FFakerTW::Address

    extend ModuleUtils
    extend self

    NUM = ['#', '##', '##', '###', '####', '#-##'].freeze
    MOD = [' B', ' T', ' Q', ' BIS', ' TER', ' QUATER', '', '', '', ''].freeze
    SEP = [', ', ' '].freeze
    TYPE = %w[rue avenue av boulevard bd impasse].freeze
    POSTAL_CODE_FORMATS = ['#####', '97###', '2A###', '2B###'].freeze

    def street_address
      FFakerTW.numerify(fetch_sample(NUM)) +
        fetch_sample(MOD) +
        fetch_sample(SEP) +
        fetch_sample(TYPE) + ' ' +
        FFakerTW::NameFR.name
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

# frozen_string_literal: true

module FFakerTW
  module AddressCH
    include FFakerTW::Address

    extend ModuleUtils
    extend self

    def postal_code
      FFakerTW.numerify '####'
    end

    def canton_abbr
      fetch_sample(CANTON_ABBR)
    end
  end
end

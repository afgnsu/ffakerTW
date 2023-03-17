# frozen_string_literal: true

module FFakerTW
  module AddressCHIT
    include AddressCH

    extend ModuleUtils
    extend self

    def canton
      fetch_sample(CANTON)
    end
  end
end

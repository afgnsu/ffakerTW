# frozen_string_literal: true

module FFakerTW
  module AddressSN
    include FFakerTW::Address

    extend ModuleUtils
    extend self

    def region
      fetch_sample(REGIONS)
    end

    def departement
      fetch_sample(DEPARTEMENTS)
    end

    def arrondissement
      fetch_sample(ARRONDISSEMENTS)
    end
  end
end

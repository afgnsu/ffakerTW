# frozen_string_literal: true

module FFakerTW
  module ColorUA
    extend ModuleUtils
    extend self

    def name
      fetch_sample(NAMES_LIST)
    end
  end
end

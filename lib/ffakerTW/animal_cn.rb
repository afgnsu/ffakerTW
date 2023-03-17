# frozen_string_literal: true

module FFakerTW
  module AnimalCN
    extend ModuleUtils
    extend self

    def common_name
      fetch_sample(COMMON_NAMES)
    end
  end
end

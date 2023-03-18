# frozen_string_literal: true

module FFakerTW
  module GenderTW
    extend ModuleUtils
    extend self

    GENDERS = %w[男 女].freeze

    def name
      fetch_sample(GENDERS)
    end
  end
end

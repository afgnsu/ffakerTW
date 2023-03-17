# frozen_string_literal: true

module FFakerTW
  module GenderTW
    extend ModuleUtils
    extend self

    GENDERS = %w[男 女].freeze

    def random
      fetch_sample(GENDERS)
    end

    alias maybe random
    alias sample random
  end
end

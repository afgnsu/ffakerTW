# frozen_string_literal: true

module FFakerTW
  module JobKR
    extend ModuleUtils
    extend self

    def title
      fetch_sample(JOB_NOUNS)
    end
  end
end

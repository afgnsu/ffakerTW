# frozen_string_literal: true

module FFakerTW
  module JobTW
    extend ModuleUtils
    extend self

    def name
      fetch_sample(JOB_NOUNS)
    end
  end
end

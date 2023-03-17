# frozen_string_literal: true

module FFakerTW
  module Conference
    extend ModuleUtils
    extend self

    def name
      fetch_sample(CONFERENCE_LIST)
    end
  end
end

# frozen_string_literal: true

module FFakerTW
  module NameTW
    extend ModuleUtils
    extend self

    def name
      "#{last_name}#{first_name}"
    end

    def first_name
      fetch_sample(FIRST_NAMES)
    end

    def last_name
      fetch_sample(LAST_NAMES)
    end

    def first_last
      "#{first_name}#{last_name}"
    end
  end
end

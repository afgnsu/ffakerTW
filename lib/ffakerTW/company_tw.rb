# frozen_string_literal: true

module FFakerTW
  module CompanyTW
    extend ModuleUtils
    extend self

    TYPES = %w[資訊 食品 教育 顧問 網路].freeze
    SUFFIXES = %w[有限公司 公司].freeze

    def name
      "#{NameTW.first_name}#{type}#{suffix}"
    end

    def type
      fetch_sample(TYPES)
    end

    def suffix
      fetch_sample(SUFFIXES)
    end
  end
end

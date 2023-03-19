# frozen_string_literal: true

module FFakerTW
  module CompanyTW
    extend ModuleUtils
    extend self

    TYPES = %w[資訊 食品 教育 顧問 網路 企業 實業 機械 電腦 科技 金控 工業 半導體 人壽 光電 精密 電子 建設 能源 ].freeze
    SUFFIXES = %w[股份有限公司 有限公司 公司].freeze

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

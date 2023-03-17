# frozen_string_literal: true

module FFakerTW
  module EducationTW
    extend ModuleUtils
    extend self

    DEGREE_PREFIX = %w[資訊 資管 企管 會計 物理 化學 哲學 經濟 法律 教育 中文 歷史 地理 機械 建築 土木 農經 醫學].freeze
    DEGREE_SUFFIX = %w[學士 碩士 博士].freeze
    SCHOOL_NAME = %w[台灣大學 成功大學 清華大學 陽明交通大學 政治大學 中央大學 中山大學 中正大學 中興大學 台灣師範大學 高雄師範大學 彰化師範大學 新竹教育大學 逢甲大學 輔仁大學 淡江大學 東海大學 文化大學 靜宜大學 東吳大學 台北大學 嘉義大學 台南大學 屏東大學 宜蘭大學 東華大學 台東大學 暨南大學 亞洲大學 台北醫學大學 中國醫藥大學 高雄醫藥大學 長庚大學 華梵大學 台灣科技大學 台北科技大學 雲林科技大學 虎尾科技大學 高雄科技大學 屏東科技大學 中華大學 玄奘大學 元培醫大 勤益科技大學 朝陽科技大學 僑光科技大學 嶺東科技大學 中臺科技大學 吳鳳科技大學 大仁科技大學 美和科技大學 健行科技大學 萬能科技大學 佛光大學 慈濟大學].freeze

    def degree
      "#{fetch_sample(DEGREE_PREFIX)}#{fetch_sample(DEGREE_SUFFIX)}"
    end

    def name
      fetch_sample(SCHOOL_NAME)
    end
  end
end

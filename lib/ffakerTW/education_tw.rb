# frozen_string_literal: true

module FFakerTW
  module EducationTW
    extend ModuleUtils
    extend self

    DEGREE_PREFIX = %w[資訊 資管 企管 會計 物理 化學 哲學 經濟 法律 教育 中文 數學 英文 外語 生物學 統計 保險 金融 財稅 銀保 歷史 地理 機械 建築 土木 農經 工程 電子 電機 體育 光電 藥學 護理學 醫學].freeze
    DEGREE_SUFFIX = %w[學士 碩士 博士].freeze
    SCHOOL_NAME = %w[台灣大學 成功大學 清華大學 陽明交通大學 政治大學 中央大學 中山大學 中正大學 中興大學 台灣師範大學 高雄師範大學 彰化師範大學 新竹教育大學 逢甲大學 輔仁大學 淡江大學 東海大學 文化大學 靜宜大學 東吳大學 台北大學 嘉義大學 台南大學 屏東大學 宜蘭大學 東華大學 台東大學 暨南大學 亞洲大學 台北醫學大學 中國醫藥大學 高雄醫藥大學 長庚大學 華梵大學 台灣科技大學 台北科技大學 雲林科技大學 虎尾科技大學 高雄科技大學 屏東科技大學 中華大學 玄奘大學 元培醫大 勤益科技大學 朝陽科技大學 僑光科技大學 嶺東科技大學 中臺科技大學 吳鳳科技大學 大仁科技大學 美和科技大學 健行科技大學 萬能科技大學 佛光大學 慈濟大學 元智大學 世新大學 中原大學 中國文化大學	銘傳大學 臺中教育大學 實踐大學 臺北商業大學 明新科技大學 真理大學 台北市立大學 義守大學 高雄大學 中國科技大學].freeze

    def name
      fetch_sample(SCHOOL_NAME)
    end

    def degree
      "#{fetch_sample(DEGREE_PREFIX)}#{fetch_sample(DEGREE_SUFFIX)}"
    end
  end
end

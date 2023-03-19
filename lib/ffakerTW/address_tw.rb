# frozen_string_literal: true

module FFakerTW
  module AddressTW
    extend ModuleUtils
    extend self

    def name  #完整地址(縣市+鄉鎮市區+路/街+段+巷+弄+號+樓
      address = fetch_sample(ALL)  #隨機抓取全省地址
      lane = rand(1..99).to_s + "巷"  #巷
      alley = rand(1..9).to_s + "弄"  #弄
      case rand(0..9)
      when 0..1 then "#{address}#{rand(1..500)}號"  #路+號
      when 2..3 then
        if address.match(/[路]/)  #是路才有段
          case rand(1..4)
          when 1 then "#{address}一段#{rand(1..500)}號"  #路+段+號
          when 2 then "#{address}二段#{rand(1..500)}號"
          when 3 then "#{address}三段#{rand(1..500)}號"
          when 4 then "#{address}四段#{rand(1..500)}號"
          end
        else
          "#{address}#{rand(1..500)}號"
        end
      when 4..6 then "#{address}#{rand(1..300)}號#{rand(1..10)}F"  #路+號+樓
      when 7..8 then "#{address}#{lane}#{rand(1..40)}號"  #路+巷+號
      when 9 then "#{address}#{lane}#{alley}#{rand(1..10)}號"  #路+巷+弄+號
      end
    end

    def taipei  #台北市
      "#{fetch_sample(TAIPEI)}#{rand(1..300)}號"
    end

    def newtaipei  #新北市
      "#{fetch_sample(NEWTAIPEI)}#{rand(1..300)}號"
    end

    def keelung  #基隆市
      "#{fetch_sample(KEELUNG)}#{rand(1..300)}號"
    end

    def taoyuan  #桃園市
      "#{fetch_sample(TAOYUAN)}#{rand(1..300)}號"
    end

    def hsinchu  #新竹縣市
      "#{fetch_sample(HSINCHU)}#{rand(1..300)}號"
    end

    def miaoli  #苗栗縣
      "#{fetch_sample(MIAOLI)}#{rand(1..300)}號"
    end

    def taichung  #台中市
      "#{fetch_sample(TAICHUNG)}#{rand(1..300)}號"
    end

    def changhua  #彰化縣
      "#{fetch_sample(CHANGHUA)}#{rand(1..300)}號"
    end

    def nantou  #南投縣
      "#{fetch_sample(NANTOU)}#{rand(1..300)}號"
    end

    def yunlin  #雲林縣
      "#{fetch_sample(YUNLIN)}#{rand(1..300)}號"
    end

    def chiayi  #嘉義縣市
      "#{fetch_sample(CHIAYI)}#{rand(1..300)}號"
    end

    def tainan  #台南市
      "#{fetch_sample(TAINAN)}#{rand(1..300)}號"
    end

    def kaohsiung  #高雄市
      "#{fetch_sample(KAOHSIUNG)}#{rand(1..300)}號"
    end

    def pingtung  #屏東市
      "#{fetch_sample(PINGTUNG)}#{rand(1..300)}號"
    end

    def penghu  #澎湖縣
      "#{fetch_sample(PENGHU)}#{rand(1..300)}號"
    end

    def yilan  #宜蘭縣
      "#{fetch_sample(YILAN)}#{rand(1..300)}號"
    end

    def hualien  #花蓮縣
      "#{fetch_sample(HUALIEN)}#{rand(1..300)}號"
    end

    def taitung  #台東縣
      "#{fetch_sample(TAITUNG)}#{rand(1..300)}號"
    end

    def kingmen  #金門縣
      "#{fetch_sample(KINGMEN)}#{rand(1..300)}號"
    end

    def city  #縣市
      fetch_sample(CITY_NAMES)
    end

    def road  #縣市鄉鎮+路名(無號碼)
      fetch_sample(ALL)
    end

    CITY_NAMES = %w[基隆市 台北市 新北市 桃園市 新竹市 新竹縣 苗栗縣 台中市 彰化縣 南投縣 雲林縣 嘉義市 嘉義縣 台南市 高雄市 屏東縣 宜蘭縣 花蓮縣 台東縣 澎湖縣 金門縣 連江縣].freeze

  end
end

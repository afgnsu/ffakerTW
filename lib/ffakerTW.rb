# frozen_string_literal: true

module FFakerTW
  require_relative 'ffakerTW/utils/array_utils'
  require_relative 'ffakerTW/utils/module_utils'

  extend ModuleUtils

  BASE_LIB_PATH = File.expand_path(__dir__)

  LETTERS = Array('a'..'z').freeze

  HEX = %w[0 1 2 3 4 5 6 7 8 9 A B C D E F].freeze

  def self.hexify(*masks)
    fetch_sample(masks.flatten).gsub(/#/) { fetch_sample(HEX) }
  end

  def self.numerify(*masks)
    fetch_sample(masks.flatten).gsub(/#/) { rand(0..9).to_s }
  end

  def self.letterify(*masks)
    fetch_sample(masks.flatten).gsub(/\?/) { fetch_sample(LETTERS) }
  end

  def self.bothify(masks)
    letterify(numerify(masks))
  end

  autoload :Address, 'ffakerTW/address'
  autoload :AddressAU, 'ffakerTW/address_au'
  autoload :AddressBR, 'ffakerTW/address_br'
  autoload :AddressCA, 'ffakerTW/address_ca'
  autoload :AddressCH, 'ffakerTW/address_ch'
  autoload :AddressCHDE, 'ffakerTW/address_ch_de'
  autoload :AddressCHFR, 'ffakerTW/address_ch_fr'
  autoload :AddressCHIT, 'ffakerTW/address_ch_it'
  autoload :AddressDA, 'ffakerTW/address_da'
  autoload :AddressDE, 'ffakerTW/address_de'
  autoload :AddressFI, 'ffakerTW/address_fi'
  autoload :AddressFR, 'ffakerTW/address_fr'
  autoload :AddressGR, 'ffakerTW/address_gr'
  autoload :AddressID, 'ffakerTW/address_id'
  autoload :AddressIN, 'ffakerTW/address_in'
  autoload :AddressIT, 'ffakerTW/address_it'
  autoload :AddressJA, 'ffakerTW/address_ja'
  autoload :AddressKR, 'ffakerTW/address_kr'
  autoload :AddressMX, 'ffakerTW/address_mx'
  autoload :AddressNL, 'ffakerTW/address_nl'
  autoload :AddressPL, 'ffakerTW/address_pl'
  autoload :AddressRU, 'ffakerTW/address_ru'
  autoload :AddressSE, 'ffakerTW/address_se'
  autoload :AddressSN, 'ffakerTW/address_sn'
  autoload :AddressUA, 'ffakerTW/address_ua'
  autoload :AddressUK, 'ffakerTW/address_uk'
  autoload :AddressUS, 'ffakerTW/address_us'
  autoload :Airline, 'ffakerTW/airline'
  autoload :Animal, 'ffakerTW/animal'
  autoload :AnimalBR, 'ffakerTW/animal_br'
  autoload :AnimalCN, 'ffakerTW/animal_cn'
  autoload :AnimalES, 'ffakerTW/animal_es'
  autoload :AnimalPL, 'ffakerTW/animal_pl'
  autoload :AnimalTW, 'ffakerTW/animal_tw'
  autoload :AnimalUS, 'ffakerTW/animal_us'
  autoload :Avatar, 'ffakerTW/avatar'
  autoload :AWS, 'ffakerTW/aws'
  autoload :BaconIpsum, 'ffakerTW/bacon_ipsum'
  autoload :Bank, 'ffakerTW/bank'
  autoload :Book, 'ffakerTW/book'
  autoload :Boolean, 'ffakerTW/boolean'
  autoload :CheesyLingo, 'ffakerTW/cheesy_lingo'
  autoload :Code, 'ffakerTW/code'
  autoload :Color, 'ffakerTW/color'
  autoload :ColorPL, 'ffakerTW/color_pl'
  autoload :ColorUA, 'ffakerTW/color_ua'
  autoload :Company, 'ffakerTW/company'
  autoload :CompanyCN, 'ffakerTW/company_cn'
  autoload :CompanyFR, 'ffakerTW/company_fr'
  autoload :CompanyIT, 'ffakerTW/company_it'
  autoload :CompanyJA, 'ffakerTW/company_ja'
  autoload :CompanySE, 'ffakerTW/company_se'
  autoload :CompanyTW, 'ffakerTW/company_tw'
  autoload :Conference, 'ffakerTW/conference'
  autoload :CoursesFR, 'ffakerTW/courses_fr'
  autoload :Currency, 'ffakerTW/currency'
  autoload :DizzleIpsum, 'ffakerTW/dizzle_ipsum'
  autoload :Education, 'ffakerTW/education'
  autoload :EducationCN, 'ffakerTW/education_cn'
  autoload :EducationTW, 'ffakerTW/education_tw'
  autoload :Filesystem, 'ffakerTW/filesystem'
  autoload :Food, 'ffakerTW/food'
  autoload :FoodPL, 'ffakerTW/food_pl'
  autoload :FreedomIpsum, 'ffakerTW/freedom_ipsum'
  autoload :Game, 'ffakerTW/game'
  autoload :Gender, 'ffakerTW/gender'
  autoload :GenderBR, 'ffakerTW/gender_br'
  autoload :GenderCN, 'ffakerTW/gender_cn'
  autoload :GenderID, 'ffakerTW/gender_id'
  autoload :GenderIT, 'ffakerTW/gender_it'
  autoload :GenderJA, 'ffakerTW/gender_ja'
  autoload :GenderJP, 'ffakerTW/gender_jp'
  autoload :GenderKR, 'ffakerTW/gender_kr'
  autoload :GenderPL, 'ffakerTW/gender_pl'
  autoload :GenderRU, 'ffakerTW/gender_ru'
  autoload :GenderTW, 'ffakerTW/gender_tw'
  autoload :Geolocation, 'ffakerTW/geolocation'
  autoload :Guid, 'ffakerTW/guid'
  autoload :HealthcareIpsum, 'ffakerTW/healthcare_ipsum'
  autoload :HealthcareRU, 'ffakerTW/healthcare_ru'
  autoload :HipsterIpsum, 'ffakerTW/hipster_ipsum'
  autoload :HTMLIpsum, 'ffakerTW/html_ipsum'
  autoload :Identification, 'ffakerTW/identification'
  autoload :IdentificationBR, 'ffakerTW/identification_br'
  autoload :IdentificationES, 'ffakerTW/identification_es'
  autoload :IdentificationESCL, 'ffakerTW/identification_es_cl'
  autoload :IdentificationESCO, 'ffakerTW/identification_es_co'
  autoload :IdentificationIN, 'ffakerTW/identification_in'
  autoload :IdentificationIT, 'ffakerTW/identification_it'
  autoload :IdentificationKr, 'ffakerTW/identification_kr'
  autoload :IdentificationMX, 'ffakerTW/identification_mx'
  autoload :IdentificationPL, 'ffakerTW/identification_pl'
  autoload :IdentificationTW, 'ffakerTW/identification_tw'
  autoload :Image, 'ffakerTW/image'
  autoload :Internet, 'ffakerTW/internet'
  autoload :InternetSE, 'ffakerTW/internet_se'
  autoload :Job, 'ffakerTW/job'
  autoload :JobBR, 'ffakerTW/job_br'
  autoload :JobCN, 'ffakerTW/job_cn'
  autoload :JobFR, 'ffakerTW/job_fr'
  autoload :JobIT, 'ffakerTW/job_it'
  autoload :JobJA, 'ffakerTW/job_ja'
  autoload :JobKR, 'ffakerTW/job_kr'
  autoload :JobTW, 'ffakerTW/job_tw'
  autoload :JobVN, 'ffakerTW/job_vn'
  autoload :Locale, 'ffakerTW/locale'
  autoload :Lorem, 'ffakerTW/lorem'
  autoload :LoremAR, 'ffakerTW/lorem_ar'
  autoload :LoremBR, 'ffakerTW/lorem_br'
  autoload :LoremCN, 'ffakerTW/lorem_cn'
  autoload :LoremFR, 'ffakerTW/lorem_fr'
  autoload :LoremIE, 'ffakerTW/lorem_ie'
  autoload :LoremIT, 'ffakerTW/lorem_it'
  autoload :LoremJA, 'ffakerTW/lorem_ja'
  autoload :LoremKR, 'ffakerTW/lorem_kr'
  autoload :LoremPL, 'ffakerTW/lorem_pl'
  autoload :LoremRU, 'ffakerTW/lorem_ru'
  autoload :LoremTW, 'ffakerTW/lorem_tw'
  autoload :LoremUA, 'ffakerTW/lorem_ua'
  autoload :Movie, 'ffakerTW/movie'
  autoload :Music, 'ffakerTW/music'
  autoload :Name, 'ffakerTW/name'
  autoload :NameAR, 'ffakerTW/name_ar'
  autoload :NameBR, 'ffakerTW/name_br'
  autoload :NameTW, 'ffakerTW/name_tw'
  autoload :NameCS, 'ffakerTW/name_cs'
  autoload :NameDA, 'ffakerTW/name_da'
  autoload :NameDE, 'ffakerTW/name_de'
  autoload :NameES, 'ffakerTW/name_es'
  autoload :NameFR, 'ffakerTW/name_fr'
  autoload :NameGA, 'ffakerTW/name_ga'
  autoload :NameGR, 'ffakerTW/name_gr'
  autoload :NameID, 'ffakerTW/name_id'
  autoload :NameIN, 'ffakerTW/name_in'
  autoload :NameIT, 'ffakerTW/name_it'
  autoload :NameJA, 'ffakerTW/name_ja'
  autoload :NameKH, 'ffakerTW/name_kh'
  autoload :NameKR, 'ffakerTW/name_kr'
  autoload :NameMX, 'ffakerTW/name_mx'
  autoload :NameNB, 'ffakerTW/name_nb'
  autoload :NameNL, 'ffakerTW/name_nl'
  autoload :NamePH, 'ffakerTW/name_ph'
  autoload :NamePL, 'ffakerTW/name_pl'
  autoload :NameRU, 'ffakerTW/name_ru'
  autoload :NameSE, 'ffakerTW/name_se'
  autoload :NameSN, 'ffakerTW/name_sn'
  autoload :NameTH, 'ffakerTW/name_th'
  autoload :NameTW, 'ffakerTW/name_tw'
  autoload :NameTHEN, 'ffakerTW/name_th_en'
  autoload :NameUA, 'ffakerTW/name_ua'
  autoload :NameVN, 'ffakerTW/name_vn'
  autoload :NatoAlphabet, 'ffakerTW/nato_alphabet'
  autoload :Number, 'ffakerTW/number'
  autoload :PhoneNumber, 'ffakerTW/phone_number'
  autoload :PhoneNumberAU, 'ffakerTW/phone_number_au'
  autoload :PhoneNumberBR, 'ffakerTW/phone_number_br'
  autoload :PhoneNumberCH, 'ffakerTW/phone_number_ch'
  autoload :PhoneNumberCU, 'ffakerTW/phone_number_cu'
  autoload :PhoneNumberDA, 'ffakerTW/phone_number_da'
  autoload :PhoneNumberDE, 'ffakerTW/phone_number_de'
  autoload :PhoneNumberFR, 'ffakerTW/phone_number_fr'
  autoload :PhoneNumberID, 'ffakerTW/phone_number_id'
  autoload :PhoneNumberIT, 'ffakerTW/phone_number_it'
  autoload :PhoneNumberJA, 'ffakerTW/phone_number_ja'
  autoload :PhoneNumberKR, 'ffakerTW/phone_number_kr'
  autoload :PhoneNumberMX, 'ffakerTW/phone_number_mx'
  autoload :PhoneNumberNL, 'ffakerTW/phone_number_nl'
  autoload :PhoneNumberPL, 'ffakerTW/phone_number_pl'
  autoload :PhoneNumberSE, 'ffakerTW/phone_number_se'
  autoload :PhoneNumberSG, 'ffakerTW/phone_number_sg'
  autoload :PhoneNumberSN, 'ffakerTW/phone_number_sn'
  autoload :PhoneNumberTW, 'ffakerTW/phone_number_tw'
  autoload :PhoneNumberUA, 'ffakerTW/phone_number_ua'
  autoload :PhoneNumberRU, 'ffakerTW/phone_number_ru'
  autoload :Product, 'ffakerTW/product'
  autoload :SemVer, 'ffakerTW/sem_ver'
  autoload :Skill, 'ffakerTW/skill'
  autoload :Sport, 'ffakerTW/sport'
  autoload :SportPL, 'ffakerTW/sport_pl'
  autoload :SportUS, 'ffakerTW/sport_us'
  autoload :SportRU, 'ffakerTW/sport_ru'
  autoload :SSN, 'ffakerTW/ssn'
  autoload :SSNMX, 'ffakerTW/ssn_mx'
  autoload :SSNSE, 'ffakerTW/ssn_se'
  autoload :String, 'ffakerTW/string'
  autoload :Time, 'ffakerTW/time'
  autoload :Tweet, 'ffakerTW/tweet'
  autoload :Unit, 'ffakerTW/unit'
  autoload :UnitEnglish, 'ffakerTW/unit_english'
  autoload :UnitMetric, 'ffakerTW/unit_metric'
  autoload :VERSION, 'version'
  autoload :Vehicle, 'ffakerTW/vehicle'
  autoload :Venue, 'ffakerTW/venue'
  autoload :Youtube, 'ffakerTW/youtube'

  # Random Number Generator (RNG) used with ModuleUtils#fetch, #shuffle, #rand
  # in order to provide deterministic repeatability.
  module Random
    # Returns the current RNG seed.
    def self.seed
      @seed ||= ::Random.new_seed
    end

    # Sets the RNG seed and creates a new internal RNG.
    def self.seed=(new_seed)
      @seed = new_seed
      reset!
      new_seed
    end

    # Reset the RNG back to its initial state.
    def self.reset!
      @rng = new_rng
    end

    # Returns a random number using an RNG with a known seed.
    def self.rand(max = nil)
      return rng.rand(max) if max

      rng.rand
    end

    # Returns the current Random object.
    def self.rng
      @rng ||= new_rng
    end

    # Returns a new Random object instantiated with #seed.
    def self.new_rng
      ::Random.new(seed)
    end
  end
end

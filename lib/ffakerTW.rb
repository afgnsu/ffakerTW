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

  autoload :AddressTW, 'ffakerTW/address_tw'
  autoload :Airline, 'ffakerTW/airline'
  autoload :AnimalTW, 'ffakerTW/animal_tw'
  autoload :Avatar, 'ffakerTW/avatar'
  autoload :AWS, 'ffakerTW/aws'
  autoload :BaconIpsum, 'ffakerTW/bacon_ipsum'
  autoload :Bank, 'ffakerTW/bank'
  autoload :Book, 'ffakerTW/book'
  autoload :Boolean, 'ffakerTW/boolean'
  autoload :CheesyLingo, 'ffakerTW/cheesy_lingo'
  autoload :Code, 'ffakerTW/code'
  autoload :Color, 'ffakerTW/color'
  autoload :CompanyTW, 'ffakerTW/company_tw'
  autoload :Conference, 'ffakerTW/conference'
  autoload :Currency, 'ffakerTW/currency'
  autoload :DizzleIpsum, 'ffakerTW/dizzle_ipsum'
  autoload :EducationTW, 'ffakerTW/education_tw'
  autoload :Filesystem, 'ffakerTW/filesystem'
  autoload :Food, 'ffakerTW/food'
  autoload :FreedomIpsum, 'ffakerTW/freedom_ipsum'
  autoload :Game, 'ffakerTW/game'
  autoload :GenderTW, 'ffakerTW/gender_tw'
  autoload :Geolocation, 'ffakerTW/geolocation'
  autoload :Guid, 'ffakerTW/guid'
  autoload :HealthcareIpsum, 'ffakerTW/healthcare_ipsum'
  autoload :HealthcareRU, 'ffakerTW/healthcare_ru'
  autoload :HipsterIpsum, 'ffakerTW/hipster_ipsum'
  autoload :HTMLIpsum, 'ffakerTW/html_ipsum'
  autoload :IdentificationTW, 'ffakerTW/identification_tw'
  autoload :Image, 'ffakerTW/image'
  autoload :Internet, 'ffakerTW/internet'
  autoload :InternetSE, 'ffakerTW/internet_se'
  autoload :JobTW, 'ffakerTW/job_tw'
  autoload :Locale, 'ffakerTW/locale'
  autoload :LoremTW, 'ffakerTW/lorem_tw'
  autoload :Movie, 'ffakerTW/movie'
  autoload :Music, 'ffakerTW/music'
  autoload :NameTW, 'ffakerTW/name'
  autoload :NameTW, 'ffakerTW/name_tw'
  autoload :NatoAlphabet, 'ffakerTW/nato_alphabet'
  autoload :Number, 'ffakerTW/number'
  autoload :PhoneNumberTW, 'ffakerTW/phone_number_tw'
  autoload :Product, 'ffakerTW/product'
  autoload :SemVer, 'ffakerTW/sem_ver'
  autoload :Skill, 'ffakerTW/skill'
  autoload :Sport, 'ffakerTW/sport'
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

# frozen_string_literal: true

module FFakerTW
  module Identification
    extend ModuleUtils
    extend self

    ETHNICITIES = [
      'African American', 'Asian/Pacific Islander', 'Caucasian', 'Hispanic', 'Native American',
      'Multiracial', 'Other', 'Prefer not to respond'
    ].freeze
    GENDERS = %w[Male Female].freeze

    def drivers_license
      FFakerTW.bothify('?###-###-##-###-#').upcase
    end

    def ssn
      FFakerTW.numerify('###-##-####')
    end

    def ethnicity
      fetch_sample(ETHNICITIES)
    end

    def gender
      fetch_sample(GENDERS)
    end
  end
end

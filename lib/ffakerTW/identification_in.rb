# frozen_string_literal: true

module FFakerTW
  module IdentificationIN
    extend ModuleUtils
    extend self

    AADHAAR_FORMAT = ['############'].freeze

    # REF: https://en.wikipedia.org/wiki/Aadhaar
    def aadhaar
      FFakerTW.numerify(AADHAAR_FORMAT)
    end
  end
end

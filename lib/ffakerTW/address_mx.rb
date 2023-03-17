# frozen_string_literal: true

module FFakerTW
  module AddressMX
    extend ModuleUtils
    extend self

    def zip_code
      FFakerTW.numerify('#####')
    end

    def postal_code
      FFakerTW.numerify('#####')
    end

    def state
      fetch_sample(STATE)
    end

    def state_abbr(st_name = nil)
      st_name ||= state
      STATE_ABBR[STATE.index(st_name)]
    end

    def municipality(st_abbr = nil)
      st_abbr ||= state_abbr
      municipalities = Object.const_get("FFakerTW::AddressMX::#{st_abbr.upcase}")
      fetch_sample(municipalities)
    end
  end
end

# frozen_string_literal: true

module FFakerTW
  module Guid
    extend ModuleUtils
    extend self

    def guid
      FFakerTW.hexify('########-####-####-####-############')
    end
  end
end

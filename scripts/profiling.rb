# frozen_string_literal: true

require_relative '../lib/ffakerTW'

N = 1_000_000

N.times do
  FFakerTW::Name.name
end

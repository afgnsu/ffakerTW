# frozen_string_literal: true

module FFakerTW
  # Methods for returning repeatably-random data using the internal
  # Random Number Generator. You should not need to use this directly, it is
  # automatically included when you `include ModuleUtils` in a FFakerTW module.
  module RandomUtils
    # Returns a randon number from the internal Random Number Generator. Can be
    # used in place of `rand` or `Kernal.rand`.
    def rand(max = nil)
      FFakerTW::Random.rand(max)
    end

    # Performs Array#sample on `list` using a the internal Random Number
    # Generator so that the results are deterministic.
    #
    # * Returns one random item from `list`.
    # * Pass `count: n` in options argument, where `n` is an integer, to
    # return *n* items from `list`
    def fetch_sample(list, options = {})
      if (count = options.delete(:count))
        list.sample(count, random: FFakerTW::Random)
      elsif list.is_a?(Range)
        FFakerTW::Random.rand(list)
      else
        list.sample(random: FFakerTW::Random)
      end
    end

    # Performs same action as as `Array#suffle` (returns a randomly-reordered
    # copy of `list`) except that it uses the internal Random Number Generator
    # so that the results are deterministic.
    def shuffle(list)
      list.shuffle(random: FFakerTW::Random)
    end
  end
end

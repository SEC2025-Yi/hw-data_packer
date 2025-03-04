# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    numbers = str.chars.map { |chr| chr.ord - 'a'.ord + 1 }
    numbers.reduce { |prev, num| prev << 5 | num }
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    # IMPLEMENT THIS METHOD
  end
end

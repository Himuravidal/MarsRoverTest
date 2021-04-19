# frozen_string_literal: true

require 'spec_helper'

describe Coordinates do
  describe '#from_s' do
    it 'returns NORTH when given N' do
      Coordinates.from_s('N').should be_equal(Coordinates::NORTH)
    end

    it 'returns SOUTH when given S' do
      Coordinates.from_s('S').should be_equal(Coordinates::SOUTH)
    end

    it 'returns EAST when given E' do
      Coordinates.from_s('E').should be_equal(Coordinates::EAST)
    end

    it 'returns WEST when given W' do
      Coordinates.from_s('W').should be_equal(Coordinates::WEST)
    end

    it 'returns nil when given any other value' do
      Coordinates.from_s('').should be_nil
    end
  end
end

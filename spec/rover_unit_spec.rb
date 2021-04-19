# frozen_string_literal: true

require 'spec_helper'

describe RoverUnit do
  context 'standing at position (0, 0)' do
    context 'facing NORTH' do
      let(:rover_unit) { RoverUnit.new(Coordinates::NORTH) }

      describe '#turn_left' do
        it 'faces WEST' do
          rover_unit.rotate_left
          rover_unit.direction.should == Coordinates::WEST
        end
      end

      describe '#turn_right' do
        it 'faces EAST' do
          rover_unit.rotate_right
          rover_unit.direction.should == Coordinates::EAST
        end
      end

      describe '#move' do
        it 'stands at position (0, 1)' do
          rover_unit.move
          rover_unit.position.should == [0, 1]
        end
      end
    end
  end
end

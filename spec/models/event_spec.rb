require 'spec_helper'

describe Event do
  describe '#name' do
    context 'is empty' do
      it 'invalid' do
        event = Event.new(name: nil)
        event.valid?
        expect(event.errors[:name]).to be_present
      end
    end
  end

end
require 'rails_helper'

describe Event do
  describe '#name' do
    context 'is empty' do
      let(:event) { Event.new(name: '') }
      it 'invalid' do
        event.valid?
        expect(event.errors[:name]).to be_present
      end
    end
  end
end
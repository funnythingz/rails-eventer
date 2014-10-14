require 'rails_helper'

describe Event do
  describe '#name' do
    context 'when is nil' do
      let(:event) { Event.new(name: nil) }
      it 'invalid' do
        event.valid?
        expect(event.errors[:name]).to be_present
      end
    end

    context 'when is empty' do
      let(:event) { Event.new(name: '') }
      it 'invalid' do
        event.valid?
        expect(event.errors[:name]).to be_present
      end
    end

    context 'when is "Hello world"' do
      let(:event) { Event.new(name: 'Hello world') }
      it 'valid' do
        event.valid?
        expect(event.errors[:name]).to be_blank
      end
    end

    context 'when string length is 50 count' do
      let(:event) { Event.new(name: 'a' * 50) }
      it 'valid' do
        event.valid?
        expect(event.errors[:name]).to be_blank
      end
    end

    context 'when string length over 50 count' do
      let(:event) { Event.new(name: 'a' * 51) }
      it 'valid' do
        event.valid?
        expect(event.errors[:name]).to be_present
      end
    end
  end
end
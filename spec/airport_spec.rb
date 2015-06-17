require 'airport'

## Note these are just some guidelines!
## Feel free to write more tests!!

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport
# and how that is implemented.
#
# If the airport is full then no planes can land

describe Airport do
  # subject { Airport.new double :weatherman, stormy?: true, sunny?: true }
  let(:plane) { double :plane, land: nil, take_off: nil }

  describe 'take off' do
    before { subject.land plane }
    it 'instructs a plane to take off' do
      expect(plane).to receive(:take_off)
      subject.take_off
    end

    it 'releases a plane' do
      subject.take_off
      expect(subject).to be_empty
    end
  end

  describe 'landing' do
    it 'instructs a plane to land' do
      #plane = double :plane
      expect(subject).to respond_to(:land).with(1).argument
    end

    it 'receives a plane' do
    end
  end


  describe 'traffic control' do
    context 'when airport is full' do
      it 'does not allow a plane to land' do
        subject.capacity.times { subject.land double :plane, land: nil }
        expect { subject.land double :plane, land: nil }.to raise_error "Airport full"
      end
    end

    # Include a weather condition.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy,
    # the plane can not take off and must remain in the airport.
    #
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'when weather conditions are stormy' do
      xit 'does not allow a plane to take off'

      xit 'does not allow a plane to land'
    end
  end
end

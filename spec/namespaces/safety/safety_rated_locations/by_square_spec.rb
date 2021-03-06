# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Amadeus::Namespaces::Safety::SafetyRatedLocations::BySquare do
  before do
    @client = double('Amadeus::Client')
    @api = Amadeus::Namespaces::Safety::SafetyRatedLocations::BySquare.new(@client)
  end

  describe '.get' do
    it 'should call client.get with the right params' do
      params = { north: '123', west: '234', south: '567', east: '890' }

      expect(@client).to receive(:get).with(
        '/v1/safety/safety-rated-locations/by-square', params
      )

      @api.get(params)
    end

    it 'should default to an empty hash' do
      expect(@client).to receive(:get).with(
        '/v1/safety/safety-rated-locations/by-square', {}
      )

      @api.get
    end
  end
end

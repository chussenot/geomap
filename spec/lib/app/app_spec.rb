# encoding: utf-8
require 'spec_helper'

describe GeoMap::App do
  let(:browser){Rack::Test::Session.new(Rack::MockSession.new(described_class))}

  describe 'views' do
    it 'root page should show a #map id' do
      browser.get('/')
      browser.last_response.body.should have_selector('#map')
    end
  end

  it 'GET /api/tests/fruits' do
    browser.get '/api/tests/fruits'
    browser.last_response.status.should == 200
    should_200(['apple','banana','pear'])
  end

  it 'GET /api/tests/point' do
    browser.get '/api/tests/point'
    browser.last_response.status.should == 200
  end
end
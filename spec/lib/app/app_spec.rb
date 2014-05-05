# encoding: utf-8
require 'spec_helper'

describe GeoMap::App do
  let(:browser){Rack::Test::Session.new(Rack::MockSession.new(described_class))}

  describe "views" do
    it " root page should show a #map id" do
      browser.get("/")
      browser.last_response.body.should have_selector("#map")
    end
  end
end
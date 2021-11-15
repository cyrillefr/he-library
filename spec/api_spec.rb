# frozen_string_literal: true

require 'rack/test'
require 'spec_helper'
require_relative '../api'

RSpec.describe 'My simple API' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  context 'when at the root' do
    before do
      get '/'
    end

    it 'returns 200 HTTP code' do
      expect(last_response.status).to eq(200)
    end

    it 'returns an empty Hash' do
      expect(last_response.body).to eq('{}')
    end
  end

  context 'when ask for a title' do
    before do
      get '/1'
    end

    it 'returns id of the title' do
      json = JSON.parse last_response.body
      expect(json['id']).to eq '1'
    end
  end
end

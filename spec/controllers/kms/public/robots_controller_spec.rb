require 'spec_helper'

module Kms
  module Public
    describe RobotsController, type: :controller do
      describe '#show' do
        before do
          Kms::Settings.instance.update(values: {robots: 'User-agent: *'})
        end
        it 'renders content of robots.txt setting' do
          get :show
          expect(response.body).to eql(Kms::Settings.instance.values['robots'])
        end
        it 'responds with http 200 status' do
          get :show
          expect(response).to be_success
        end
      end

    end
  end
end

require 'spec_helper'

module Kms
  describe SettingsService, type: :service do
    it "should register SEO settings templates" do
      expect(Kms::SettingsService.templates[Kms::Seo::Engine]).to include 'settings/robots.html'
    end

  end
end

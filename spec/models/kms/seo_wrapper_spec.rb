require 'spec_helper'

module Kms
  describe SeoWrapper do
    let(:page) { FactoryGirl.create(:page) }
    subject { Kms::SeoWrapper.new(page) }
    describe '#title' do
      it "should return seo_title of wrapped object" do
        expect(subject.title).to eql(page.seo_title)
      end
    end
    describe '#keywords' do
      it "should return seo_keywords of wrapped object" do
        expect(subject.keywords).to eql(page.seo_keywords)
      end
    end
    describe '#description' do
      it "should return seo_description of wrapped object" do
        expect(subject.description).to eql(page.seo_description)
      end
    end
    describe '#h1' do
      it "should return seo_h1 of wrapped object" do
        expect(subject.h1).to eql(page.seo_h1)
      end
    end

  end
end

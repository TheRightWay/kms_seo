require 'spec_helper'

module Kms
  describe SeoWrapperDrop do
    let!(:page) { FactoryGirl.create(:page) }

    let(:request) { ActionController::TestRequest.new({host:  'example.com', "rack.input" => "wtf"}, ActionController::TestRequest.new_session) }
    let(:controller) do
      controller = Kms::Public::PagesController.new
      controller.request = request
      controller
    end

    it 'should be registered as "seo" in ExternalsRegistry' do
      expect(Kms::ExternalsRegistry.externals[:seo]).to be_instance_of(Proc)
    end

    it 'should return a "drop" of Kms::SeoWrapper' do
      expect(Kms::ExternalsRegistry.externals[:seo].call(request, controller)).to be_instance_of(described_class)
    end

    it 'should respond_to/export "title" attribute' do
      seo_wrapper_drop = Kms::ExternalsRegistry.externals[:seo].call(request, controller)
      expect(seo_wrapper_drop).to respond_to(:title)
    end

    it 'should respond_to/export "keywords" attribute' do
      seo_wrapper_drop = Kms::ExternalsRegistry.externals[:seo].call(request, controller)
      expect(seo_wrapper_drop).to respond_to(:keywords)
    end

    it 'should respond_to/export "description" attribute' do
      seo_wrapper_drop = Kms::ExternalsRegistry.externals[:seo].call(request, controller)
      expect(seo_wrapper_drop).to respond_to(:description)
    end

    it 'should respond_to/export "h1" attribute' do
      seo_wrapper_drop = Kms::ExternalsRegistry.externals[:seo].call(request, controller)
      expect(seo_wrapper_drop).to respond_to(:h1)
    end

  end
end

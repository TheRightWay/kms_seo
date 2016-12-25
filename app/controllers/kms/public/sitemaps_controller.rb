module Kms
  module Public
    class SitemapsController < ActionController::Base
      respond_to :xml
      helper_method :site_url, :public_page_url

      def show
        @pages = Kms::Page.published
        respond_with @pages
      end

      def site_url
        'http://' + request.host_with_port
      end

      def public_page_url(page)
        File.join(site_url, page.respond_to?(:permalink) ? page.permalink : page.fullpath)
      end
    end
  end
end

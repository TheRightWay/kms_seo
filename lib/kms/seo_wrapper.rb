# SEO Wrapper for page or entry
module Kms
  class SeoWrapper
    include Liquor::Dropable

    def initialize(seo_context)
      @seo_context = seo_context
    end

    def title
      return nil unless @seo_context.respond_to?(:seo_title)
      @seo_context.seo_title
    end

    def keywords
      return nil unless @seo_context.respond_to?(:seo_keywords)
      @seo_context.seo_keywords
    end

    def description
      return nil unless @seo_context.respond_to?(:seo_description)
      @seo_context.seo_description
    end
  end
end

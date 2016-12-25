Kms::ExternalsRegistry.register(:seo) do |request, controller|
  page = Kms::ExternalsRegistry.externals[:page].call(request, controller)
  return nil unless page
  if page.source.templatable?
    item = page.source.fetch_item!(File.basename(request.params[:path]))
    Kms::SeoWrapper.new(item).to_drop
  else
    Kms::SeoWrapper.new(page.source).to_drop
  end
end

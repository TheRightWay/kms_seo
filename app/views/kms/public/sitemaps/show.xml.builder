xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc site_url
    xml.priority 1.0
  end

  @pages.each do |page|
    unless page.index?
      if page.templatable?
        page.fetch_items.each do |c|
          if c.slug.present?
            xml.url do
              xml.loc public_page_url(c)
              xml.lastmod c.updated_at.to_date.to_s('%Y-%m-%d')
              xml.priority 0.9
            end
          end
        end
      else
        xml.url do
          xml.loc public_page_url(page)
          xml.lastmod page.updated_at.to_date.to_s('%Y-%m-%d')
          xml.priority 0.9
        end
      end
    end
  end

end

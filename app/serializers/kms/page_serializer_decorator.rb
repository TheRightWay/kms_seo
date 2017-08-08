Kms::PageSerializer.class_eval do
  attributes :id, :title, :slug, :template_id, :parent_id, :content,
    :published, :hidden, :templatable, :templatable_type, :seo_title, :seo_keywords, :seo_description, :seo_h1
end

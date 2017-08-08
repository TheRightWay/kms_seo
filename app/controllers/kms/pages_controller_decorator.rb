Kms::PagesController.class_eval do
  wrap_parameters :page, include: [:title, :slug, :content, :published, :template_id, :templatable,:templatable_type,:position,:hidden, :parent_id, :seo_title, :seo_keywords, :seo_description, :seo_h1]

  protected

  def page_params
    params.require(:page).permit(
      :title, :slug, :content,
      :published, :hidden, :template_id, :parent_id,
      :position, :templatable, :templatable_type,
      :seo_title, :seo_keywords, :seo_description, :seo_h1
    )
  end
end

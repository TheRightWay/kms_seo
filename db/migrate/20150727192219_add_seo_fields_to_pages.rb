class AddSeoFieldsToPages < ActiveRecord::Migration
  def change
    add_column :kms_pages, :seo_title, :string
    add_column :kms_pages, :seo_keywords, :string
    add_column :kms_pages, :seo_description, :string
  end
end

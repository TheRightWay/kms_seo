class AddSeoH1ToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :kms_pages, :seo_h1, :string
  end
end

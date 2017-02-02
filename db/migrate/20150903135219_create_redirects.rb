class CreateRedirects < ActiveRecord::Migration[4.2]
  def change
    create_table :kms_redirects do |t|
      t.string :source
      t.string :destination

      t.timestamps
    end
  end
end

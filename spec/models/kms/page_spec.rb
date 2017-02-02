require 'spec_helper'

module Kms
  describe Page, type: :model do
    it { should have_db_column(:seo_title) }
    it { should have_db_column(:seo_keywords) }
    it { should have_db_column(:seo_description) }
    it { should have_db_column(:seo_h1) }

  end
end

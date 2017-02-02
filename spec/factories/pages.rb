FactoryGirl.define do
  factory :page, class: 'Kms::Page' do
    title "Home"
    slug 'index'
    published true
    seo_title 'Home'
    seo_keywords 'home, page'
    seo_description 'Home Page'
    seo_h1 'Home Page'
  end
end

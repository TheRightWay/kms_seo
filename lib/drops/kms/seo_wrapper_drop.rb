module Kms
  class SeoWrapperDrop < Liquor::Drop
    attributes :title, :keywords, :description, :h1
  end
end

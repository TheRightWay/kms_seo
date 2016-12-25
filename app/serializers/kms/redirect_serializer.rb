module Kms
  class RedirectSerializer < ActiveModel::Serializer
    attributes :id, :source, :destination
  end
end

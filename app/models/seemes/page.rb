module Seemes
  class Page
    include Mongoid::Document

    field :title, type: String
    
  end
end

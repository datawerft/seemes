module Seemes
  class Page
    include Mongoid::Document
    include Mongoid::Timestamps

    field :human_id,  type: String
    field :title,     type: String
    field :content,   type: String
    
    

  end
end

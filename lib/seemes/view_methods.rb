# coding: utf-8

module Seemes::ViewMethods
  
  def seemes_snippet(identifier)
    return '' if not snippet = Seemes::Snippet.where(human_id: identifier).first

    render :inline => snippet.content
  end

end

ActionView::Base.send :include, Seemes::ViewMethods

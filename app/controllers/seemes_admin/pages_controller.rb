class SeemesAdmin::PagesController < SeemesAdmin::BaseController

  layout 'admin'

  def index

  end

  def new
    @page = Seemes::Page.new
    @page.title = 'hello World'

    #@page.save

  end

end
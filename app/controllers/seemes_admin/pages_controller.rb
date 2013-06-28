class SeemesAdmin::PagesController < SeemesAdmin::BaseController

  layout Seemes.config.admin_layout

  before_filter :all_pages, :only => [:index, :edit]

  def index
  end

  def new
    @page = Seemes::Page.new
  end

  def create

  end

  def edit
    @page = Seemes::Page.find(params[:id])

  end

  def update

  end

  protected

  def all_pages
    @seemes_pages = Seemes::Page.asc(:title)
  end

end
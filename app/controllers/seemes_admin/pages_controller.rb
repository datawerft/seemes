class SeemesAdmin::PagesController < SeemesAdmin::BaseController

  layout Seemes.config.admin_layout

  before_filter :all_pages, :only => [:index, :new, :edit]

  def index
  end

  def new
    @page = Seemes::Page.new
  end

  def create
    @page = Seemes::Page.new(params[:page])

    if @page.save!
      redirect_to seemes_admin_pages_path
    else
      render :new
    end
  end

  def edit
    @page = Seemes::Page.find(params[:id])

  end

  def update
    @page = Seemes::Page.find(params[:id])

    if @page.update_attributes(params[:page])
      redirect_to seemes_admin_pages_path
    else
      render :edit
    end
  end

  protected

  def all_pages
    @seemes_pages = Seemes::Page.asc(:title)
  end

end
class SeemesAdmin::SnippetsController < SeemesAdmin::BaseController

  layout Seemes.config.admin_layout

  before_filter :all_snippets, :only => [:index, :new, :edit]

  def index
  end

  def new
    @snippet = Seemes::Snippet.new
  end

  def create
    @snippet = Seemes::Snippet.new(params[:snippet])

    if @snippet.save!
      redirect_to seemes_admin_snippets_path
    else
      render :new
    end
  end

  def edit
    @snippet = Seemes::Snippet.find(params[:id])

  end

  def update
    @snippet = Seemes::Snippet.find(params[:id])

    if @snippet.update_attributes(params[:snippet])
      redirect_to seemes_admin_snippets_path
    else
      render :edit
    end
  end

  protected

  def all_snippets
    @seemes_snippets = Seemes::Snippet.asc(:title)
  end

end
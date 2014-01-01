class Admin::TermsController < ApplicationController

  def index
    @terms = Term.all
  end

  def create
    @term = Term.new(term_params)

    if @term.save
      redirect_to admin_terms_path
    else
      render 'new'
    end
  end

  def new
    @term = Term.new
  end

  def edit
    @term = Term.find(params[:id])
  end

  def show
    @term = Term.find(params[:id])
  end

  def update
    @term = Term.find(params[:id])

    if @term.update(params[:term].permit(:season, :year))
      redirect_to admin_terms_path
    else
      render 'edit'
    end
  end

  def destroy
    @term = Term.find(params[:id])
    
    @term.destroy
    redirect_to admin_terms_path
  end

  private
    def term_params
      params.require(:term).permit(:season, :year)
    end

end

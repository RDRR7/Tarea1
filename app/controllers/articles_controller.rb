class ArticlesController < ApplicationController
	def index
		@articles=Article.all
	end

	def create
		@article=Article.create(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def new
		@user_id=params[:user_id]
		@article=Article.new
	end

	def show
		@article=Article.find(params[:id])
	end

	def edit
		@article=Article.find(params[:id])
	end

	def update
	    @article=Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		Article.find(params[:id]).destroy
	    redirect_to articles_url
  	end

	private 
		def article_params
			params.require(:article).permit(:title, :content, :user_id)
		end
end

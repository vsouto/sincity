class PostsController < ApplicationController
  def index
		@Posts = Post.all
	end
	
	def new
	  @Post = Post.new
	end

	def edit
	  @Post = Post.find(params[:id])
	end

	def create
	  @Post = Post.new(params.require(:Post).permit(:title, :text))
	 
	  if @Post.save
		redirect_to @Post
	  else
		render 'new'
	  end
	end
	
	def update
	  @Post = Post.find(params[:id])
	 
	  if @Post.update(Post_params)
		redirect_to @Post
	  else
		render 'edit'
	  end
	end
	
	def show
		@Post = Post.find(params[:id])
	end
	
	def destroy
	  @Post = Post.find(params[:id])
	  @Post.destroy
	 
	  redirect_to Posts_path
	end

	private
	  def post_params
		params.require(:Post).permit(:title, :text)
	  end
end

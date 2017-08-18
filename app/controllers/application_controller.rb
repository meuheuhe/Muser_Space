class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :content, :email, :password])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :content, :email, :password, :current_password])
    end
    
    
    
    
    #search
    # def index
    # @post = Post.all
    # @cover = Cover.all
    # @show = Show.all
    
    # if params[:query].nil?
    #   @posts = Post.all
    #   @books = Book.all
    # else
    #   @post = Post.where("title LIKE ?", "%#{params[:query]}%")
    # end
    #   end

end

class Site::BooksController < ApplicationController
	layout 'sites'
	def show
		@book = Book.find(params[:id])
		@pictures = @book.pictures
	end
	def index
		@user = User.find_by(subdomain: request.subdomain)
		@books = @user.books
	end
end
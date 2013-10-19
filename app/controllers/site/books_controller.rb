class Site::BooksController < ApplicationController
	layout 'sites'
	def show
		@user = User.find_by(subdomain: request.subdomain)
		@book = Book.find(params[:id])
		@pictures = @book.pictures
	end
	def index
		@user = User.find_by(subdomain: request.subdomain)
		@books = @user.books
	end
end
class AccountsController < ApplicationController

	def index
		@accounts = Customer.premier.all
	end

	def show
		@account = Account.find(params[:id])
	end

end

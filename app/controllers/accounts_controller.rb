class AccountsController < ApplicationController

	def index
		@accounts = Customer.premier.last(20)
	end

	def show
		@account = Account.find(params[:id])
	end

end

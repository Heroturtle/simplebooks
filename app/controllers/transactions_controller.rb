class TransactionsController < ApplicationController

	def index
		@transactions = Transaction.where(:transaction_type => params[:type])
	end

	def show
	end

	def new
	end

	def create
	end





end
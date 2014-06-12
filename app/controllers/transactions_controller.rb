class TransactionsController < ApplicationController

	before_action :set_transaction_type

	def index
		@transactions = transaction_type_class.all
	end

	def show
	end

	def new
	end

	def create
	end

private

	def set_transaction_type
       @transaction = transaction_type
    end

    def transaction_type 
        Transaction.transaction_type.include?(params[:type]) ? params[:type] : "Transaction"
    end

    def transaction_type_class 
        Transaction.constantize 
    end



end
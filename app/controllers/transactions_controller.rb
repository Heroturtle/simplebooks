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

def transaction_type_method
    Transaction.all.pluck(:transaction_type).uniq.include?(params[:type]) ? params[:type] : "Transaction"
end

def set_transaction_type
    @transaction_type = transaction_type_method
 end

def transaction_type_class
    transaction_type_method.constantize
 end



end
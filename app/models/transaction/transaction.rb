class Transaction < ActiveRecord::Base
	self.inheritance_column = :transaction_type
end

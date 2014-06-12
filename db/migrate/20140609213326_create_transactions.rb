class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
    	t.integer 	:contact_id
    	t.string	:reference
    	t.integer	:category_id
    	t.date		:transaction_date
    	t.integer	:amount
    	t.integer	:paymentaccount_id
    	t.date  	:payment_date
    	t.text		:comment
    	t.string	:transaction_type
    	t.integer	:user_id
    	t.timestamps
    end
  end
end

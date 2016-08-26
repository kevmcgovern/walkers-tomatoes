class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
    	t.references :review
      t.timestamps
    end
  end
end

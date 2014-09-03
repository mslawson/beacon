class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.datetime :invoice_date
      t.string :file_num
      t.string :job_name
      t.string :job_loc

      t.timestamps
    end
  end
end

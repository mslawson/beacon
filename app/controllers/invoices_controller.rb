class InvoicesController < ApplicationController
  def index
  	@invoices = Invoice.all
  end

  def new
  end

  def show
  	@invoice = Invoice.find(params[:id])
  end

  def create
  	@invoice = Invoice.new(invoice_params)
  	
  	@invoice.save
  	redirect_to @invoice
  end

  def destroy
  	@invoice = Invoice.find(params[:id])
  	@invoice.destroy

  	redirect_to invoices_path
  end

  private
  def invoice_params
    params.require(:invoice).permit(:invoice_date, :file_num, :job_name, :job_loc)
  end


end

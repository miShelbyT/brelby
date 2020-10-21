class CustomersController < ApplicationController
	before_action :find_customer, only: [:show, :edit, :update]
	
	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create(customer_params)
		if @customer.valid?
			flash[:success] = "Welcome to Brelby's!"
		redirect_to customer_path(@customer)
		else
			flash[:errors] = @customer.errors.full_messages
			redirect_to new_customer_path			
		end
	end

	def edit
	end

	def update
		if @customer.update(customer_params)
		redirect_to customer_path(@customer)
		else
			flash[:errors] = @customer.errors.full_messages
			redirect_to edit_customer_path(@customer)
		end
	end

	def show
	end

	# def destroy
	# 	@customer.destroy
	# 	redirect_to customers_path
	# end

	

	private

	def customer_params
		params.require(:customer).permit(:name, :age, :email)
	end

	def find_customer
		@customer = Customer.find(params[:id])
	end

end

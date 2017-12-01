class ContactsController < ApplicationController
	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)

		if @contact.save
			redirect_to root_url
		else
			redirect_to contact_us_path
		end
	end


	private
		def contact_params
			params.require(:contact).permit(:firstname, :lastname, :email, 
				:phonenumber, :company, :company_type, :description)
		end
end
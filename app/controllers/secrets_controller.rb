class SecretsController < ApplicationController
	def index
		@secrets = Secret.all.includes(:users)
		@user = current_user
	end

	def create

		secret = Secret.create(
			secret_params.merge({
				user: current_user
				})
			)
		redirect_to '/secrets'
	end

	def destroy
	secret = Secret.find(params[:id])
	secret.destroy
	redirect_to "/secrets"
	end
	
	private
		def secret_params
			params.require(:secret).permit(:content)
			
		end

end


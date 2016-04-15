class Contacto < ApplicationMailer
	
	def micorreo(params)
		puts "envio micorreo" 

	  	enviar_correo(params,"irene.morenocano@gmail.com","Nuevo mensaje")

	end

	def enviar(params)
		puts 'envio enviar'

	  	enviar_correo(params, params[:email], "Gracias por contactar con irene moreno")

	end

	private

	  	def enviar_correo(params,email,asunto)

	  		puts'enviar_correo'
	  		
	  		@nombre = params[:nombre]
	  		@email = params[:email]
	  		@asunto = params[:asunto]
	  		@mensaje = params[:mensaje]

	  		mail:to => email, :subject => asunto
	  	end	

end 

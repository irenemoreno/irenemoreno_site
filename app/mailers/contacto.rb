class Contacto < ApplicationMailer


	
	def micorreo(params) 

	  	enviar_correo(params,"irene.morenocano@gmail.com","Nuevo mensaje desde la App irenemoreno.io")

	end

	def enviar(params)

	  	enviar_correo(params, params[:email], "Gracias por contactar con irenemoreno.io")

	end

	def enviar_correo(params,email,asunto)
	  		
	  	@nombre = params[:nombre]
	  	@email = params[:email]
	  	@asunto = params[:asunto]
	  	@mensaje = params[:mensaje]

	  	mail:to => email, :subject => asunto
	  	
	  	
	end	

end 

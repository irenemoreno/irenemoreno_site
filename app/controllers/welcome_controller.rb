class WelcomeController < ApplicationController
  def index
  end

  def blog
  end

  def contacto

    Email.enviar_correo(params).deliver_now
    Email.enviar(params).deliver_now

  	if request.post?

  		

		  	if Email.micorreo(params).deliver and Email.enviar(params).deliver
		  		flash.now[:noticia] = "Enviado correctamente"
        else
          flash.now[:error] = "Correo no enviado"
		  	end
			   
		
	end
  end
end

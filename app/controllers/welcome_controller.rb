class WelcomeController < ApplicationController
  def index
  end

  def blog
  end

  def contacto

  	if request.post?

		  	if Contacto.micorreo(params).deliver and Contacto.enviar(params).deliver
		  		flash.now[:noticia] = "Enviado correctamente"
        else
          flash.now[:error] = "Correo no enviado"
		  	end
			   
		
	end
  end
end

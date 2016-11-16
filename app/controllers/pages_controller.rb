class PagesController < ApplicationController

  def index
  	render('wtf')
  end

  def hello

  	@mano = '567'
  	@blado = params['blado']

  	render('wtf')
  end

end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Libros recomendados: American Gods (Cómo dioses Nórdicos viven hoy en día pero olvidados.)"
  end
end

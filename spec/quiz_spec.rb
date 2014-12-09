require 'spec_helper'
require 'practica11'


describe Quiz do
  before :each do
  
	  @quiz = Quiz.new("Cuestionario de PFS 10/12/2011") do
	question '¿En que año Cristobal Colón descubrió América?',2,
	wrong =>'1942',
	right =>'1492',
	wrong =>'1808',
	wrong =>'1914'

	a = rand(10)
	b = rand(10)
	question "#{a}+#{b} = ", 3,
	wrong =>"44",
	wrong =>"#{a + b + 2}",
	right =>"#{a + b}",
	wrong =>"#{a + b - 2}"
	
	question "¿En qué mes se ratificó la Constitución Española de 1978?", 1,
	right => "Diciembre",
	wrong => "Julio",
	wrong => "Agosto",
	wrong => "Febrero"

	question "¿Año de presentaión del lenguaje Ruby?", 4,
	wrong => "1991",
	wrong => "1992",
	wrong => "1993", 
	right => "1995"

	end
  end
  
  describe "#Cuestionario de preguntas" do
  
  	it ":Constructor Quiz" do
  		expect(@quiz.class).to eq(Quiz)
  	end
  	
  	it ":Todas las respuestas son correctas" do
  	  
  	  	expect(@quiz.run).to eq(4)
  	
  	end
  	
  	it ":Respuestas de las preguntas" do
  	
  		expect(@quiz.question).to eq(4)
  	
  	end
  	
  	
  end
  
  
end

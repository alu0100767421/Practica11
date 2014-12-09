
class Answer 
attr_accessor :kind, :order, :answer

	def initialize(order, kind, answer)
		@kind=kind
		@order=order
		@answer=answer	
	end

	def to_s
		"#{@order}- #{@answer}"
	end
	
	def is_right?
	    if @kind == Quiz::RIGHT  
	     true 
	    end
	end
	
	def <=>(other)
	 @order <=> other.order
	end
end


class Question 

include Comparable
include Enumerable



attr_accessor :pregunta, :respuestas, :respuesta_usuario

	def initialize(pregunta, respuesta_usuario,respuestas)
		@pregunta=pregunta
		@respuesta_usuario=respuesta_usuario
		@respuestas=respuestas.map{|x,y| Answer.new(x[0], x[1], y)}.sort
	end
	

	def to_s
	output = <<"FINFUNCION"
#{@pregunta}

#{
   out = ""
    @respuestas.each do |answer|
      out << "#{answer}\n"
    end
    out


}
FINFUNCION
	end
	
	
	def ask
	 begin
	   puts self
	   print "Su respuesta: "
	   r = @respuesta_usuario.to_i - 1
	   puts " #{r + 1}"
	   
	 end while (r < 0 or r >=@respuestas.length)
	 @respuestas[r].is_right?
	
	end
	



end




class Quiz


RIGHT = :right
WRONG = :wrong

attr_accessor :nombre_examen, :preguntas
	
	def initialize(nombre_examen = "", &pregunta) 		
		@nombre_examen=nombre_examen
		@preguntas = []
		
		@counter=0
	
		instance_eval &pregunta

	end
	
	def question (pregunta, respuesta_usuario,respuesta)
	  a = Question.new(pregunta, respuesta_usuario ,respuesta)
	  
	  preguntas << a
	  @counter = 0 
	  
	  return respuesta_usuario
	
	end
	

	def to_s
	
		out = <<"EOQUIZ"
		#{@nombre_examen}
		#{@preguntas.join("\n")}
		
EOQUIZ

	end
	
	def wrong
		@counter += 1
		[@counter, WRONG]
	end
	
	def right
		@counter += 1
		[@counter, RIGHT]
	end

	def run
	  counter=0
	  
	  puts "#{@nombre_examen}\n\n"
	  @preguntas.each { |q| counter += 1 if q.ask }
	  puts "#{counter} respuestas correctas de  #{@preguntas.size}"
	  
	  return counter
	
	end
	
	
end







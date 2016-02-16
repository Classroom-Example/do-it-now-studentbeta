require "./gcd.rb"
class Fraccion
	
	include Comparable

	attr_reader :n, :d
	def initialize(n,d)
		@n=n
		@d=d
	end
	
	def to_s	
		"#{@n}/#{@d}"
	end

	
	def min
		aux = gcd(@n, @d)

		@n = @n/aux
		@d = @d/aux

		if gcd(@n, @d) > 1
			self.min
		end	
	end
	
	def getn
		return @n
	end

	def getd
		return @d
	end

	def to_f
		puts "Flotante: #{@n.to_f}/#{@d.to_f}"
		"#{@n.to_f/@d.to_f}"
		
	end

	def abs
		n = @n
		d = @d

		if @n < 0
			n = -@n
		end

		if @d < 0
			d = -@d
		end

		Fraccion.new(n, d)
	end

	def reciprocal
		Fraccion.new(@d,@n)	
	end

	def opuesto
		Fraccion.new(-@n, @d)
	end
	
	def + (other)
		n=(@n*other.d)+(@d*other.n)
		d=(@d*other.d)
		
		f4=Fraccion.new(n,d)		
		f4.min
		##"#{f4.n}/#{f4.d}"
		return f4
	end

	def - (other)
		n=(@n*other.d)-(@d*other.n)
		d=(@d*other.d)
		
		f4=Fraccion.new(n,d)		
		f4.min
		"#{f4.n}/#{f4.d}"
	end
	def * (other)
		n=@n*other.n
		d=@d*other.d
		
		f4=Fraccion.new(n,d)		
		f4.min
		"#{f4.n}/#{f4.d}"
	end
	def / (other)
		n=@n*other.d
		d=@d*other.n
		
		f4=Fraccion.new(n,d)		
		f4.min
		"#{f4.n}/#{f4.d}"
	end
	
	def %(other)
		a = @n*other.getd()
		b = @d*other.getn()
		c = Fraccion.new(a, b)
		
		d = c.getn()%c.getd()
		return d
	end


	def <=>(other)
		self.to_f<=>other.to_f
	end
=begin
	def <(other)
		a=@n.to_f/@d.to_f
		b=other.n.to_f/other.d.to_f
		
		if a < b
			return true
		else
			return false
		end
	end
	
	def >(other)
		a=@n.to_f/@d.to_f
		b=other.n.to_f/other.d.to_f
		
		if a > b
			return true
		else
			return false
		end
	end

	def <=(other)
		a=@n.to_f/@d.to_f
		b=other.n.to_f/other.d.to_f
		
		if a <= b
			return true
		else
			return false
		end
	end

	
	def >=(other)
		a=@n.to_f/@d.to_f
		b=other.n.to_f/other.d.to_f
		
		if a >= b
			return true
		else
			return false
		end
	end
=end
	def mulabs (other)
		
		f5=Fraccion.new(0,0)
		
		f4=Fraccion.new(n=@n*other.n,d=@d*other.d)
		f5=f4.abs	
		"#{f5.n}/#{f5.d}"
	end
	
	
end
=begin f1=Fraccion.new(8,6)
puts "#{f1}"
f1.min
puts "#{f1}"
=end

require "./lib/Fraccion.rb"

describe Fraccion do
	before :each do
		@f=Fraccion.new(2,4)
	end

describe "Control de almacenamiento de variables" do
	it "Guardado del numerador" do
		@f.n.should eq(2)
	end
	
	it "Guardado del denominador" do
		@f.d.should eq(4)
	end
end

describe "Comprobando que se llega a la forma reducida" do
		it "Forma reducida de la fraccion" do
		@f.min
		@f.to_s.should eq("1/2")
	end
end


describe " Devolviendo numerador y denominador" do
		it "Se devuelve el numerador" do
		@f.getn().should eq(2)
		end
		it "Se devuelve el denominador" do
		@f.getd().should eq(4)
		end
	end

describe " Mostrando por la consola la fraccion normal y flotante" do
		it "Se comprueba si se muestra por pantalla de forma normal" do
		@f.to_s.should eq("2/4")
		end
		it "Se comprueba si se muestra por pantalla de forma flotante" do
		@f.to_f.should eq("0.5")
		end
	end


describe " igualdad" do
	it "comprobando" do
	f1 = Fraccion.new(3, 7)
		@f.==(f1).should eq(false)
		
	end
end

describe "absoluto" do
	it "comprobando valor absoluto mediante abs " do

		f2 = Fraccion.new(-9,3)
		f2.abs.to_s.should eq("9/3")
	end
end

describe "reciproco" do
	it "comprobando reciprocidad con el metodo reciprocal" do
		@f.reciprocal.to_s.should eq("4/2")
	end
end

describe "opuesto" do
	it "opuesto reci" do
		@f.opuesto.to_s.should eq("-2/4")
	end
end

describe "Comprobando suma entre dos fracciones" do
		it "Comprobando suma" do
		f3 = Fraccion.new(4,2)
		
		@f.+(f3).to_s.should eq("5/2")
		end
	
end	

describe "Comprobando resta entre dos fracciones" do
		it "Comprobando resta" do
		f3 = Fraccion.new(4,2)
		
		@f.-(f3).to_s.should eq("-3/2")
		end	
end	

describe "Comprobando mul entre dos fracciones" do
		it "Comprobando mul" do
		f3 = Fraccion.new(4,2)
		
		@f.*(f3).to_s.should eq("1/1")
		end	
end	

describe "Comprobando div entre dos fracciones" do
		it "Comprobando div" do
		f3 = Fraccion.new(4,2)
		
		@f./(f3).to_s.should eq("1/4")
		end	
end

describe "Comprobando el resto de la division entre dos fracciones" do
		it "Comprobando el resto" do

		f4 = Fraccion.new(5,2)
		@f.%(f4).should eq(4)
		end
	end
describe "menor que" do
	it "comprobar menor que" do
		f5= Fraccion.new(3,4)
		@f.<(f5).should eq(true)
	end
end

describe "mayor que" do
	it "comprobar menor que" do
		f5= Fraccion.new(3,4)
		@f.>(f5).should eq(false)
	end
end
describe "menor igual que" do
	it "comprobar menor igual que" do
		f5= Fraccion.new(2,4)
		@f.<=(f5).should eq(true)
	end
end
describe "mayor o igual que" do
	it "comprobar menor que" do
		f5= Fraccion.new(2,4)
		@f.>=(f5).should eq(true)
	end
end

	it "comprobar between" do
		f6=Fraccion.new(4,4)
		f7=Fraccion.new(3,4)
		f7.between?(@f,f6).should eq(true)
	end
		
describe "Comprobando multiplicacion con resultado en valor absoluto" do
	it "comprobar la multiplicacion con el valor absoluto" do
		f6 = Fraccion.new(-4,2)
		
		@f.mulabs(f6).to_s.should eq("8/8")
	end
end
	

#end final
end





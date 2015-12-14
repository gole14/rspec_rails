require 'rails_helper'

describe Student do
	describe "#full_name" do
		it "returns complete name" do
			student=Student.create!( 
				first_name: "Daniel",
				last_name: "Gomez",
				birthdate: "14/07/1993",
		    	control_number:"11460266",
		    	semester: "09" )

		    expect(student.name).to eq "Daniel Gomez"
		end
	end

	describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Gomez", birthdate: "14/07/1993", control_number:"11460266", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Daniel", birthdate: "14/07/1993", control_number:"11460266", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Daniel", last_name: "Gomez", control_number:"11460266", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Daniel", last_name: "Gomez", birthdate: "14/07/1993", semester: "11")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Daniel", last_name: "Gomez", birthdate: "14/07/1993", control_number:"11460266")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end
	   
  	end
16

  		it "returns complete name" do
			student=Student.create!( 
				first_name: "Carlos",
				last_name: "Gutierrez",
				birthdate: "30/06/1984",
		    	control_number:"11460272",
		    	semester: "09" )

		    expect(student.name).to eq "Carlos Gutierrez"
		end

			describe "validations" do
	    it "fails to save" do
	    	post = Student.new
	      	post.save
	      	expect(post).to_not be_persisted
	    end

	    it "validates presence of first_name" do
	      	post = Student.new(last_name: "Gutierrez", birthdate: "30/06/1984", control_number:"11460272", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["First name can't be blank"])
	    end

	    it "validates presence of last_name" do
	      	post = Student.new(first_name: "Carlos", birthdate: "30/06/1984", control_number:"11460272", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Last name can't be blank"])
	    end

	    it "validates presence of birthdate" do
	      	post = Student.new(first_name: "Carlos", last_name: "Gutierrez", control_number:"11460272", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Birthdate can't be blank"])
	    end
	   
	    it "validates presence of control_number" do
	      	post = Student.new(first_name: "Carlos", last_name: "Gutierrez", birthdate: "30/06/1984", semester: "09")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Control number can't be blank"])
	    end

	    it "validates presence of semester" do
	      	post = Student.new(first_name: "Carlos", last_name: "Gutierrez", birthdate: "30/06/1984", control_number:"11460272")
	      	post.save
	      	expect(post.errors.full_messages).to eq(["Semester can't be blank"])
	    end
	   
  	end

end


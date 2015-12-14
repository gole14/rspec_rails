require "rails_helper"

feature "Create student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "gole1407@gmail.com"
			fill_in "Password", with: "gole14"
			fill_in "Password confirmation", with: "gole14"

		click_on "Sign up"	
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Edgar Daniel"
			fill_in "Apellidos", with: "Gomez Lomeli"
			fill_in "Número de control", with: "11460266"
			fill_in "Semestre", with: "09"
		click_on "Guardar"
		sleep 5
				expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully created."
		
	end


		scenario "unsuccessfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "gole1407@gmail.com"
			fill_in "Password", with: "gole14"
			fill_in "Password confirmation", with: "gole14"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		click_on "Guardar"
		sleep 5
			expect(current_path).to eq "/students"
			expect(page).to have_content "First name can't be blank"
    		expect(page).to have_content "Last name can't be blank"
    		expect(page).to have_content "Control number can't be blank"
    		expect(page).to have_content "Semester can't be blank"
		
	end

	scenario "First name" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "gole1407@gmail.com"
			fill_in "Password", with: "gole14"
			fill_in "Password confirmation", with: "gole14"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
			
			fill_in "Nombre(s)", with: "Carlos Alberto"
			fill_in "Apellidos", with: "Gutierrez Zurroza"
			fill_in "Número de control", with: "11460272"
			fill_in "Semestre", with: "ASD"
		
			click_on "Guardar"

			expect(current_path).to eq "/students/new"    		
		sleep 5
	end
end
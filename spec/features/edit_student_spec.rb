require "rails_helper"

feature "Edit student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "gole1407@gmail.com"
			fill_in "Password", with: "gole14"
			fill_in "Password confirmation", with: "gole14"

		click_on "Sign up"
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Edgar"
			fill_in "Apellidos", with: "Lomeli"
			fill_in "Número de control", with: "11460266"
			fill_in "Semestre", with: "09"

		click_on "Guardar"
		click_on "Editar"

			fill_in "Apellidos", with: "Gomez"
		click_on "Guardar"
		sleep 5

			expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully updated."
		
	end
end
When("Press the {string} button") do |string|
    click_on (string)
end
  
Then("show list of registered teachers") do
   path= find("table")
   nameFirst = '/html/body/strong/div/div[2]/table/tbody/tr[6]/td[1]'
   emailFirst = '/html/body/strong/div/div[2]/table/tbody/tr[6]/td[2]'
   nameSecond = '/html/body/strong/div/div[2]/table/tbody/tr[7]/td[1]'
   emailSecond = '/html/body/strong/div/div[2]/table/tbody/tr[7]/td[2]'

   expect(path.find(:xpath, nameFirst)).to have_content("Pedro Fernandez")
   expect(path.find(:xpath, emailFirst)).to have_content("antonio.jasa@outlook.com")
   expect(path.find(:xpath, nameSecond)).to have_content("Julio Gomez")
   expect(path.find(:xpath, emailSecond)).to have_content( "jasa.net15@gmail.com")

end
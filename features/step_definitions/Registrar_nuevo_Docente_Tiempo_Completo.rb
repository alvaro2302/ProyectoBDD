Given("I click on {string} and go to {string}") do |string, string2|
  click_on(string)
  click_on(string2)
end
  
When("I enter the required fields") do
  fill_in 'user[name]', :with => "Maria"
  fill_in 'user[email]', :with => "maria@mail.com"
  page.check('user_deactivated')
  select "Ingeniería de Sistemas", :from => "careers_ids"
  fill_in 'user[password]', :with => "123456"
  fill_in 'user[password_confirmation]', :with => "123456"
  find(:xpath, "/html/body/strong/div/center/form/div[5]/div[2]/a").click
end

Then("I should see a row with new Director Tiempo Completo's data like the table:") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  path= find("table")
  rowUnioque = 6
  #table.raw[0...table.raw.length].each_with_index do |row, row_index|
  #  colummn = 1 
  #  row.each_with_index do |value, index|
  #    xpathColumn ="/html/body/strong/div/div[2]/table/tbody/tr[" + rowUnioque.to_s + " ]/td["+ colummn.to_s+ "]"  
  #    if(!expect(path.find(:xpath, xpathColumn)).to have_content(value)) then 
  #      puts("no cuadra en " + path.find(:xpath, xpathColumn))
  #    else
  #      puts("value: " + value + ", ")
  #      puts("expected: " + path.find(:xpath, xpathColumn))
  #    end
  #    colummn = colummn+1 
  #  end
  #  rowUnioque = rowUnioque + 1
  #end

  click_on("Cerrar Sesión")
end
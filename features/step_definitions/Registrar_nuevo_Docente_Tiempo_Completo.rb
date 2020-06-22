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
end
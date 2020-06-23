Given("I click on {string} and go to {string}") do |string, string2|
  click_on(string)
  click_on(string2)
end
  
When("I enter the required fields") do
  fill_in 'user[name]', :with => "Maria Bermudez"
  fill_in 'user[email]', :with => "maria@mail.com"
  page.check('user_deactivated')
  select "Ingeniería de Sistemas", :from => "careers_ids"
  fill_in 'user[password]', :with => "123456"
  fill_in 'user[password_confirmation]', :with => "123456"
  click_on("Crear cuenta")
  #find(:xpath, "/html/body/strong/div/center/form/div[5]/div[2]/a").click
  
end

Then("I should see a row with new Director Tiempo Completo's data like the table:") do |table|
  table.raw[1...table.raw.length].each_with_index do |row, row_index|
    path = find("table")
    colummn =1
    row.each_with_index do |value, index|
      xpathColumn = "/html/body/strong/div/div[2]/table/tbody/tr[12]/td[" + colummn.to_s + "]"
      puts(xpathColumn)
      expect(path.find(:xpath, xpathColumn)).to have_content(value)
      colummn = colummn + 1
      puts(value)
    end
    #rowUnioque= rowUnioque+1
  end
  
  
  
  
  
  #finalRow = table.raw.length
  #path= find("table")
  #puts(finalRow.to_s)
  #table.raw[1...table.raw.length].each_with_index do |row, row_index|
    #colummn =2
    #row.each_with_index do |value, index|
    
      #xpathColumn ="/html/body/strong/div/div[3]/div/div/table/tbody/tr/td["+ colummn.to_s+ "]"  
      #xpathColumn = "/html/body/strong/div/div[2]/table/tbody/tr[11]/td[1]"
      #xpathColumn = "/html/body/strong/div/div[2]/table/tbody/tr[" + finalRow.to_s + "]/td[1]"
      #puts("/html/body/strong/div/div[2]/table/tbody/tr[" + finalRow.to_s + "]/td[1]")
      #xpathColumn = "/html/body/strong/div/div[2]/table/tbody/tr[" + finalRow.to_s + "]/td[1]"
      #puts(find(xpathColumn))
      #expect(path.find(:xpath, xpathColumn)).to have_content("Maria Bermudez")
      
      #colummn = colummn+1 
    #end
      
  #end
  
  
  
#  table.raw[1...4].each_with_index do |row, row_index|
    #tableColumn =1
#    row.each_with_index do |value, index|
#    valueAtCellXpath= "/html/body/table/tbody/tr["+ row_index.to_s+ "]/th["+ index.to_s+"]"
    #  #expect(path.find(:xpath, xpathColumn)).to have_content(value)
    #   puts(valueAtCellXpath + ", value: " + value)
    #  puts(find(:xpath, valueAtCellXpath).text)
    #  tableColumn = tableColumn+1 
    #  puts("value: " + value.to_s)
  #	puts("index: " + index.to_s)
#    end
#      rowUnioque= rowUnioque+1
  #puts("row: " + row.to_s)
  #puts("row_index: " + row_index.to_s)
#end
  
  
  
  
  
  
  
  #path= find("table")
  #rowUnioque = 6
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
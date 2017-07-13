Dado(/^que eu esteja no cadastro de empregado$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
  fill_in('txtUsername',with: 'Admin')
  fill_in('txtPassword',with: 'admin')
  click_button('Iniciar sesión') 
  click_link('PIM')
  click_link('menu_pim_viewEmployeeList')
  fill_in('empsearch_employee_name_empName',with: 'Luke')
  click_button('searchBtn') 
end

Quando(/^eu alterar os dados$/) do
  click_link('Skywalker') 
  click_button('btnSave')  
  fill_in('personal_txtLicenNo',with: '12343')
  find(:xpath,'//*[@id="frmEmpPersonalDetails"]/fieldset/ol[3]/li[1]/ul/li[1]/label').click
  select('Soltero/a', :from=>'personal_cmbMarital')
  select('Brasileño', :from=>'personal_cmbNation')
  click_button('btnSave')  
end 

Entao(/^o cadastro de empregado será alterado com sucesso$/) do
  assert_text('Guardado correctamente')
end
Dado(/^que eu acesse a página de cadastro$/) do
 	visit 'http://opensource.demo.orangehrmlive.com/'
  	fill_in('txtUsername',with: 'Admin')
  	fill_in('txtPassword',with: 'admin')
  	click_button('btnLogin') 
 	click_link('PIM')
 	click_link('menu_pim_addEmployee')
 end

Quando(/^eu inserir os dados$/) do
  fill_in('firstName',with: 'Luke')
  fill_in('lastName',with: 'Skywalker')
  fill_in('employeeId',with: '330')
  click_button('btnSave') 
 end

Entao(/^o novo empregado será cadastrado com sucesso$/) do
  click_link('PIM')
  click_link('menu_pim_viewEmployeeList')
  fill_in('empsearch_employee_name_empName',with: 'Luke')
  click_button('searchBtn') 
  sleep(5)
 end
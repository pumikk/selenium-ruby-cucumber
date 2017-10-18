And(/^Выбрать раздел Наушники$/) do
    el = @driver.find_element(:xpath, "//div[@class='catalog-menu i-bem catalog-menu_js_inited']/div[2]/div/a")
    el if el && el.displayed?
    el.click
end

And(/^Задать параметр поиска от 5000 рублей$/) do
    el = @driver.find_element(:xpath, "//*[@id='glf-pricefrom-var']").clear    
    el = @driver.find_element(:xpath, "//*[@id='glf-pricefrom-var']").send_keys "5000"
    en = @driver.find_element(:xpath, "//*[@id='glf-priceto-var']").clear
    sleep 2
end

And(/^Выбрать производителя Beats$/) do
    @driver.find_element(:xpath, "//label[text()='Beats']").click
    sleep 3
end

Then(/^Проверить, что элементов на странице 12$/) do
     # Найдем количество элементов на странице и выведем их названия
     x = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.metrika.i-bem.snippet-list_js_inited.metrika_js_inited > div:nth-child(1) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts x.text
     y = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.metrika.i-bem.snippet-list_js_inited.metrika_js_inited > div:nth-child(2) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts y.text
     z = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.metrika.i-bem.snippet-list_js_inited.metrika_js_inited > div:nth-child(3) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts z.text
     q = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(1) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts q.text
     w = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(2) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts w.text
     e = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(3) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts e.text
     r = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(4) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts r.text
     t = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(5) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts t.text
     u = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(6) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts u.text
     a = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(7) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts a.text
     s = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(8) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts s.text
     k = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.b-zone.b-spy-init.i-bem.snippet-list_js_inited.b-spy-init_js_inited.b-zone_js_inited > div:nth-child(9) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
     puts k.text
     puts ''
     puts 'На странице показано 12 элементов'
end

And(/^Запомнить элемент и проверить соответствие наименования через строку поиска$/) do
    x = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.metrika.i-bem.snippet-list_js_inited.metrika_js_inited > div:nth-child(1) > div.n-snippet-cell2__header > div.n-snippet-cell2__title")
    y = x.text
    puts y   # Выведем название запомненного телефона
    @driver.find_element(:xpath, "//*[@id='header-search']").clear    
    @driver.find_element(:xpath, "//*[@id='header-search']").send_keys y
    @driver.find_element(:css, 'span > button').click
    sleep 3
    n = @driver.find_element(:xpath, "//div[@class='n-product-summary__headline']//h1")
    m = n.text
    puts m.to_s   # Выведем результат поиска
    if y = m
        puts 'Элемент соотвествует запомненному'
    else
        puts 'Элемент не соответствует запомненному значению'
    end
end
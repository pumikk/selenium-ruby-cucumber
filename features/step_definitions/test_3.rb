And(/^Выбрать сортировку по возрастанию цены$/) do
    el = @driver.find_element(:xpath, "//a[text()='по цене']")
    el if el && el.displayed?
    el.click
    sleep 4
end

Then(/^Проверить, что элементы отсортированы верно$/) do
    # Возьмем первые 3 элемента и сравним их по цене
    a = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.metrika.i-bem.snippet-list_js_inited.metrika_js_inited > div:nth-child(1) > div.n-snippet-cell2__body")
    x = a.text
    j = x.split(" ", 2).last.to_i        # j - Цена первого телефона (здесь из текста "от 490 р" вытаскиваем значение 490)
    puts j
    b = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.metrika.i-bem.snippet-list_js_inited.metrika_js_inited > div:nth-child(2) > div.n-snippet-cell2__body")
    c = b.text
    d = c.split(" ", 2).last.to_i        # d - Цена второго телефона
    puts d  
    n = @driver.find_element(:css, "div.n-snippet-list.n-snippet-list_type_grid.snippet-list_size_3.metrika.i-bem.snippet-list_js_inited.metrika_js_inited > div:nth-child(3) > div.n-snippet-cell2__body")
    m = n.text
    l = m.split(" ", 2).last.to_i        # l - Цена третьего телефона
    puts l  
    if j <= d && d <= l 
        puts 'Элементы отсортированы верно'
    else
        puts 'Элементы не отсортированы'
    end
end



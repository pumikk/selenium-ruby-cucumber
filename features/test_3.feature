

Feature: Test_3
Scenario: Try to search
  Given Открыть браузер, развернуть на весь экран, зайти на yandex.ru
  When Перейти в яндекс маркет
  And Выбрать раздел Электроника
  And Выбрать раздел Мобильные телефоны 
  And Выбрать сортировку по возрастанию цены
  Then Проверить, что элементы отсортированы верно
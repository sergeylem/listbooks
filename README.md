# listbooks
Задание на стажировку
CRUD (create, read, update, delete). 

Для запуска приложения можно выполнить: 

Вариант 1
mvn clean package
mvn tomcat7:run
http://localhost:8080/

Вариант 2
С помощью Intellij IDEA
Импортировать Pom.xml.
В Project Structure --> Facets --> Web --> Web Resource Directory должен быть установлен путь:
… \src\main\webapp.
Запустить через Tomcat 8 

P.S. Очень очень долго не мог перейти на версию Hibernate старше 5.2.1, все время появлялись ошибки. 
Пробывал подходы с xml и без него, но в итоге выбрал без xml с помощью файлов конфигураций. 

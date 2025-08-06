### Первый вход в GitLab через веб-интерфейс

- Перешёл в браузере по адресу:  
    `http://192.168.0.50`
    
- Установил новый пароль для пользователя `root`.
    

---

### Сброс пароля `root` (если нужно было вручную)

bash

КопироватьРедактировать

`sudo gitlab-rails console user = User.find_by_username("root") user.password = "Zahar123" user.password_confirmation = "Zahar123" user.save! user.confirm`

---

### Импорт существующего проекта из GitHub

На сервере с GitLab CE:

`git clone https://github.com/zaharchik372/flask-ci-demo.git cd flask-ci-demo`

Создал новый пустой проект в GitLab по адресу:  
`http://192.168.0.50/root/flask-ci-demo`

Добавил remote:

`git remote remove origin git remote add origin http://192.168.0.50/root/flask-ci-demo.git git push -u origin main`
На втором сервере (GitLab-Runner):
#### Установка Docker:

`sudo apt update sudo apt install -y docker.io sudo systemctl enable --now docker sudo usermod -aG docker $USER newgrp docker`

#### Установка GitLab Runner:

`curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash sudo apt install -y gitlab-runner`

---

### Регистрация раннера

На GitLab-Runner:
`sudo gitlab-runner register`

Ответы на вопросы:

- **URL:** `http://192.168.0.50`
    
- **Token:** (брал в GitLab → Project → Settings → CI/CD → Runners)
    
- **Описание:** `flask-runner-local`
    
- **Executor:** `docker`
    
- **Docker image:** `python:3.12`
    

---

### Проверка раннера

`sudo gitlab-runner list`

Убедился, что раннер активен и готов к работе.

---

### Обзор CI/CD pipeline!!!

Текущий `.github/workflows` не будет работать, так как это формат GitHub Actions.  
В GitLab CI/CD используется `.gitlab-ci.yml`, который нужно создать.
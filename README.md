## Семинар 1. Lightning.

К коду прилагается [гайд](https://cvr-dec23.pages.deepschool.ru/lectures/lightning/lightning.html) и может быть
удобнее разбирать код параллельно с гайдом.

Решение задачи мультилейбл классификации на примере определения жанра фильма по постеру.

### Датасет

Включает 7254 постеров и 25 жанров.
Скачать датасет (он окажется в папке dataset):

```bash
make download_dataset
```

### Подготовка окружения

1. Создание и активация окружения
    ```bash
    python3 -m venv venv
    . venv/bin/activate
    ```

2. Установка библиотек
   ```
    make install
   ```

3. Настройка ClearML
    - Регистрируемся в [ClearML](https://app.community.clear.ml/), если ещё нет аккаунта.
    - [в своем профиле ClearML](https://app.community.clear.ml/profile) нажимаем "Create new credentials"
    - в консоли пишем `clearml-init` и следуем инструкциям

4. Настраиваем [config.yaml](configs/config.yaml) под себя.

### Обучение

Запуск тренировки:

```bash
make train
```

### Инеренс

Посмотреть результаты работы обученной сети можно посмотреть в [тетрадке](notebooks/inference.ipynb).
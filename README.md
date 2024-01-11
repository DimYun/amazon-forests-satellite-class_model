## Домашняя работа №1

Решение задачи мультилейбл классификации на примере определения типа спутникового снимка лесов Амазонки.

### Датасет

Включает 40479 тайлов спутниковых снимков в формате `jpg` и 17 типов изображений. Более подробная информация в [тетрадке](notebooks/inference.ipynb). 

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

3. Логи в [ClearML](https://app.clear.ml/projects/ad24a8e7ed7744c8bf6216f8b8c710cf/experiments/ad36b4c4865a46bc83bc64d8d04e434c/hyper-params/hyper-param/General?columns=selected&columns=type&columns=name&columns=tags&columns=status&columns=project.name&columns=users&columns=started&columns=last_update&columns=last_iteration&columns=parent.name&order=-last_update&filter=)


4. Настраиваем [config.yaml](configs/config.yaml) под себя.


### Обучение

Запуск тренировки:

```bash
make train
```

### Инеренс

Посмотреть результаты работы обученной сети можно посмотреть в [тетрадке](notebooks/inference.ipynb).
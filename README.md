# nft

Web track for MORE.Tech 4.0

### Для запуска сервера:
1. Распаковать репозиторий в папку проектов OpenServer
2. Указать alias в настройках OpenServer, указывающий на проект с локального IPv4 адреса
3. Запустить OpenServer

### Для запуска приложения:
1. Установить Flutter SDK согласно инструкции: https://docs.flutter.dev/get-started/install
2. Открыть терминал ОС в папке проекта и ввести команду: `flutter pub get` для загрузки библиотек
3. Указать url бэкенд-сервера в файле `lib/data/repository_impl.dart` в переменной `url`
4. Для запуска ввести команду `flutter run -d chrome`

- Произведен рефакторинг кода
- Для выполнения нескольких одновременных сетевых запросов используется Combine
- В массиве остаются только уникальные факты 
- Реализовано обновление фактов и сортировка
- Код UI избавлен от лишних контейнеров 
- Добавлен индикатор загрузки
- Заметил, что при большом количестве запросов сервер перестает отправлять факты. Ошибка 429 Too Many Requests. В таком случае пользователь увидит на экране ошибку загрузки.
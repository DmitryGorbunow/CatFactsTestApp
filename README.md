- Произведен рефакторинг кода
- Для выполнения нескольких одновременных сетевых запросов используется Combine
- В массиве остаются только уникальные факты 
- Реализовано корректное обновление фактов и сортировка
- Код UI избавлен от лишних контейнеров 
- Добавлен индикатор загрузки
- При большом количестве запросов сервер перестает отправлять факты. Ошибка 429 Too Many Requests. В таком случае пользователь увидит на экране ошибку загрузки.

https://github.com/DmitryGorbunow/CatFactsTestApp/assets/84672242/909bfc97-08bd-4111-8201-3bd00075963d



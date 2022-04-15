class Survey {
  final int id;
  final int user_id;
  final String title;
  final DateTime completion_date;

  Survey({
    required this.id,
    required this.user_id,
    required this.title,
    required this.completion_date,
  });
}

List<Survey> demoSurveys = [
  Survey(
    id: 1,
    user_id: 1,
    title: "Pesquisa de Satisfação 1",
    completion_date: DateTime(2022, 04, 15, 16, 00),
  ),
  Survey(
    id: 2,
    user_id: 1,
    title: "Pesquisa de Satisfação 2",
    completion_date: DateTime(2022, 04, 16, 16, 00),
  ),
  Survey(
    id: 3,
    user_id: 1,
    title: "Pesquisa de Satisfação 3",
    completion_date: DateTime(2022, 04, 17, 16, 00),
  ),
  Survey(
    id: 4,
    user_id: 1,
    title: "Pesquisa de Satisfação 4",
    completion_date: DateTime(2022, 04, 18, 16, 00),
  ),
];
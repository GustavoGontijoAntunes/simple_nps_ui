class Survey {
  final int id;
  final int user_id;
  final String title;
  DateTime? completion_date;

  Survey({
    required this.id,
    required this.user_id,
    required this.title,
    this.completion_date,
  });
}

List<Survey> demoOngoingSurveys = [
  Survey(
    id: 1,
    user_id: 1,
    title: "Pesquisa de Satisfação 1",
  ),
  Survey(
    id: 2,
    user_id: 1,
    title: "Pesquisa de Satisfação 2",
  ),
  Survey(
    id: 5,
    user_id: 1,
    title: "Pesquisa de Satisfação 5",
  ),
  Survey(
    id: 6,
    user_id: 1,
    title: "Pesquisa de Satisfação 6",
  ),
];

List<Survey> demoFinishedSurveys = [
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
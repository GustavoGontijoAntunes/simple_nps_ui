class Answer {
  final int id;
  final int survey_id;
  final int value;
  final DateTime date;

  Answer({
    required this.id,
    required this.survey_id,
    required this.value,
    required this.date,
  });
}

List<Answer> demoAnswers = [
  Answer(
    id: 1,
    survey_id: 1,
    value: 7,
    date: DateTime(2022, 04, 15, 16, 00),
  ),
  Answer(
    id: 2,
    survey_id: 1,
    value: 4,
    date: DateTime(2022, 04, 16, 16, 00),
  ),
  Answer(
    id: 3,
    survey_id: 1,
    value: 10,
    date: DateTime(2022, 04, 17, 16, 00),
  ),
  Answer(
    id: 4,
    survey_id: 1,
    value: 9,
    date: DateTime(2022, 04, 18, 16, 00),
  ),
];
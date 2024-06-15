enum Situacao {
  EM_ANALISE(text: "Em Analise"),
  HOMOLOGADO(text: "Homologado"),
  CANCELADO(text: "Cancelada");

  final String? text;

  const Situacao({this.text});
}

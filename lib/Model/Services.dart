class Services {
  final String image, description;

  Services(this.image, this.description);
}

List<Services> services = [
  Services("assets/editar.png", "Registrar Visitante"),
  Services("assets/consulta.png", "Consultar Placa"),
  Services("assets/escanear.png", "Escanear Placa"),
  Services("assets/barrera-vial.png", "Control de acceso")
];

List<Services> servicesResidente = [
  Services("assets/editar.png", "Registrar Visitante"),
  Services("assets/barrera-vial.png", "Control de acceso")
];

class DoctorModel {
  final String nombre;
  final String posicion;
  final int revisionPromedio;
  final int totalrevisiones;
  final String perfil;
  DoctorModel({
    required this.nombre,
    required this.posicion,
    required this.revisionPromedio,
    required this.totalrevisiones,
    required this.perfil,
  });
}

final List<DoctorModel> doctoresDisponibles = [
  DoctorModel(
    nombre: "Marta najera",
    posicion: "Medico general",
    revisionPromedio: 0,
    totalrevisiones: 0,
    perfil: "assets/doctor_1.jpg",
  ),
  DoctorModel(
    nombre: "Eliseo Nava",
    posicion: "Medico general",
    revisionPromedio: 0,
    totalrevisiones: 0,
    perfil: "assets/doctor_2.jpg",
  ),
  DoctorModel(
    nombre: "Jaime Nava",
    posicion: "Medico General",
    revisionPromedio: 2,
    totalrevisiones: 0,
    perfil: "assets/doctor_3.jpg",
  ),
];

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> iconTexto = [
      CustomIcon(name: "Cita", icon: 'assets/appointment.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
      CustomIcon(name: "Mas", icon: 'assets/more.png'),
    ];
    List<CustomIcon> necesidadesdesalud = [
      CustomIcon(name: "Citas", icon: 'assets/appointment.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Covid-19", icon: 'assets/virus.png'),
      CustomIcon(name: "Farmacia", icon: 'assets/drug.png'),
    ];
    List<CustomIcon> cuidadoespecializado = [
      CustomIcon(name: "Diabetes", icon: 'assets/blood.png'),
      CustomIcon(name: "Cuidado de la salud", icon: 'assets/health_care.png'),
      CustomIcon(name: "Dental", icon: 'assets/tooth.png'),
      CustomIcon(name: "Asegurado", icon: 'assets/insurance.png'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(iconTexto.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == iconTexto.length - 1) {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // HEALTH NEEDS SECTION
                            Text(
                              "Necesidad de salud",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                necesidadesdesalud.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer
                                                .withOpacity(0.4),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            necesidadesdesalud[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(necesidadesdesalud[index].name)
                                    ],
                                  );
                                },
                              ),
                            ),
                            const SizedBox(height: 30),
                            // SPECIALISED CARE SECTION

                            Text(
                              "Atención especializada",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                cuidadoespecializado.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer
                                                .withOpacity(0.4),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            cuidadoespecializado[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(cuidadoespecializado[index].name)
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  iconTexto[index].icon,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(iconTexto[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}

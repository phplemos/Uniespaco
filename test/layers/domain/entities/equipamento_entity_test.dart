import 'package:flutter_test/flutter_test.dart';
import 'package:uniespaco/layers/domain/entities/equipamento_entity.dart';

main() {
  test('Testar se o objeto vem nulo', () {
    var equipamento = EquipamentoEntity(
        id: '1', nome: 'Televisão', tipo: 'Eletronico', numTombo: '23132');

    expect(equipamento, isNotNull);
  });

  //Elaborar melhor as regras de negocio
}

import 'package:flutter_test/flutter_test.dart';
import 'package:uniespaco/layers/domain/entities/equipamento_entity.dart';
import 'package:uuid/uuid.dart';

main() {
  const uuid = Uuid();

  test('Valida criação de entidade com todos atributos', () {
    var id = uuid.v4();
    EquipamentoEntity equipamento = EquipamentoEntity(id: id, nome: 'lampada', tipo: 'vidro', numTombo: '123');

    expect(EquipamentoEntity(id: id, nome: 'lampada', tipo: 'vidro', numTombo: '123'), equipamento);
  });

  test('Valida criação de entidade com sem alguns', () {
    var id = uuid.v4();
    expect(EquipamentoEntity(id: id, nome: '', tipo: 'vidro', numTombo: '321'), EquipamentoEntity(id: id, nome: '', tipo: 'vidro', numTombo: '321'));
  });
}

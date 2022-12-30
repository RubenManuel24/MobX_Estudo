// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PrincipalController on PrincipalControllerBase, Store {
  late final _$itemAtom =
      Atom(name: 'PrincipalControllerBase.item', context: context);

  @override
  String get item {
    _$itemAtom.reportRead();
    return super.item;
  }

  @override
  set item(String value) {
    _$itemAtom.reportWrite(value, super.item, () {
      super.item = value;
    });
  }

  late final _$PrincipalControllerBaseActionController =
      ActionController(name: 'PrincipalControllerBase', context: context);

  @override
  void setItem(String valor) {
    final _$actionInfo = _$PrincipalControllerBaseActionController.startAction(
        name: 'PrincipalControllerBase.setItem');
    try {
      return super.setItem(valor);
    } finally {
      _$PrincipalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic listar() {
    final _$actionInfo = _$PrincipalControllerBaseActionController.startAction(
        name: 'PrincipalControllerBase.listar');
    try {
      return super.listar();
    } finally {
      _$PrincipalControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
item: ${item}
    ''';
  }
}

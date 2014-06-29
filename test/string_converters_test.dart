import 'package:string_converters/string_converters.dart';
import 'package:test/test.dart';

main() {
  List<String> inputStrings = [
    "Test Title",
    "Test word",
    "test Word",
    "table_name",
    "poly-name",
    "varName",
    "Title",
    "ClassName",
    "CONST_NAME"
  ];

  test('toVarName', () {
    var result = inputStrings.map(toVarName);
    expect(result, [
      'testTitle',
      'testWord',
      'testWord',
      'tableName',
      'polyName',
      'varName',
      'title',
      'className',
      'constNAME'
    ]);
  });

  test('toLowerCamelCase', () {
    var result = inputStrings.map(toLowerCamelCase);
    expect(result, [
      'testTitle',
      'testWord',
      'testWord',
      'tableName',
      'polyName',
      'varName',
      'title',
      'className',
      'constNAME'
    ]);
  });

  test('toClassName', () {
    var result = inputStrings.map(toClassName);
    expect(result, [
      'TestTitle',
      'TestWord',
      'TestWord',
      'TableName',
      'PolyName',
      'VarName',
      'Title',
      'ClassName',
      'CONSTNAME'
    ]);
  });

  test('toUpperCamelCase', () {
    var result = inputStrings.map(toUpperCamelCase);
    expect(result, [
      'TestTitle',
      'TestWord',
      'TestWord',
      'TableName',
      'PolyName',
      'VarName',
      'Title',
      'ClassName',
      'CONSTNAME'
    ]);
  });

  test('toPolyName', () {
    var result = inputStrings.map(toPolyName);
    expect(result, [
      'test-title',
      'test-word',
      'test-word',
      'table-name',
      'poly-name',
      'var-name',
      'title',
      'class-name',
      'const-name'
    ]);
  });

  test('toLowerCaseWith', () {
    var result = inputStrings.map((i) => toLowerCaseWith(i, '-'));
    expect(result, [
      'test-title',
      'test-word',
      'test-word',
      'table-name',
      'poly-name',
      'var-name',
      'title',
      'class-name',
      'const-name'
    ]);
  });

  test('toTableName', () {
    var result = inputStrings.map(toTableName);
    expect(result, [
      'test_title',
      'test_word',
      'test_word',
      'table_name',
      'poly_name',
      'var_name',
      'title',
      'class_name',
      'const_name'
    ]);
  });

  test('toUpperCaseWith', () {
    var result = inputStrings.map((i) => toUpperCaseWith(i, '_'));
    expect(result, [
      'TEST_TITLE',
      'TEST_WORD',
      'TEST_WORD',
      'TABLE_NAME',
      'POLY_NAME',
      'VAR_NAME',
      'TITLE',
      'CLASS_NAME',
      'CONST_NAME'
    ]);
  });

  test('toConstName', () {
    var result = inputStrings.map(toConstName);
    expect(result, [
      'TEST_TITLE',
      'TEST_WORD',
      'TEST_WORD',
      'TABLE_NAME',
      'POLY_NAME',
      'VAR_NAME',
      'TITLE',
      'CLASS_NAME',
      'CONST_NAME'
    ]);
  });
}

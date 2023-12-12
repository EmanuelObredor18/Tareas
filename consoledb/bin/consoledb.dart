import 'package:aws_dynamodb_api/dynamodb-2012-08-10.dart';

void main(List<String> arguments) async {
  final dynamoDB = DynamoDB(
    region: 'localhost',
    endpointUrl: 'http://localhost:8000',
    credentials: AwsClientCredentials(accessKey: 'xywsq', secretKey: 'owac6q')
    );

  final putItem = dynamoDB.putItem(
    item: {
      'ID' : AttributeValue(n: '1'),
      'Nombre del producto' : AttributeValue(s: 'Pera'),
    }, 
    tableName: 'productos'
  );

  print('Se ingresaron los datos correctamente: $putItem');
}

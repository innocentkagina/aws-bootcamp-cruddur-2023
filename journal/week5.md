# Week 5 — DynamoDB and Serverless Caching

1- Implement Schema Load Script

In this week, we implemented dynamodb schema load scripts

[Schema Load File](https://github.com/innocentkagina/aws-bootcamp-cruddur-2023/blob/71237c1d4b09c5758447ae343f5622d3a80d76bc/backend-flask/bin/ddb/schema-load)

```
./backend-flask/bin/ddb/schema-load
```
![Schema Load Script](assets/schema-load.png)

2- Implement Seed Script

We also implemented dynamodb schema seed scripts

[Seed File](https://github.com/innocentkagina/aws-bootcamp-cruddur-2023/blob/71237c1d4b09c5758447ae343f5622d3a80d76bc/backend-flask/bin/ddb/seed)

```
./backend-flask/bin/ddb/seed
```
![Seed Script](assets/seed-ddb.png)

3- Implement Scan Script

We also implemented dynamodb schema scan scripts

[Scan File](https://github.com/innocentkagina/aws-bootcamp-cruddur-2023/blob/71237c1d4b09c5758447ae343f5622d3a80d76bc/backend-flask/bin/ddb/scan)

```
./backend-flask/bin/ddb/scan
```
![Scan Script](assets/scan-ddb.png)


4- Implement Pattern Scripts for Read and List Conversations

Read Conversations
[Read Conversations](https://github.com/innocentkagina/aws-bootcamp-cruddur-2023/blob/71237c1d4b09c5758447ae343f5622d3a80d76bc/backend-flask/bin/ddb/patterns/get-conversation)

```
./backend-flask/bin/ddb/patterns/get-conversation
```
![Read Conversations](assets/read-ddb.png)

List Conversations
[List Conversations](https://github.com/innocentkagina/aws-bootcamp-cruddur-2023/blob/71237c1d4b09c5758447ae343f5622d3a80d76bc/backend-flask/bin/ddb/patterns/list-conversations)

```
./backend-flask/bin/ddb/patterns/list-conversations
```
![List Conversations](assets/list-ddb.png)

5- Implement Update Cognito ID Script for Postgres Database

[Update cognito ID Script](https://github.com/innocentkagina/aws-bootcamp-cruddur-2023/blob/71237c1d4b09c5758447ae343f5622d3a80d76bc/backend-flask/bin/update-cognito-user-ids)

```
./backend-flask/bin/update-cognito-user-ids

```
![Update Cognito ID Code](assets/update-cognito.png)

6- Implement (Pattern A) Listing Messages in Message Group into Application

![Update Cognito ID Code](assets/dynamodb-messages.png)

7- Implement (Pattern B) Listing Messages Group into Application

![Update Cognito ID Code](assets/dynamodb-messages.png)

8- Implement (Pattern C) Creating a Message for an existing Message Group into Application

![Implement Pattern-C](assets/pattern-c.png)


9- Implement (Pattern D) Creating a Message for a new Message Group into Application

![Implement Pattern-D](assets/pattern-d.png)

10-Implement (Pattern E) Updating a Message Group using DynamoDB Streams

 a) Create Lambda Function
![Dynamo Lambda](assets/dynamodb-lambda-function.png)


 b) Create VPC End Point for dynamodb

![Dynamo VPC Endpoint](assets/vpc-endpoint.png)

 c) Create Dynamodb Stream

DynamoDb Streams

![Dynamo Streams](assets/dynamodb-streams.png)
![Dynamo Items](assets/dynamodb-items.png)

d) Create Trigger for dynamodb

![Dynamo Trigger](assets/lambda-trigger.png)

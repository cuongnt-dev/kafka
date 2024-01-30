docker exec -it b3 sh

kafka-topics --bootstrap-server localhost:9092 --list

kafka-topics --bootstrap-server localhost:9092 --create --topic first-topic --partitions 3 --replication-factor 1

kafka-topics --bootstrap-server localhost:9092 --describe --topic first-topic

kafka-topics --bootstrap-server localhost:9092 --delete --topic first-topic


// Produce message
kafka-console-producer --bootstrap-server localhost:9092 --topic first-topic --producer-property acks=all --property parse.key=true --property key.separator=:
>key:example value


kafka-console-consumer --bootstrap-server localhost:9092 --topic first-topic
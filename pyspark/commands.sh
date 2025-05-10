
docker-compose down && docker-compose up -d

# Produce messages to the topic
docker exec -it kafka /bin/bash
    # Produce messages to the topic
    kafka-console-producer --topic test_topic --bootstrap-server localhost:29092
        >hello

# Consume messages to the topic
docker exec -it kafka /bin/bash
    # Consume messages from the topic
    kafka-console-consumer --topic test_topic --bootstrap-server localhost:29092 --from-beginning


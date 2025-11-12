# Dockerfile - SEM extensão!
FROM atendai/evolution-api:latest

# Script para manter ativo
RUN echo '#!/bin/sh\n\
while true; do\n\
  curl -s http://localhost:8080/instance/list > /dev/null 2>&1\n\
  sleep 240\n\
done' > /keep-alive.sh

RUN chmod +x /keep-alive.sh

# Instalar curl
USER root
RUN apt-get update && apt-get install -y curl

# Iniciar keep-alive e API
CMD /keep-alive.sh & node dist/src/main.js

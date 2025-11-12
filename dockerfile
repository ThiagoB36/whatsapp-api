FROM atendai/evolution-api:latest

# Script usando wget (já incluso no Alpine)
RUN echo '#!/bin/sh\n\
while true; do\n\
  wget -q -O - http://localhost:8080/instance/list > /dev/null 2>&1\n\
  sleep 240\n\
done' > /keep-alive.sh

RUN chmod +x /keep-alive.sh

CMD /keep-alive.sh & node dist/src/main.js

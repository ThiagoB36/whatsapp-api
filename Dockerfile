FROM atendai/evolution-api:v2.1.1

HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080/instance/list || exit 1

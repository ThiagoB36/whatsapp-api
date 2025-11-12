FROM atendai/evolution-api:v2.1.1

# Health check para Railway
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:8080/instance/list || exit 1

# O comando padrão da imagem já é: node dist/src/main.js

module.exports = {
  apps: [{
    name: 'evolution-api',
    script: 'npm',
    args: 'run start:prod',
    instances: 1,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'production',
      SERVER_PORT: 8080,
      SERVER_HOST: '0.0.0.0'
    }
  }]
};

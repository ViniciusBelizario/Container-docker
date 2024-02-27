FROM node:12-alpine
# 
WORKDIR /app
# Copiar todos os arquivos para a minha imagem
COPY . .
# Instalar algumas dependencias necessarias para que meu codigo funcione
RUN apk add --no-cache python2 g++ make
RUN yarn install --production
CMD ["node", "src/index.js"]
# Porta a qual minha aplicação ira rodar
EXPOSE 3000
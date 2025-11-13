# Imagen base oficial de Node
FROM node:20-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos del proyecto
COPY package*.json ./
RUN npm install --production

# Copiamos el resto del código
COPY . .

# Exponemos el puerto
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]


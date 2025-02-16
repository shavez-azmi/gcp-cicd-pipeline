# Dockerfile
FROM node:14

WORKDIR /app

COPY . .  

RUN npm install  

# Set the port for Cloud Run (Use 8080 since Cloud Run defaults to it)
# ENV PORT=8080  

EXPOSE 8080  

CMD ["npm", "start"]

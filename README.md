# Two-Tier Flask App with MySQL using Docker Compose

This project demonstrates a simple two-tier architecture where a Flask web application connects to a MySQL database, all managed using Docker Compose.

## 📦 Project Structure

. ├── app.py # Flask application ├── Dockerfile # Flask app Dockerfile ├── docker-compose.yml # Docker Compose configuration ├── requirements.txt # Python dependencies ├── message.sql # SQL script to initialize DB └── mysql-data/ # MySQL volume (auto-generated)


## ⚙️ Technologies Used
- Python (Flask)
- MySQL
- Docker & Docker Compose
- Flask-MySQLdb connector

## 🚀 Getting Started
### Prerequisites
- Docker
- Docker Compose
  

## Clone the Repository
git clone https://github.com/virtualvikas96/two-tier-flask-app.git

cd two-tier-flask-app

## Build & Run the App
docker-compose up --build

# This will:
 * Build the Flask app image.
 * Start a MySQL container with initialized database and table.
 * Launch the Flask app and connect it to MySQL.

## Check Running Containers
docker ps

## Access the Application

http://localhost:5001

## 🧪 MySQL Access
docker exec -it mysql mysql -uadmin -padmin devops

Then inside the MySQL shell:

SHOW TABLES;

SELECT * FROM messages;

## 🔧 Environment Variables

Defined in docker-compose.yml:

MYSQL_DATABASE: devops

MYSQL_USER: admin

MYSQL_PASSWORD: admin

MYSQL_ROOT_PASSWORD: root


## 🧹 Cleanup

To stop and remove containers:

docker-compose down

## 📬 Contact

For questions, reach out at singhvikas180196@gmail.com


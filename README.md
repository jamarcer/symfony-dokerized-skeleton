# Symfony Application skeleton

## Description

This is a skeleton for running Symfony into Docker containers using docker-compose tool.

It is composed by 3 containers:

- `nginx`, acting as the webserver. Version 1.21.4 is used.
- `php`, the PHP-FPM container. Version 8.1 is used.
- `db` which is the MySQL database container. Version 8.0.23 is used.

## Installation

1. Clone this repository.

2. You can configure your application if default values are not as you need:
   1. Create the file `./.docker/.env.nginx.local` using `./.docker/.env.nginx` as template. The value of the variable `NGINX_BACKEND_DOMAIN` is the `server_name` used in NGINX.
   2. Define in the file `.env` the DATABASE_URL environment variable: `DATABASE_URL=mysql://app_user:helloworld@db:3306/app_db?serverVersion=8.0.23`.

3. Run the following command to initialize the application: ` make system-init`

You could change the name, user and password of the database in the `.env` file at the root folder of the project.

## Usage

Run `make system-run` to initialize the containers. Then you can use the application from web browser: `http://localhost:9080`

You should work inside the `php` container. Run `make run-php` to start `php` container.

Finally, run `make system-stop` to stop containers.

## Credits

This project is based on the [symfony-docker](https://github.com/ger86/symfony-docker). Thanks to Ger86 for the great work.
I don't fork its repository because I need a simplified version of it, so I will change a lot of its advanced functionalities and features.
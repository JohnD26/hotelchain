# Pre-Launch Checklist

### 1. `db_config.php` in the Admin Folder
- Ensure the database file is present in the `DATABASE` folder and import it via phpMyAdmin.
- Verify the following details in the `db_config.php` file:
  - **Database Name**
  - **Host**: `localhost`
  - **Username**
  - **Password**

### 2. Troubleshooting Database Insertion Issues
If registration data is not being inserted into the database, follow these steps:

1. Open the **Console Window** and go to the **Network** tab.
2. Try to register a user.
3. After submitting the form, find the AJAX call to `login_register.php` in the Network tab.
4. Click on it to view the error details.

If the error is something like:
Fatal error: Uncaught Error: Call to undefined function imagecreatefromjpeg()

Resolve it by following these steps:

- Open the `php.ini` file:
  - Path: `C://xampp/php/php.ini`
  - Ignore `php.ini-development` and `php.ini-production`. Open the **php** configuration file.
- Search for `extension=gd`.
  - If it has a semicolon (`;`), remove it:
    ``` 
    ;extension=gd --> extension=gd
    ```
- If you're using PHP 8, repeat the above steps in the `C://php8/php.ini` file.

### 3. XAMPP Installation and Setup
- Install XAMPP, ensuring both **Apache** and **MySQL** are running.
- Add the project folder `ehotelchain` to your directory:

C:\xampp\htdocs\ehotelchain


- Access the project:
- **Home Page**: `http://localhost/ehotelchain/`
- **Admin Login Page**: `http://localhost/ehotelchain/admin`

Here, the admin is treated as an employee. Use these credentials to log in:

- **User Email:** `jdomi068@uottawa.ca`
  - Password: `Password`
- **Admin/Employee:**
  - Username: `Jonathan`
  - Password: `12345`

### 4. Database Setup
- In `db_config.php`, create a MySQL database and provide its name. Use the default user `root` and set your password.
- Use the SQL file in the `DATABASE_FILE` package to create and populate the database.




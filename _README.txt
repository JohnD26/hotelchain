
Check these things before running the project:

1. db_config.php in Admin Folder

  [.] Database file is present in the DATABASE folder, you just need to import it in phpmyadmin.
  [.] Check the database name, localhost, user name and password.


2. If you try to register and your data is not inserting in database, then check the network tab for error.

    All you have to do is:
    1. Open console window & go to network tab
    2. Try to do a registration
    3. After form submission, you will see an ajax call network tab to file "login_register.php"
    4. Click on it to see the error.
    
    5. If error is something like this -> Fatal error: Uncaught Error: Call to undefined function imagecreatefromjpeg()
    6. Then to solve this you need to go in "C://xampp/php/php.ini" Configuration file
        -> Ignore php.ini-development or php.ini-production, Just open "php" named Configuration file
    7. Search for "extension=gd" and if it has ";" (semicolon) then remove semicolon 
        -> From ;extension=gd to extension=gd
    
    8. That's it. But if you are using php8 then go to "C://php8/php.ini" Configuration file and repeat step 7



3. Make sure you have xamp installed.
Once Xampp installed we will be running apache and mysql in the control panel
Then add the project folder ehotelchain to this place in your directory: C:\xampp\htdocs
your project file should now be C:\xampp\htdocs\ehotelchain

Then go in microsoft edge and go to this link: http://localhost/ehotelchain/ for the first page
go to this link:  http://localhost/ehotelchain/admin? to log in as administrator. on this page
you will be prompted to enter admin email and the password. Here admin is just an employee

some users registered are: user email: jdomi068@uottawa.ca
                           Password: Password

Admin/Employee:  Username: Jonathan
                 Password: 12345

For the db_config.php you can just create a database on mysql ce and give its database name in the
db_config.php file. You would just be adding the default user root and your password

For creating and populating the database please use the SQL File in The DATABASE_FILE Package
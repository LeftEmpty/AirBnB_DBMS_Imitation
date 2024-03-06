# AirBnB_DBMS_Imitation
---
AirBnB style DBMS system written in MySQL 8.1.
Current features include schema which sets up table structure, example trigger (condition), test data, and an array of test cases for the most relevant, likely and important use cases.

Project consists of 3 phases: Starting from conception to implementation and finalization, each with feedback rounds.
If you are only insteressted in the final result, please view at the phase_3 folder.

## Table of Contents
* [Instruction Manual & Documentation](#instruction-manual--documentation)
    * [Dependencies](#dependencies)
    * [Setup Environment](#setup-environment)
    * [Database Installation](#database-installation)
    * [Database Usage](#database-usage)
* [Documentation](#documentation)
    * [Database Overview](#database-overview)
    * [File Overview](#file-overview)
        * [Schema](#schema)
        * [Triggers](#triggers)
        * [Data](#data)
        * [Test](#test)
        * [List of test case views](#list-of-test-case-views)
* [Future Outlook](#future-outlook)

## Instruction Manual & Documentation
---
In this instruction manual, I’d like to explain how to install, setup and use this database. 

***Structure:***
1.	Dependencies
2.	Setup Environment
3.	Database Installation
4.	Database Usage
5.	Documentation

### Dependencies
•	This database was built to have as few dependencies as possible. Currently only MySQL 8.1 and a way to access it are necessary. Recommendations follow.
•	This database is built using MySQL 8.1, it has not been tested on any other versions, but should in theory work on any newer version as well.
•	I recommend using the MySQL 8.1 Community server together with the MySQL 8.1 Command Line Client. This setup is explained below.

### Setup Environment
Everything necessary to use this database can be setup using the MySQL community installer. While this may look very long, it’s very quick and you can start testing the database within 5 minutes.

It is assumed that the Windows operating system will be used, there may be slight differences in case you are using a different OS. In that case, please see the link at the end of this section on how to setup MySQL on different operating systems.

Instructions on the installation process follow:
1.	Follow this [link](https://downloads.mysql.com/archives/community/ "mysql download page"), select version 8.1.0 and your operating system in the dropdown menu and download the MSI installer.
2.	Run the downloaded Installer, proceed with default settings and keep the option “Run MySQL configurator” ticked before clicking Finish.
3.	In the configurator, keep “Type and Networking” default and click on Next. In the Accounts and Roles tab, setup your root password. Important: remember this password for later.
4.	After setting your Root password, the next two tabs can be left as is, until you proceed to the tab “Apply Configurations”. On this tab click “Execute” and then proceed. On the last tab simply click Finish.
5.	You should now have a MySQL server and the command line client installed on your system. If you do not see the command line client, you can also add the PATH to your MySQL installations “bin” folder to your environment variables and use the normal command line.

You can now use the command line to access the MySQL server and start testing the database.
More information can be found in the official [documentation](https://dev.mysql.com/doc/mysql-installation-excerpt/8.3/en/ "official mysql documentation").

### Database Installation
To test and use the database let’s setup the database structure, triggers, and test data and test case views.

To install these open up the previously installed Command Line Client and enter the password you set during the configuration. You can now start writing MySQL statements.

**Important:** Read before proceeding, the schema.sql (used to setup the table structure and FKs) overwrites the database if there already exists one with the same name. The name of the database includes my matriculation number (see submission name) so the chance of this happening should be extremely low. In case you want to name the database yourself or already have one that exists, edit lines 12 through 14 in the schema.sql file. This is also necessary for the second way of installing the database.
There are two ways for this installation. **Recommended:** simply copy-paste and run all statements from the each file on the command lines (order is shown below).

Installation order:
1.	schema.sql
2.	triggers.sql (optional)
3.	data.sql (optional)
4.	test.sql (optional)

The other way if you have set up the environment variable is to open the command line in the folder, and then adjust and run the following command for each of the files above.
mysql -u your_username -p your_database_name < file.sql

### Database Usage
Now the database structure, including test data and test cases should be installed. To use them either use normal MySQL syntax or use one of the test cases listed in the following Documentation section.
To insert data into the database, simply adjust one of the insert example statements found in the “data.sql” file for example.

## Documentation
---
### Database Overview
To gain an overview of each of the tables, it is recommended to look at the provided PowerPoint presentation. The presentation includes explanations about the general use and function of the table as well as its relationship to other tables.

### File Overview
It is recommended to open up and browse the files for more information regarding specific test cases or data. All statement blocks are documented using comments.

#### Schema
This file contains all statements necessary to create the table structure of the database. It also creates the database and can therefore be run right away after opening the MySQL command line. No data is being created using this file.

#### Triggers
This file can be omitted without any influence on the process and only serves as an example of how conditions could be added to this project in a modular and future-proof way.

#### Data
This file includes the bulk of the statements. This file includes 2000+ (includes docs & white space) lines of sql statements that serve to fill the database with properly linked, semi-realistic test data.

#### Test
Test.sql includes test cases for each table, putting focus on more important tables that are relevant to the main functionality of the database. The provided primarily test the integrity of the relationship between tables and the related data stored within them. This means that test cases will select data entries that store data over multiple related tables. By viewing this information, we can confirm that data was properly inserted into these tables. (This file also includes examples which will run during installation). Additionally, equivalence classes have been used to reduce the workload to a reasonable amount without reducing the achieved result.

#### List of test case views
This list merely serves as an overview of all test cases, so you know what to search for. Documentation can be found via the comments in the test case file. (This pdf would otherwise get quite bloated.) Example use cases for each of the test case will also be provided.

* iu_userguest_view
    * `SELECT * FROM iu_userguest_view WHERE user_id = 1;`
* iu_userhost_view
    * `SELECT * FROM iu_userhost_view WHERE user_id = 21;`
* iu_propertylisting_view
    * `SELECT * FROM iu_propertylisting_view WHERE propertylisting_id = 1;`
    * `SELECT * FROM iu_propertylisting_view WHERE host_id = 1;`
* iu_propertylisting_amentities_view
    * `SELECT * FROM iu_propertylisting_amentities_view WHERE propertylisting_id = 1;`
* iu_userreviews_view
    * `SELECT * FROM iu_userreviews_view WHERE user_id = 1;`
* iu_propertyreviews_view
    * `SELECT * FROM iu_propertyreviews_view WHERE propertylisting_id = 1;`
* iu_booking_view
    * `SELECT * FROM iu_booking_view WHERE booking_id = 1;`
    * `SELECT * FROM iu_booking_view WHERE propertylisting_id = 1;`
* iu_transaction_view
    * `SELECT * FROM iu_transaction_view WHERE transaction_id = 1;`
    * `SELECT * FROM iu_transaction_view WHERE booking_id = 1;`
* iu_wishlist_details_view
    * `SELECT * FROM iu_wishlist_details_view WHERE wishlist_id = 1;`
* iu_wishlist_propertylistings_view
    * `SELECT * FROM iu_wishlist_propertylistings_view WHERE wishlist_id = 1;`
* iu_chat_details_view
    * `SELECT * FROM iu_chat_details_view WHERE chat_id = 1;`
* iu_chat_messages_view
    * `SELECT * FROM iu_chat_messages_view WHERE owning_chat_id_ref = 1;`

## Future Outlook
This project mainly served as a learning project and therefore, has a lot of room for expansion and improvement. In the future i'd like to additional triggers, refacture the schema.sql file and add on more tables to expand the system further in the direction of the actual application it is imitated after.
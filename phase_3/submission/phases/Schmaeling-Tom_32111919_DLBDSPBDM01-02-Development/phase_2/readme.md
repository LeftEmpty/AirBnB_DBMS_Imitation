# Phase 2

## Overview
#####_presentation
- contains the powerpoint presentation
- contains the 'img' folder which is used to store all screenshots used within the presentation

#### ER_diagram
- contains the [draw.io](https://app.diagrams.net/) xml files that were used to create the newly adjusted ER diagrams used in the presentation

#### phase_1
- contains the, from phase 1 missing, data dictionary excel spreadsheet which was added during phase 2

#### schemas
- contains all sql files used in the creation / implementation of the database.
- the files are logically split up and kept modular, this way you can choose to only implement the structure of tables (schema.sql) without any of the test data (data.sql). The optional conditions (triggers.sql) and tests (tests.sql) can also be added / run.

a manual for implemnting this database can be found phase 3, but to quickly explain: to implement this db, simply open the mysql command line (8.1+), then copy-paste and execute the files in the following order:
> 1. schema.sql
> 2. triggers.sql (optional)
> 2. data.sql (optional)
> 3. test.sql (optional)
**For more in-depth instructions and documentation please view the instruction manual in phase 3.**

#### submission
- contains simple text file with the abstract submitted along the final submission (this txt file contains all iterations).
- contains the PDF used for the final submission.
- the "_old" folder contains an older version of the submission in zip-folder form. *This folder can be disregarded*. This was a version of the submission before realizing that the submission had to be a single PDF file. It contains the submission before creating screenshots, and adjusting the presentation.
- contains professor feedback on the submission.

## Software used
the software used for phase 2 are mostly unchanged compared to phase 1. Most of the software used in creating the assets is explained in the presentation and the abstract.

- [MySQL 8.1 & MySQL 8.1 Command Line](https://dev.mysql.com/downloads/mysql/) in combination with VSCode were used to implement the database.
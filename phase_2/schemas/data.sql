/*
this file includes example inserts of dummy data for the database.
there are 20 entries in every table as requested.
*/

/* Image
When reading this document, you might notice that there is no distinct section for the Image table
- this is because a lot of other table entries may require a related entry in the Image table
- the inserts for the Image table will therefore be conducted for each of these, actually resulting in more than 20 total entries   
*/


/*
Language
- These will be created/updated by an admin and won't change frequently
- The id is set to auto_increment and does therefore not need to be provided
*/
ALTER TABLE Language AUTO_INCREMENT = 1;
INSERT INTO Language (name, country) VALUES ("English", "United States");
INSERT INTO Language (name, country) VALUES ("English", "Australia");
INSERT INTO Language (name, country) VALUES ("English", "United Kingdom");
INSERT INTO Language (name, country) VALUES ("Deutsch", "Deutschland");
INSERT INTO Language (name, country) VALUES ("Bahasa Indonesia", "Indonesia");
INSERT INTO Language (name, country) VALUES ("Bosanski", "Bosna i Hercegovina");
INSERT INTO Language (name, country) VALUES ("Català", "Espanya");
INSERT INTO Language (name, country) VALUES ("Español", "España");
INSERT INTO Language (name, country) VALUES ("Español", "México");
INSERT INTO Language (name, country) VALUES ("Español", "Paraguay");
INSERT INTO Language (name, country) VALUES ("Français", "France");
INSERT INTO Language (name, country) VALUES ("Français", "Suisse");
INSERT INTO Language (name, country) VALUES ("Italiano", "Italia");
INSERT INTO Language (name, country) VALUES ("Melayu", "Malaysia");
INSERT INTO Language (name, country) VALUES ("Nederlands", "Nederland");
INSERT INTO Language (name, country) VALUES ("Polski", "Polska");
INSERT INTO Language (name, country) VALUES ("Português", "Brasil");
INSERT INTO Language (name, country) VALUES ("Português", "Portugal");
INSERT INTO Language (name, country) VALUES ("Svenska", "Sverige");
INSERT INTO Language (name, country) VALUES ("Tagalog", "Pilipinas");


/*
Currency
- These will be created/updated by an admin and won't change frequently
- these are very simple and self-explanatory insert statements
*/
ALTER TABLE Currency AUTO_INCREMENT = 1;
INSERT INTO Currency (name, abbreviation) VALUES ("United States dollar", "USD");
INSERT INTO Currency (name, abbreviation) VALUES ("Euro", "EUR");
INSERT INTO Currency (name, abbreviation) VALUES ("Australian dollar", "AUD");
INSERT INTO Currency (name, abbreviation) VALUES ("Brazilian real", "BRL");
INSERT INTO Currency (name, abbreviation) VALUES ("Bulgarian lev", "BGN");
INSERT INTO Currency (name, abbreviation) VALUES ("Canadian dollar", "CAD");
INSERT INTO Currency (name, abbreviation) VALUES ("Chilean peso", "CLP");
INSERT INTO Currency (name, abbreviation) VALUES ("Chinese yuan", "CNY");
INSERT INTO Currency (name, abbreviation) VALUES ("Colombian peso", "COP");
INSERT INTO Currency (name, abbreviation) VALUES ("Costa Rican colon", "CRC");
INSERT INTO Currency (name, abbreviation) VALUES ("Croatian kuna", "HRK");
INSERT INTO Currency (name, abbreviation) VALUES ("Czech koruna", "CZK");
INSERT INTO Currency (name, abbreviation) VALUES ("Danish krone", "DKK");
INSERT INTO Currency (name, abbreviation) VALUES ("Emirati dirham", "AED");
INSERT INTO Currency (name, abbreviation) VALUES ("Hong Kong dollar", "HKD");
INSERT INTO Currency (name, abbreviation) VALUES ("Hungarian forint", "HUF");
INSERT INTO Currency (name, abbreviation) VALUES ("Indian rupee", "INR");
INSERT INTO Currency (name, abbreviation) VALUES ("Indonesian rupiah", "IDR");
INSERT INTO Currency (name, abbreviation) VALUES ("Israeli new shekel", "ILS");
INSERT INTO Currency (name, abbreviation) VALUES ("Japanese yen", "JPY");

/*
Giftcards

the primary key is the gift-card code, this code will have to be genereated somewhere in the application
before being saved to the database. Once a giftcard is used or passes the valid_until_date timestmap,
it is deleted from the table and is therefore no longer accessible.
(The example dummy data uses a generic password generator to examplify what the codes may look like)

- the statements themselves are very simple and self-explanatory
*/
ALTER TABLE GiftCard AUTO_INCREMENT = 1;

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("TYTYZSNBMAQRTJOY", 15.00, 1, TIMESTAMP("2024-08-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("P64C576WLIJ4YBPZ", 15.00, 1, TIMESTAMP("2025-01-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("MYTQT96YLSXISFE3", 25.00, 2, TIMESTAMP("2024-05-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("3Q78DHZDBFR7PV2Y", 10.00, 3, TIMESTAMP("2025-04-30", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("K60T835IMZWU00NF", 15.00, 2, TIMESTAMP("2025-05-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("FGX1GISU2CCX1DHK", 35.00, 6, TIMESTAMP("2025-03-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("WXOGCT50PLHTXWFQ", 35.00, 2, TIMESTAMP("2025-01-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("OJCFAB1JP1M6FNJJ", 50.00, 3, TIMESTAMP("2025-04-30", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("MW7F3YU8FWUL35KC", 100.00, 1, TIMESTAMP("2024-09-30", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("TXEWZSDC6O9QAYS6", 25.00, 1, TIMESTAMP("2024-08-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("89MY6ZHIIZ2ZP4WV", 15.00, 1, TIMESTAMP("2024-10-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("U8L7EN71DPMLH9TM", 1500.00, 20, TIMESTAMP("2023-11-30", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("NROUSHQEMNG6TQG3", 50.00, 6, TIMESTAMP("2024-08-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("0H96ZLDREHK327IR", 15.00, 1, TIMESTAMP("2024-12-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("MFARAOTI1IZ5FW56", 15.00, 6, TIMESTAMP("2023-12-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("GAQCIFSJ7124AXZ3", 15.00, 1, TIMESTAMP("2024-12-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("O1O7FVELV7OZTZUB", 5000.00, 20, TIMESTAMP("2024-08-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("28N86O2VG4QFV8FV", 15.00, 1, TIMESTAMP("2024-02-29", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("7R8LP7XVGDCQIA3H", 50.00, 2, TIMESTAMP("2024-08-31", "00:00:00"));

INSERT INTO GiftCard (giftcard_code, amount, currency_id, valid_until_date)
VALUES ("14RK71JJBV802BUJ", 10.00, 3, TIMESTAMP("2025-03-31", "00:00:00"));


ALTER TABLE User AUTO_INCREMENT = 1;
ALTER TABLE Guest AUTO_INCREMENT = 1;
ALTER TABLE EmergencyContact AUTO_INCREMENT = 1;
ALTER TABLE CreditCardInformation AUTO_INCREMENT = 1;
/*
User, Guest, EmergencyContact, CreditCardInformation, Address (SQL Transaction)

Using a transaction for these insert statement means that we can use ROLLBACK to revert all changes
in case one or more querries fail.
We use a transaction for this because the data is cloesly related to each other.

* i will only comment the first transaction as the rest follow the same schematic
*/
-- Guest 1
-- start the transaction
START TRANSACTION;

-- Insert Guest's Address into Address table
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Hessen", "Frankfurt", "Musterstraße", 1, "60306", "guest");
-- Retrieve the auto-generated address_id
SET @address_id = LAST_INSERT_ID();

-- Insert user data into User table, using the retrieved address_id
INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "max.musterman@example.com", "Max Musterman");
-- Retrieve the auto-generated user_id
SET @user_id = LAST_INSERT_ID();

-- Insert Image of government id, using example link
INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image1.jpg");
-- Retrieve image_id of goverment id picture
SET @image_governid_id = LAST_INSERT_ID();
-- Insert image_id of government id picture into the created user entry, linking them (this replaces NULL)
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

-- Insert profile image data into the Image table using example URL and retrieved user_id
INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image1.jpg");
-- Retrieve the auto-generated image_id
SET @image_profile_id = LAST_INSERT_ID();

-- Insert into EmergencyContact table
INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Anna Mustermann", "Family", 4, "anna@example.com", "+49", "123456789", @user_id);
-- Retrieve the auto-generated emergencycontact_id
SET @emergencycontact_id = LAST_INSERT_ID();

-- Insert into Guest table using retreived user and image ids.
INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am Max, a 41 years old digital nomand. I love traveling...", "+49987654321");

-- Retrieve the auto-generated guest_id
SET @guest_id = LAST_INSERT_ID();

-- Insert into CreditCardInformation table
INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Sparda Bank", "3353422819762527", "123", "2026-10-31");

-- commit the transaction
COMMIT;

-- Guest 2
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "New York State", "New York", "Time Square Alley", 76, "10001", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "john.doe@example.com", "John Doe");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image2.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image2.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Elizabeth Doe", "Family", 1, "elizabeth@example.com", "+1", "123456789", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am John, a 37 years old Engineer. I love traveling...", "+1333444555");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Bank of America", "9849828964342771", "321", "2026-12-31");

COMMIT;

-- Guest 3
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("England", "Greater London", "London", "Big Ben Avenue", 23, "12345", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "dave.adams@example.com", "Dave Adams");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image3.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image3.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Zoe Adams", "Family", 3, "zoe@example.com", "+44", "987654321", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am Dave, a 23 years old Entrepeneur. I love traveling...", "+44333444555");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Bank of England", "0195402326072019", "456", "2026-10-31");

COMMIT;

-- Guest 4
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Berlin", "Berlin", "Berliner Straße", 45, "10115", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "pia.maier@example.com", "Pia Maier");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image4.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image4.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Johannes Maier", "Family", 4, "Johannes@example.com", "+49", "456456456", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am Pia, a 27 years old Hair Dresser. I love traveling...", "+49123123123");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Sparkasse", "1917114195759730", "136", "2025-04-30");

COMMIT;

-- Guest 5
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("England", "Greater London", "London", "Big Ben Avenue", 23, "12345", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "john.baker@example.com", "John Baker");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image5.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image5.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Christian Clark", "Friend", 3, "christian@example.com", "+44", "123123123", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am John, a 51 years old Salesman. I love traveling...", "+44123123123");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Bank of England", "2572947112201868", "789", "2026-10-31");

COMMIT;

-- Guest 6
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Berlin", "Berlin", "Berliner Straße", 23, "10115", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "herbert.herbst@example.com", "Herbert Herbst");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image6.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image6.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("James Clark", "Friend", 4, "James@example.com", "+49", "456456456", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am Herbert.", "+49123123123");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Volksbank", "2008360552390322", "555", "2028-02-22");

COMMIT;

-- Guest 7
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("México", "State of Mexico", "Mexico City", "Paseo de la Reforma", 511, "01000", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "Antonio.GonzalesLopez@example.com", "Antonio Gonzales Lopez");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image7.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image7.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Alejandro Gonzales Lopez", "Friend", 9, "Alejandro@example.com", "+52", "456456456", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am Herbert.", "+52123123123");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Bank of Mexico", "5224035901505979", "555", "2028-02-22");

COMMIT;

-- Guest 8
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "New York State", "New York", "Time Square Alley", 76, "10001", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "frank.jones@example.com", "Frank Jones");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image8.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image8.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Susan Jones", "Family", 1, "elizabeth@example.com", "+1", "123456789", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello i am Frank, I love cooking and traveling...", "+1987123465");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Bank of America", "6310523948531445", "321", "2026-12-31");

COMMIT;

-- Guest 9
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("España", "Catalonia", "Barcelona", "Las Ramblas", 27, "08001", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "Camila.Garcia@example.com", "Camila Garcia");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image9.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image9.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Diego Garcia", "Family", 8, "Alejandro@example.com", "+34", "456456456", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello, my name is Camila, i am 34 years old and work in HR. I love traveling...", "+34456456456");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Banko Santander", "5224035901505979", "396", "2027-01-11");

COMMIT;

-- Guest 10
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("France", "Île-de-France", "Paris", "Avenue des Champs-Élysées", 1, "70123", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "Juliette.Dupont@example.com", "Juliette Dupont");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image10.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image10.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Louis Dupon", "Family", 11, "Louis@example.com", "+33", "567123890", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Bonjour, my name is Juliette..", "+33567345678");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Crédit Agricole", "7324491589242697", "396", "2027-01-11");

COMMIT;

-- Guest 11
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Brazil", "São Paulo", "São Paulo", "Rua Paulista", 123, "01310-000", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "maria.silva@example.com", "Maria Silva");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image11.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image11.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Ricardo Silva", "Family", 4, "ricardo@example.com", "+55", "987654321", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Oi, I am Maria from São Paulo.", "+5511987654321");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Banco do Brasil", "5147693194042091", "789", "2027-05-15");

COMMIT;

-- Guest 12
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("India", "Maharashtra", "Mumbai", "Colaba Causeway", 456, "400005", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "rahul.sharma@example.com", "Rahul Sharma");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image12.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image12.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Sonia Sharma", "Family", 16, "sonia@example.com", "+91", "9876543210", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello, I am Rahul from Mumbai.", "+919876543210");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "State Bank of India", "6011401773252312", "456", "2028-01-31");

COMMIT;

-- Guest 13
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Canada", "Ontario", "Toronto", "Yonge Street", 789, "M5B 2H1", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "emily.white@example.com", "Emily White");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image13.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image13.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Daniel White", "Family", 6, "daniel@example.com", "+1", "9876543210", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hi, I am Emily from Toronto.", "+14165551234");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Toronto-Dominion Bank", "4857680289401602", "789", "2028-03-15");

COMMIT;

-- Guest 14
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Australia", "New South Wales", "Sydney", "George Street", 567, "2000", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "liam.brown@example.com", "Liam Brown");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image14.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image14.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Olivia Brown", "Family", 17, "olivia@example.com", "+61", "412345678", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "G'day, I am Liam from Sydney.", "+61412345678");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Commonwealth Bank", "4716282351964085", "456", "2027-09-22");

COMMIT;

-- Guest 15
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("China", "Shanghai", "Shanghai", "Nanjing Road", 101, "200000", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "wei.zhang@example.com", "Wei Zhang");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image15.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image15.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Yuan Zhang", "Family", 10, "yuan@example.com", "+86", "13800138000", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "你好, I am Wei from Shanghai.", "+8613800138000");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Bank of China", "6222621234567890", "123", "2029-11-10");

COMMIT;

-- Guest 16
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Bavaria", "Munich", "Marienplatz", 234, "80331", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "lisa.schneider@example.com", "Lisa Schneider");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image16.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image16.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Mark Schneider", "Family", 5, "mark@example.com", "+49", "17612345678", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hallo, I am Lisa from Munich.", "+4917612345678");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Deutsche Bank", "5163100111122222", "345", "2028-07-05");

COMMIT;

-- Guest 17
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("South Africa", "Gauteng", "Johannesburg", "Nelson Mandela Square", 345, "2196", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "thabo.motsepe@example.com", "Thabo Motsepe");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image17.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image17.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Nomsa Motsepe", "Family", 1, "nomsa@example.com", "+27", "731234567", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Sawubona, I am Thabo from Johannesburg.", "+27731234567");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Standard Bank", "4024007134567890", "678", "2029-09-18");

COMMIT;

-- Guest 18
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Indonesia", "Java", "Jakarta", "Jalan MH Thamrin", 123, "10230", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "eka.putra@example.com", "Eka Putra");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image18.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image18.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Sari Putri", "Family", 5, "sari@example.com", "+62", "81234567890", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hello, i'm eka!", "+6281234567890");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Bank Central Asia", "4218967812345678", "789", "2027-06-30");

COMMIT;

-- Guest 19
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Spain", "Catalonia", "Barcelona", "Rambla Catalunya", 45, "08007", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "pablo.gomez@example.com", "Pablo Gomez");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image19.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image19.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("Maria Gomez", "Family", 8, "maria@example.com", "+34", "654987321", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "Hola, soy Pablo!", "+34654987321");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Banco Santander", "4111111122223333", "123", "2027-11-30");

COMMIT;

-- Guest 20
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Australia", "New South Wales", "Sydney", "George Street", 123, "2000", "guest");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "olivia.jones@example.com", "Olivia Jones");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image20.jpg");
SET @image_governid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image20.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO EmergencyContact (name, relationship, prefered_language_id, email, country_code, phone_number, owning_user_id)
VALUES ("John Jones", "Family", 1, "john@example.com", "+61", "412345678", @user_id);
SET @emergencycontact_id = LAST_INSERT_ID();

INSERT INTO Guest (user_id, profile_image_id, guest_description, phone_number)
VALUES (@user_id, @image_profile_id, "G'day, I'm Olivia!", "+61412345678");

SET @guest_id = LAST_INSERT_ID();

INSERT INTO CreditCardInformation (owning_guest_id, bank, card_number, cvc_code, expiration_date)
VALUES (@guest_id, "Commonwealth Bank", "5555555566667777", "456", "2028-02-28");

COMMIT;


/*
User, Host, Image, BankInformation, Address (SQL Transaction)

the structure of the host insert statements is very similar to the guest as they share a lot of similaritities

* i will only comment the first transaction as the rest follow the same schematic
*/
-- Host 1
START TRANSACTION;

/* Address for the Host, saved for later use */
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United Kingdom", "England", "London", "123 Main St", 123, "SW1A 1AA", "host");
SET @address_id = LAST_INSERT_ID();

/* User (super) class of the Host, saved for later use  */
INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "william.turner@hotmail.com", "William Turner");
SET @user_id = LAST_INSERT_ID();

/* Profile Image of the Host, saved for later use */
INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image21.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

/* government id image of the Host (User) */
INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image21.jpg");
SET @image_profile_id = LAST_INSERT_ID();

/* Host data, using the previously inserted data */
INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 1", "9876123469");
SET @host_id = LAST_INSERT_ID();

/* Bank Address - this information should likely be inserted differently in an actual production environment, but this works for now */
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United Kingdom", "England", "London", "456 Oak St", 456, "SW1A 1AA", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

/* BankInformaion data, using the previously inserted address data */
INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Barclays Bank plc", "9876543229", "123", @bankaddress_id);

COMMIT;

-- Host 2
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("USA", "California", "Los Angeles", "123 Main St", 123, "90001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "john.doe@gmail.com", "John Doe");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image22.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image22.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 2", "1234567890");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("USA", "California", "Los Angeles", "456 Oak St", 456, "90002", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Wells Fargo Bank","9876543210", "456", @bankaddress_id);

COMMIT;

-- Host 3
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("UK", "England", "London", "456 Elm St", 456, "SW1A 1AA", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "david.johnson@gmail.com", "David Johnson");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image23.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image23.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 3", "9876123450");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("UK", "England", "London", "789 Oak St", 789, "SW1A 1AA", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Barclays Bank plc", "5432167890", "987", @bankaddress_id);

COMMIT;

-- Host 4
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Australia", "New South Wales", "Sydney", "123 Oak St", 123, "2000", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "emma.davis@gmail.com", "Emma Davis");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image24.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image24.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 4", "9876123451");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Australia", "New South Wales", "Sydney", "456 Pine St", 456, "2000", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Commonwealth Bank of Australia", "9876543211", "456", @bankaddress_id);

COMMIT;

-- Host 5
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Bavaria", "Munich", "789 Elm St", 789, "80331", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "michael.wagner@email.com", "Michael Wagner");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image25.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image25.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 5", "9876123452");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Bavaria", "Munich", "101 Birch St", 101, "80331", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Deutsche Bank AG", "9876543212", "789", @bankaddress_id);

COMMIT;

-- Host 6
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("France", "Île-de-France", "Paris", "123 Main St", 123, "75001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "Sophie Martin@gmail.com", "Sophie Martin");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image26.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image26.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 6", "9876123453");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("France", "Île-de-France", "Paris", "456 Oak St", 456, "75001", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "BNP Paribas", "9876543213", "123", @bankaddress_id);

COMMIT;

-- Host 7
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Japan", "Tokyo", "Chiyoda", "789 Main St", 789, "100-0001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "takashi.suzuki@yahoo.jp.co", "Takashi Suzuki");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image27.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image27.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 7", "9876123454");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Japan", "Tokyo", "Chiyoda", "101 Pine St", 101, "100-0001", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Mitsubishi UFJ Financial Group", "9876543214", "789", @bankaddress_id);

COMMIT;

-- Host 8
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Brazil", "São Paulo", "São Paulo", "123 Oak St", 123, "01000-000", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "gabriela.silva@gmail.com", "Gabriela Silva");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image28.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image28.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 8", "9876123455");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Brazil", "São Paulo", "São Paulo", "456 Elm St", 456, "01000-000", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Banco do Brasil", "9876543215", "123", @bankaddress_id);

COMMIT;

-- Host 9
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Italy", "Lazio", "Rome", "123 Main St", 123, "00186", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "alessandro.rossi@email.com", "Alessandro Rossi");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image29.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image29.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 9", "9876123456");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Italy", "Lazio", "Rome", "456 Oak St", 456, "00186", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "UniCredit S.p.A.", "9876543216", "123", @bankaddress_id);

COMMIT;

-- Host 10
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Spain", "Madrid", "Madrid", "789 Elm St", 789, "28001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "isabella.fernandez@email.com", "Isabella Fernandez");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image30.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image30.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 10", "9876123457");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Spain", "Madrid", "Madrid", "101 Birch St", 101, "28001", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Banco Santander", "9876543217", "789", @bankaddress_id);

COMMIT;

-- Host 11
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Berlin", "Berlin", "123 Oak St", 123, "10115", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "maximilian.müller@email.com", "Maximilian Müller");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image31.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image31.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 11", "9876123458");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Berlin", "Berlin", "456 Elm St", 456, "10115", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Commerzbank AG", "9876543218", "123", @bankaddress_id);

COMMIT;

-- Host 12
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Netherlands", "North Holland", "Amsterdam", "123 Main St", 123, "1012 AB", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "sophie.devries@gmail.com", "Sophie de Vries");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image32.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image32.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 12", "9876123459");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Netherlands", "North Holland", "Amsterdam", "456 Oak St", 456, "1012 AB", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "ING Bank", "9876543219", "123", @bankaddress_id);

COMMIT;

-- Host 13
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "California", "Los Angeles", "123 Main St", 123, "90001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "christopher.johnson@email.com", "Christopher Johnson");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image33.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image33.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 13", "9876123460");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "California", "Los Angeles", "456 Oak St", 456, "90001", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Wells Fargo Bank", "9876543220", "123", @bankaddress_id);

COMMIT;


-- Host 14
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Canada", "Ontario", "Toronto", "123 Main St", 123, "M5V 1A1", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "emily.thompson@email.com", "Emily Thompson");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image34.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image34.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 14", "9876123461");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Canada", "Ontario", "Toronto", "456 Oak St", 456, "M5V 1A1", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Royal Bank of Canada (RBC)", "9876543221", "123", @bankaddress_id);

COMMIT;

-- Host 15
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "New York", "New York City", "123 Main St", 123, "10001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "michael.davis@gmail.com", "Michael Davis");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image35.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image35.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 15", "9876123462");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "New York", "New York City", "456 Oak St", 456, "10001", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "JPMorgan Chase & Co.", "9876543222", "123", @bankaddress_id);

COMMIT;

-- Host 16
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Japan", "Tokyo", "Tokyo", "123 Main St", 123, "100-0004", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "haruto.tanaka@yahoo.jp.co", "Haruto Tanaka");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image36.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image36.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 16", "9876123463");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Japan", "Tokyo", "Tokyo", "456 Oak St", 456, "100-0004", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Mitsubishi UFJ Financial Group (MUFG)", "9876543223", "123", @bankaddress_id);

COMMIT;

-- Host 17
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("France", "Île-de-France", "Paris", "123 Main St", 123, "75001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "camille.lefevre@gmail.com", "Camille Lefevre");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image37.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image37.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 17", "9876123464");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("France", "Île-de-France", "Paris", "456 Oak St", 456, "75001", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "BNP Paribas", "9876543224", "123", @bankaddress_id);

COMMIT;

-- Host 18
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Bavaria", "Munich", "123 Main St", 123, "80331", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "lukas.schneider@email.com", "Lukas Schneider");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image38.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image38.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 18", "9876123465");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Bavaria", "Munich", "456 Oak St", 456, "80331", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Deutsche Bank AG", "9876543225", "123", @bankaddress_id);

COMMIT;

-- Host 19
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Spain", "Catalonia", "Barcelona", "123 Main St", 123, "08001", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "elena.gomez@email.com", "Elena Gomez");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image39.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image39.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 19", "9876123466");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Spain", "Catalonia", "Barcelona", "456 Oak St", 456, "08001", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "anco Santander", "9876543226", "123", @bankaddress_id);

COMMIT;

-- Host 20
START TRANSACTION;

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Australia", "New South Wales", "Sydney", "123 Main St", 123, "2000", "host");
SET @address_id = LAST_INSERT_ID();

INSERT INTO User (address_id, email, legal_name)
VALUES (@address_id, "oliver.thompson@email.com", "Oliver Thompson");
SET @user_id = LAST_INSERT_ID();

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/governmentid_image40.jpg");
SET @image_governmentid_id = LAST_INSERT_ID();
UPDATE User SET governmentid_image_id = @image_governmentid_id WHERE user_id = @user_id;

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (@user_id, "https://airbnb.com/images/profile_image40.jpg");
SET @image_profile_id = LAST_INSERT_ID();

INSERT INTO Host (user_id, profile_image_id, host_description, phone_number)
VALUES (@user_id, @image_profile_id, "Host description for host 20", "9876123468");
SET @host_id = LAST_INSERT_ID();

INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Australia", "New South Wales", "Sydney", "456 Oak St", 456, "2000", "bank");
SET @bankaddress_id = LAST_INSERT_ID();

INSERT INTO BankInformation (owning_host_id, name, account_nr, code, address_id)
VALUES (@host_id, "Commonwealth Bank of Australia (CBA)", "9876543228", "123", @bankaddress_id);

COMMIT;


/* UserReview
- The UserReview is written by a host to the profile of a guest who stayed at their property
- The author therefore has to be a host, while the user the review is written to has to be a guest
- There are no other restrictions except that both id's have to be valid
*/
-- UserReview 1
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (1, 21, "They were a lovely guest, we hope to meet you again some time!");

-- UserReview 2
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (1, 23, "There were no problems, and they left the property clean and in order.");

-- UserReview 3
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (1, 24, "Thanks for your stay!");

-- UserReview 4
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (5, 36, "There were no problems, and they left the property clean and in order.");

-- UserReview 5
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (5, 39, "Thanks for your stay!");

-- UserReview 6
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (7, 21, "They were a lovely guest, we hope to meet you again some time!");

-- UserReview 7
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (7, 27, "There were no problems, and they left the property clean and in order.");

-- UserReview 8
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (7, 35, "They were a lovely guest, we hope to meet you again some time!");

-- UserReview 9
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (7, 39, "Thanks for your stay!");

-- UserReview 10
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (13, 21, "There were no problems, and they left the property clean and in order.");

-- UserReview 11
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (13, 28, "There were no problems, and they left the property clean and in order.");

-- UserReview 12
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (13, 29, "They were a lovely guest, we hope to meet you again some time!");

-- UserReview 13
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (14, 40, "Thanks for your stay!");

-- UserReview 14
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (15, 31, "There were no problems, and they left the property clean and in order.");

-- UserReview 15
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (15, 32, "They were a lovely guest, we hope to meet you again some time!");

-- UserReview 16
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (16, 21, "Thanks for your stay!");

-- UserReview 17
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (16, 26, "There were no problems, and they left the property clean and in order.");

-- UserReview 18
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (17, 32, "They were a lovely guest, we hope to meet you again some time!");

-- UserReview 19
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (19, 29, "There were no problems, and they left the property clean and in order.");

-- UserReview 20
INSERT INTO UserReview (user_id, author_user_id, comment)
VALUES (19, 30, "They were a lovely guest, we hope to meet you again some time!");


/* Chat
- the chat table is hard to make sense of without the frontend, the chat table holds the ids of the two users chatting,
the owner being the initiator of the chat
- the id's are referenced by the messages to string together the whole chat
- important is that the user id's have to be valid and they cannot be identical, as a user can't chat with themselves
- the partner/owner naming is just for context and does not have to be regarded when requesting a chat
(otherwise duplicates would be needed, which makes no sense)
*/
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (1, 2);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (1, 3);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (1, 25);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (1, 6);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (2, 37);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (2, 8);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (5, 6);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (5, 9);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (5, 12);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (7, 8);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (7, 9);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (7, 10);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (15, 22);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (15, 23);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (15, 36);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (29, 10);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (29, 12);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (27, 31);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (31, 32);
INSERT INTO Chat (chat_partner_id, owner_user_id) VALUES (31, 37);


/* Message 
- the messages hold the individual text of a message and their owning user, they reference the owning chat,
- their timestamp is used to recreate the chat when requried
*/
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 1", 1, 1);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 2", 1, 2);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 3", 2, 3);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 4", 1, 4);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 5", 3, 5);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 6", 4, 6);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 7", 6, 7);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 8", 4, 8);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 9", 6, 9);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 10", 9, 10);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 11", 13, 11);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 12", 14, 11);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 13", 16, 12);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 14", 17, 12);
INSERT INTO Message (text, author_user_id, owning_chat_id) VALUES ("Content for message 15", 16, 12);

/* examples with images - the same user_id must be used for the image and the chat message */
INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (1, "https://airbnb.com/images/chat_message_image1.jpg");
SET @message_image_id = LAST_INSERT_ID();
INSERT INTO Message (image_id, author_user_id, owning_chat_id) VALUES (@message_image_id, 9, 12);

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (1, "https://airbnb.com/images/chat_message_image1.jpg");
SET @message_image_id = LAST_INSERT_ID();
INSERT INTO Message (image_id, author_user_id, owning_chat_id) VALUES (@message_image_id, 18, 13);

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (1, "https://airbnb.com/images/chat_message_image1.jpg");
SET @message_image_id = LAST_INSERT_ID();
INSERT INTO Message (image_id, author_user_id, owning_chat_id) VALUES (@message_image_id, 18, 14);

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (1, "https://airbnb.com/images/chat_message_image1.jpg");
SET @message_image_id = LAST_INSERT_ID();
INSERT INTO Message (image_id, author_user_id, owning_chat_id) VALUES (@message_image_id, 19, 15);

INSERT INTO Image (uploaded_by_user_id, image_url)
VALUES (1, "https://airbnb.com/images/chat_message_image1.jpg");
SET @message_image_id = LAST_INSERT_ID();
INSERT INTO Message (image_id, author_user_id, owning_chat_id) VALUES (@message_image_id, 29, 15);


/* PropertyListing 
- the propertylisting is referenced by the previously created tables for the relevant categoy, amenities, and houserules
- the structure of the inserts is fairly simple, we first insert the address data and then use the insert id for the propertylisting
- for the other attributes we simlpy enter semi-random dummy data for testing/demonstration purposes 
*/
-- PropertyListing 1
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "New York", "Brooklyn", "Elm Street", "1234", "11201", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (1, "Cozy Studio Apartment", @property_address_id, 1, 1, 1, 2, 50.00, 1, "15:00:00", "11:00:00");

-- PropertyListing 2
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "California", "San Francisco", "Oak Avenue", "5678", "94110", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (1, "Tranquil Retreat Cottage", @property_address_id, 1, 1, 1, 2, 50.00, 1, "15:00:00", "11:00:00");

-- PropertyListing 3
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "California", "Los Angeles", "Maple Drive", "910", "90046", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (1, "Spacious Loft in the City", @property_address_id, 2, 2, 1, 4, 120.00, 1, "16:00:00", "10:00:00");

-- PropertyListing 4
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Illinois", "Chicago", "Pine Lane", "123", "60611", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (1, "Luxurious Beachfront Villa", @property_address_id, 3, 4, 3, 6, 300.00, 1, "14:00:00", "12:00:00");

-- PropertyListing 5
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Florida", "Miami", "Birch Street", "456", "33133", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (6, "Mountain Retreat Cabin", @property_address_id, 4, 2, 1, 3, 80.00, 1, "12:00:00", "10:00:00");

-- PropertyListing 6
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Texas", "Austin", "Cedar Road", "789", "78701", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (7, "Historic Townhouse", @property_address_id, 5, 3, 2, 5, 150.00, 1, "15:00:00", "11:00:00");

-- PropertyListing 7
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Washington", "Seattle", "Redwood Boulevard", "1011", "98101", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (9, "Rustic Countryside Cottage", @property_address_id, 1, 2, 1, 3, 90.00, 2, "13:00:00", "10:00:00");

-- PropertyListing 8
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Georgia", "Atlanta", "Maple Court", "1213", "30308", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (11, "Modern City View Condo", @property_address_id, 2, 1, 1, 2, 70.00, 3, "14:00:00", "12:00:00");

-- PropertyListing 9
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Colorado", "Denver", "Cedar Avenue", "1415", "80202", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (12, "Secluded Lakeside Cabin", @property_address_id, 3, 3, 2, 4, 120.00, 2, "16:00:00", "10:00:00");

-- PropertyListing 10
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Oregon", "Portland", "Oak Lane", "1617", "97209", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (15, "Charming Historic Cottage", @property_address_id, 4, 1, 1, 2, 60.00, 3, "12:00:00", "11:00:00");

-- PropertyListing 11
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United States", "Massachusetts", "Boston", "Elm Road", "1819", "02110", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (16, "Luxury Loft Downtown", @property_address_id, 2, 3, 2, 4, 150.00, 1, "15:00:00", "11:00:00");

-- PropertyListing 12
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Canada", "Ontario", "Toronto", "Maple Street", "123", "M5A 1T1", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (17, "Seaside Villa Retreat", @property_address_id, 1, 4, 3, 6, 250.00, 2, "16:00:00", "10:00:00");

-- PropertyListing 13
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("United Kingdom", "England", "London", "Baker Street", "456", "W1U 6TY", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (17, "Cozy Mountain Cabin", @property_address_id, 3, 2, 1, 2, 100.00, 3, "14:00:00", "12:00:00");

-- PropertyListing 14
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("France", "Île-de-France", "Paris", "Champs-Élysées", "789", "75008", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time)
VALUES (18, "Historic Downtown Charm", @property_address_id, 2, 1, 1, 3, 120.00, 1, "13:00:00", "11:30:00");

/* added some additional dummy data for demonstration purposes */
-- PropertyListing 15
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Australia", "New South Wales", "Sydney", "Bondi Road", "1011", "2000", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time, average_rating, total_nr_of_ratings)
VALUES (18, "Modern Skyline View", @property_address_id, 1, 2, 2, 5, 180.00, 2, "15:30:00", "10:30:00", 4.9, 62);

-- PropertyListing 16
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Germany", "Berlin", "Berlin", "Brandenburg Avenue", "1213", "10117", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time, average_rating, total_nr_of_ratings)
VALUES (18, "Rural Farmhouse Retreat", @property_address_id, 3, 3, 2, 4, 160.00, 3, "14:00:00", "12:00:00", 4.4, 34);

-- PropertyListing 17
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Japan", "Tokyo", "Shibuya-ken", "Shibuya Street", "1415", "150-0042", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time, average_rating, total_nr_of_ratings)
VALUES (19, "Downtown Penthouse Suite", @property_address_id, 1, 3, 2, 4, 200.00, 1, "16:00:00", "10:00:00", 4.7, 51);

-- PropertyListing 18
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Brazil", "São Paulo", "São Paulo", "Avenida Paulista", "1617", "01310-100", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time, average_rating, total_nr_of_ratings)
VALUES (20, "Tranquil Lakeside Cabin", @property_address_id, 3, 2, 1, 3, 130.00, 2, "14:30:00", "11:30:00", 4.3, 46);

-- PropertyListing 19
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("Netherlands", "North Holland", "Amsterdam", "Keizersgracht", "2223", "1015 CK", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time, average_rating, total_nr_of_ratings)
VALUES (20, "Urban Oasis Loft", @property_address_id, 1, 2, 1, 5, 170.00, 3, "15:00:00", "11:00:00", 4.8, 58);

-- PropertyListing 20
INSERT INTO Address (country, state, city, street, house_nr, zip_code, address_type)
VALUES ("India", "Maharashtra", "Mumbai", "Marine Drive", "2021", "400020", "property");
SET @property_address_id = LAST_INSERT_ID();
INSERT INTO PropertyListing (owning_host_id, name, address_id, property_type_id, bedroom_count, bathroom_count, available_booking_slots, price_per_night, currency_id, check_in_time, check_out_time, average_rating, total_nr_of_ratings)
VALUES (20, "Ski Chalet Retreat", @property_address_id, 3, 4, 3, 6, 220.00, 1, "16:00:00", "10:00:00", 4.6, 39);


/* Wishlist
- the wishlist is the relation that stores the data relevant to the wishlists
- the wishlist is referenced by the wishlist_propertylisting relation to link the properties in the list with the list itself 
- similar to the chat/messages, it is hard to visualize the wishlist tables without the frontend
*/
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 1", TRUE, 1);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 2", FALSE, 2);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 3", TRUE, 3);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 4", FALSE, 4);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 5", TRUE, 5);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 6", TRUE, 6);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 7", FALSE, 7);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 8", TRUE, 8);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 9", TRUE, 9);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 10", TRUE, 10);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 11", FALSE, 11);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 12", TRUE, 12);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 13", FALSE, 13);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 14", FALSE, 14);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 15", TRUE, 15);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 16", FALSE, 16);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 17", TRUE, 17);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 18", FALSE, 18);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 19", FALSE, 19);
INSERT INTO Wishlist (name, private, owning_user_id) VALUES ("wishlist 20", FALSE, 20);


/* Wishlist_propertylisting
- this is a relation table that links the wishlists and the properties together
- the wishlist_id references the previous Wishlist relation
*/
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (1, 1);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (2, 1);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (3, 1);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (4, 1);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (5, 1);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (10, 2);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (11, 2);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (12, 2);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (13, 2);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (14, 2);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (15, 2);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (6, 3);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (7, 4);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (8, 5);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (9, 6);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (12, 7);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (13, 7);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (16, 7);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (17, 7);
INSERT INTO Wishlist_PropertyListing (propertylisting_id, wishlist_id) VALUES (18, 7);


/* Amenity
- this relation is essentially a list of all the amenities that are available
- this table will not be changed often, and if it does then it will likely be an admin
- i selected some example amenities that actually exist in the airbnb application to serve as dummy data
*/
INSERT INTO Amenity (name, icon_url) VALUE ("Kitchen", "https://airbnb.com/images/amenity_icon1.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Hair dryer", "https://airbnb.com/images/amenity_icon2.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Iron", "https://airbnb.com/images/amenity_icon3.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Central heating", "https://airbnb.com/images/amenity_icon4.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Smoke alarm", "https://airbnb.com/images/amenity_icon5.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Wifi", "https://airbnb.com/images/amenity_icon6.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Refrigerator", "https://airbnb.com/images/amenity_icon7.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Microwave", "https://airbnb.com/images/amenity_icon8.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Dishwasher", "https://airbnb.com/images/amenity_icon9.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Coffee", "https://airbnb.com/images/amenity_icon10.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Self check-in", "https://airbnb.com/images/amenity_icon11.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Fireplace", "https://airbnb.com/images/amenity_icon12.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Lockbox", "https://airbnb.com/images/amenity_icon13.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Air conditioning", "https://airbnb.com/images/amenity_icon14.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Carbon monoxide alarm", "https://airbnb.com/images/amenity_icon15.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("TV", "https://airbnb.com/images/amenity_icon16.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Fire extinguisher", "https://airbnb.com/images/amenity_icon17.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Freezer", "https://airbnb.com/images/amenity_icon18.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Free parking on premises", "https://airbnb.com/images/amenity_icon19.ico");
INSERT INTO Amenity (name, icon_url) VALUE ("Security cameras on property", "https://airbnb.com/images/amenity_icon20.ico");


/* Property_Amenity
- this relation links the properties with their respective amentities
- each propertylisting will essentially have multiple entries with its id in this table,
each pointing at a the different amenities selected in the propertylisting
*/
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (1,1);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (1,5);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (1,7);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (1,9);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (1,13);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (2,3);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (2,7);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (2,8);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (2,1);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (2,2);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (2,3);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (2,4);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (3,1);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (3,9);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (3,16);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (4,7);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (4,14);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (5,5);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (6,16);
INSERT INTO Property_Amenity (property_id, amenity_id) VALUES (6,18);


/* Category
- this relation is essentially the same as the amenity table, just with categories
*/
INSERT INTO Category (name, icon_url) VALUE ("Lakefront", "https://airbnb.com/images/category_icon1.ico");
INSERT INTO Category (name, icon_url) VALUE ("Beachfront", "https://airbnb.com/images/category_icon2.ico");
INSERT INTO Category (name, icon_url) VALUE ("Countryside", "https://airbnb.com/images/category_icon3.ico");
INSERT INTO Category (name, icon_url) VALUE ("Cabins", "https://airbnb.com/images/category_icon4.ico");
INSERT INTO Category (name, icon_url) VALUE ("Trending", "https://airbnb.com/images/category_icon5.ico");
INSERT INTO Category (name, icon_url) VALUE ("Historical Homes", "https://airbnb.com/images/category_icon6.ico");
INSERT INTO Category (name, icon_url) VALUE ("Houseboats", "https://airbnb.com/images/category_icon7.ico");
INSERT INTO Category (name, icon_url) VALUE ("Caves", "https://airbnb.com/images/category_icon8.ico");
INSERT INTO Category (name, icon_url) VALUE ("Rooms", "https://airbnb.com/images/category_icon9.ico");
INSERT INTO Category (name, icon_url) VALUE ("Treehouses", "https://airbnb.com/images/category_icon10.ico");
INSERT INTO Category (name, icon_url) VALUE ("Camping", "https://airbnb.com/images/category_icon11.ico");
INSERT INTO Category (name, icon_url) VALUE ("Campers", "https://airbnb.com/images/category_icon12.ico");
INSERT INTO Category (name, icon_url) VALUE ("Islands", "https://airbnb.com/images/category_icon13.ico");
INSERT INTO Category (name, icon_url) VALUE ("Ryokans", "https://airbnb.com/images/category_icon14.ico");
INSERT INTO Category (name, icon_url) VALUE ("Barns", "https://airbnb.com/images/category_icon15.ico");
INSERT INTO Category (name, icon_url) VALUE ("Towers", "https://airbnb.com/images/category_icon16.ico");
INSERT INTO Category (name, icon_url) VALUE ("Desert", "https://airbnb.com/images/category_icon17.ico");
INSERT INTO Category (name, icon_url) VALUE ("Riads", "https://airbnb.com/images/category_icon18.ico");
INSERT INTO Category (name, icon_url) VALUE ("Skiing", "https://airbnb.com/images/category_icon19.ico");
INSERT INTO Category (name, icon_url) VALUE ("Mansion", "https://airbnb.com/images/category_icon20.ico");


/* Property_Category
- refer to the property_amenity relation above for an explanation
*/
INSERT INTO Property_Category (property_id, category_id) VALUES (1, 1);
INSERT INTO Property_Category (property_id, category_id) VALUES (1, 2);
INSERT INTO Property_Category (property_id, category_id) VALUES (1, 3);
INSERT INTO Property_Category (property_id, category_id) VALUES (1, 4);
INSERT INTO Property_Category (property_id, category_id) VALUES (1, 5);
INSERT INTO Property_Category (property_id, category_id) VALUES (2, 1);
INSERT INTO Property_Category (property_id, category_id) VALUES (2, 2);
INSERT INTO Property_Category (property_id, category_id) VALUES (2, 3);
INSERT INTO Property_Category (property_id, category_id) VALUES (2, 4);
INSERT INTO Property_Category (property_id, category_id) VALUES (2, 5);
INSERT INTO Property_Category (property_id, category_id) VALUES (3, 11);
INSERT INTO Property_Category (property_id, category_id) VALUES (3, 12);
INSERT INTO Property_Category (property_id, category_id) VALUES (3, 13);
INSERT INTO Property_Category (property_id, category_id) VALUES (3, 14);
INSERT INTO Property_Category (property_id, category_id) VALUES (3, 15);
INSERT INTO Property_Category (property_id, category_id) VALUES (4, 1);
INSERT INTO Property_Category (property_id, category_id) VALUES (4, 3);
INSERT INTO Property_Category (property_id, category_id) VALUES (4, 5);
INSERT INTO Property_Category (property_id, category_id) VALUES (5, 4);
INSERT INTO Property_Category (property_id, category_id) VALUES (5, 19);


/* HouseRule
- refer to the property_amenity relation above for an explanation
*/
INSERT INTO HouseRule (name, icon_url) VALUE ("No pets", "https://airbnb.com/images/houserule_icon1.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("No parties or events", "https://airbnb.com/images/houserule_icon2.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("No unregistered guest", "https://airbnb.com/images/houserule_icon3.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("No Smoking", "https://airbnb.com/images/houserule_icon4.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Noise curfew", "https://airbnb.com/images/houserule_icon5.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("No food or drinks in bedroom", "https://airbnb.com/images/houserule_icon6.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("No smoking inside the property", "https://airbnb.com/images/houserule_icon7.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Remove your Shoes", "https://airbnb.com/images/houserule_icon8.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Checkout times", "https://airbnb.com/images/houserule_icon9.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Checkin times", "https://airbnb.com/images/houserule_icon10.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("The lost key fee", "https://airbnb.com/images/houserule_icon11.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Suitable for toddlers and children under 12", "https://airbnb.com/images/houserule_icon12.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("No unregistered guests allowed", "https://airbnb.com/images/houserule_icon13.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Turn off the AC when you go out", "https://airbnb.com/images/houserule_icon14.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("No illegal substances allowed on the premises", "https://airbnb.com/images/houserule_icon15.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Please take the trash out before you leave", "https://airbnb.com/images/houserule_icon16.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Please don’t rearrange the furniture", "https://airbnb.com/images/houserule_icon17.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Please take care of the furnishings. You have to pay for damages that exceed the security deposit", "https://airbnb.com/images/houserule_icon18.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("Do the dishes?", "https://airbnb.com/images/houserule_icon19.ico");
INSERT INTO HouseRule (name, icon_url) VALUE ("2 Guests maximum", "https://airbnb.com/images/houserule_icon20.ico");


/* Property_HouseRule
- refer to the property_amenity relation above for an explanation
*/
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (1,3);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (1,15);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (2,1);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (2,7);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (2,13);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (3,1);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (3,2);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (3,3);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (3,4);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (3,5);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (4,6);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (4,12);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (4,18);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (5,11);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (5,17);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (6,3);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (6,7);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (6,9);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (7,12);
INSERT INTO Property_HouseRule (property_id, houserule_id) VALUES (8,19);


/* PropertyType
- refer to the property_amenity relation above for an explanation
- this is the only table i cannot insert 20 data entries with a good conciense as there are not enough propertytypes that exist in the application.
i hope it is acceptable to not make add duplicates or unsensible entries
*/
INSERT INTO PropertyType (name, icon_url) VALUES ("Entire place", "https://airbnb.com/images/propertytype_icon1.ico");
INSERT INTO PropertyType (name, icon_url) VALUES ("Private room", "https://airbnb.com/images/propertytype_icon2.ico");
INSERT INTO PropertyType (name, icon_url) VALUES ("Hotel room", "https://airbnb.com/images/propertytype_icon3.ico");
INSERT INTO PropertyType (name, icon_url) VALUES ("Shared room", "https://airbnb.com/images/propertytype_icon4.ico");


/* Property Review 
- the propertyreview table is very simple, in that it only contains two foreign keys, which are easy to explain
- the property_id is the property the review is about, while the author_guest_id is the guest who published the review
- the other attributes are simple and obvious
*/
-- PropertyReview 1
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (1, 1, 4, 4, 5, 4, 5, 4, "We had a wonderful stay at this place!");

-- PropertyReview 2
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (2, 1, 2, 3, 3, 2, 4, 3, "This place is okay for the price, would stay again.");

-- PropertyReview 3
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (3, 1, 2, 1, 1, 1, 1, 2, "I can't recommend this place unfortunately.");

-- PropertyReview 4
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (4, 2, 5, 4, 4, 4, 5, 4, "We had a wonderful stay at this place!");

-- PropertyReview 5
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (5, 2, 3, 2, 3, 2, 2, 2, "This place is okay for the price, would stay again.");

-- PropertyReview 6
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (6, 3, 4, 4, 5, 4, 5, 4, "We had a wonderful stay at this place!");

-- PropertyReview 7
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (7, 6, 3, 4, 4, 4, 5, 4, "We had a wonderful stay at this place!");

-- PropertyReview 8
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (8, 6, 2, 4, 5, 1, 3, 2, "We had a wonderful stay at this place!");

-- PropertyReview 9
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (9, 7, 3, 3, 3, 3, 3, 3, "We had a wonderful stay at this place!");

-- PropertyReview 10
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (10, 9, 4, 4, 5, 4, 5, 4, "We had a wonderful stay at this place!");

-- PropertyReview 11
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (11, 10, 5, 5, 5, 5, 5, 5, "We had a wonderful stay at this place!");

-- PropertyReview 12
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (12, 1, 1, 1, 2, 2, 2, 3, "I can't recommend this place unfortunately.");

-- PropertyReview 13
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (13, 13, 4, 4, 5, 4, 5, 4, "We had a wonderful stay at this place!");

-- PropertyReview 14
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (14, 13, 3, 3, 2, 3, 2, 3, "This place is okay for the price, would stay again.");

-- PropertyReview 15
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (15, 13, 2, 3, 3, 3, 3, 5, "This place is okay for the price, would stay again.");

-- PropertyReview 16
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (16, 14, 5, 4, 5, 4, 4, 5, "We had a wonderful stay at this place!");

-- PropertyReview 17
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (17, 16, 4, 4, 5, 4, 5, 4, "We had a wonderful stay at this place!");

-- PropertyReview 18
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (18, 16, 2, 3, 2, 2, 2, 4, "This place is okay, would stay again.");

-- PropertyReview 19
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (19, 17, 1, 2, 1, 1, 2, 1, "I don't recommend.");

-- PropertyReview 20
INSERT INTO PropertyReview (property_id, author_guest_id, cleanliness_score, accuracy_score, check_in_score, communication_score, location_score, value_score, comment)
VALUES (20, 19, 3, 4, 3, 3, 4, 5, "This place is quite alright!");


/* Booking
- the booking relation holds data related to the booking of a property by a guest
- the cancellation data is obviously optional and can be NULL until updated if a cancellation occurs 
*/
-- Booking 1
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (250.00, 1, '2024-03-15 12:00:00', '2024-03-20 10:00:00', 'ABCD1234', FALSE, NULL, NULL, 1, 2, 3);

-- Booking 2
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (150.00, 2, '2024-04-10 15:00:00', '2024-04-15 11:00:00', 'WXYZ5678', FALSE, NULL, NULL, 2, 3, 4);

-- Booking 3
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (180.50, 1, '2024-05-20 14:30:00', '2024-05-25 10:30:00', 'EFGH9012', TRUE, '2024-05-15', 120.00, 3, 4, 5);

-- Booking 4
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (200.00, 2, '2024-06-05 16:00:00', '2024-06-10 10:00:00', 'IJKL3456', FALSE, NULL, NULL, 4, 5, 6);

-- Booking 5
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (120.00, 3, '2024-07-15 14:00:00', '2024-07-20 12:00:00', 'MNOP7890', FALSE, NULL, NULL, 5, 6, 7);

-- Booking 6
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (280.00, 1, '2024-08-10 12:00:00', '2024-08-15 10:00:00', 'QRST1234', FALSE, NULL, NULL, 6, 7, 8);

-- Booking 7
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (160.00, 2, '2024-09-05 15:30:00', '2024-09-10 11:30:00', 'UVWX5678', FALSE, NULL, NULL, 7, 8, 9);

-- Booking 8
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (220.50, 3, '2024-10-20 14:45:00', '2024-10-25 10:45:00', 'YZAB9012', TRUE, '2024-10-15', 150.00, 8, 9, 10);

-- Booking 9
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (190.00, 1, '2024-11-05 16:15:00', '2024-11-10 10:15:00', 'BCDE3456', FALSE, NULL, NULL, 9, 10, 11);

-- Booking 10
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (140.00, 2, '2024-12-15 13:30:00', '2024-12-20 12:30:00', 'EFGH7890', FALSE, NULL, NULL, 10, 11, 12);

-- Booking 11
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (300.00, 3, '2025-01-25 14:00:00', '2025-01-30 12:00:00', 'IJKL1234', FALSE, NULL, NULL, 11, 12, 13);

-- Booking 12
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (180.00, 1, '2025-02-10 12:30:00', '2025-02-15 10:30:00', 'MNOP5678', FALSE, NULL, NULL, 12, 13, 14);

-- Booking 13
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (250.50, 2, '2025-03-20 14:45:00', '2025-03-25 10:45:00', 'QRST9012', TRUE, '2025-03-15', 180.00, 13, 14, 15);

-- Booking 14
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (200.00, 3, '2025-04-05 16:15:00', '2025-04-10 10:15:00', 'UVWX3456', FALSE, NULL, NULL, 14, 15, 16);

-- Booking 15
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (280.00, 1, '2025-05-15 13:30:00', '2025-05-20 12:30:00', 'YZAB7890', FALSE, NULL, NULL, 15, 16, 17);

-- Booking 16
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (160.00, 2, '2025-06-25 14:00:00', '2025-06-30 12:00:00', 'BCDE1234', FALSE, NULL, NULL, 16, 17, 18);

-- Booking 17
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (220.50, 3, '2025-07-10 12:30:00', '2025-07-15 10:30:00', 'EFGH5678', TRUE, '2025-07-05', 200.00, 17, 18, 19);

-- Booking 18
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (190.00, 1, '2025-08-05 16:00:00', '2025-08-10 10:00:00', 'IJKL9012', FALSE, NULL, NULL, 18, 19, 20);

-- Booking 19
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (140.00, 2, '2025-09-15 14:30:00', '2025-09-20 12:30:00', 'MNOP3456', FALSE, NULL, NULL, 19, 1, 5);

-- Booking 20
INSERT INTO Booking (total_price, currency_id, booking_start_date, booking_end_date, confirmation_code, cancelled, cancellation_date, refund_amount, propertylisting_id, host_id, guest_id)
VALUES (300.00, 3, '2025-10-25 13:00:00', '2025-10-30 11:00:00', 'QRST7890', FALSE, NULL, NULL, 20, 1, 7);


/* Transaction
- this table again does not make a whole lot of sense without the application actually pulling in the relevant data from their respective tables
- the table is intended to be the base lookup table for purchase transaction data 
*/
-- Transaction 1
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (1, 2, 3);

-- Transaction 2
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (2, 3, 4);

-- Transaction 3
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (3, 4, 5);

-- Transaction 4
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (4, 5, 6);

-- Transaction 5
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (5, 6, 7);

-- Transaction 6
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (6, 7, 8);

-- Transaction 7
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (7, 8, 9);

-- Transaction 8
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (8, 9, 10);

-- Transaction 9
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (9, 10, 11);

-- Transaction 10
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (10, 11, 12);

-- Transaction 11
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (11, 12, 13);

-- Transaction 12
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (12, 13, 14);

-- Transaction 13
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (13, 14, 15);

-- Transaction 14
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (14, 15, 16);

-- Transaction 15
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (15, 16, 17);

-- Transaction 16
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (16, 17, 18);

-- Transaction 17
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (17, 18, 19);

-- Transaction 18
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (18, 19, 20);

-- Transaction 19
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (19, 1, 5);

-- Transaction 20
INSERT INTO Transaction (booking_id, bankinformation_id, creditcardinformation_id)
VALUES (20, 1, 7);
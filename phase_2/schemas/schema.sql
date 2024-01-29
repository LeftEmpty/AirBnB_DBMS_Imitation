/*
This schema will create all tables necessary for the database,
the code should be self-explanatory but will be supplemented with further documentation in the form of
an (updated) ER diagram and a ppt presentation, which are provided with the submission

- (the lengths of the varchars were decided on after researching typical edge cases)

I used the "MySQL 8.1 Command Line Client" for testing, it should of course work in any environment that supports MySQL 8.1 
*/

/* create database (with conditional drop statement for easier testing) */
DROP DATABASE IF EXISTS ts_32111919;
CREATE DATABASE ts_32111919;
use ts_32111919;

CREATE TABLE Address (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(128) NOT NULL,
    state VARCHAR(128) NOT NULL,
    city VARCHAR(128) NOT NULL,
    street VARCHAR(128) NOT NULL,
    house_nr INT NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    address_type VARCHAR(32)
);

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    address_id INT, /*FK*/
    email VARCHAR(128) NOT NULL,
    legal_name VARCHAR(64) NOT NULL,
    governmentid_image_id INT
);

CREATE TABLE Image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    uploaded_by_user_id INT NOT NULL, /*FK*/
    image_url varchar(1024) NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (uploaded_by_user_id) REFERENCES User(user_id)
);

CREATE TABLE Host (
    host_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE NOT NULL, /*FK*/
    profile_image_id INT UNIQUE NOT NULL, /*FK*/
    host_description TEXT NOT NULL,
    phone_number VARCHAR(16)
);

CREATE TABLE Guest (
    guest_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE NOT NULL, /*FK*/
    profile_image_id INT UNIQUE NOT NULL, /*FK*/
    guest_description TEXT,
    phone_number VARCHAR(16) NOT NULL
);

CREATE TABLE UserReview (
    userreview_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL, /*FK*/
    author_user_id INT NOT NULL, /*FK*/
    comment VARCHAR(2000),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (author_user_id) REFERENCES User(user_id)
);

CREATE TABLE PropertyListing (
    propertylisting_id INT AUTO_INCREMENT PRIMARY KEY,
    owning_host_id INT NOT NULL, /*FK*/
    name VARCHAR(255) NOT NULL,
    address_id INT UNIQUE NOT NULL, /*FK*/
    property_type_id INT, /*FK*/
    bedroom_count INT,
    bathroom_count INT,
    available_booking_slots INT,
    price_per_night DECIMAL(10,2),
    currency_id INT NOT NULL DEFAULT 1, /*FK*/
    check_in_time TIME DEFAULT '14:00',
    check_out_time TIME DEFAULT '10:00',
    average_rating DECIMAL(2,1) DEFAULT 0, /* should get updated by the applciation when a new review is published, is initially 0 */
    total_nr_of_ratings INT DEFAULT 0, /* should get updated/incremented by the applciation when a new review is published, is initially 0 */

    FOREIGN KEY (owning_host_id) REFERENCES Host(host_id)
);

CREATE TABLE PropertyReview (
    propertyreview_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL, /*FK*/
    author_guest_id INT NOT NULL, /*FK*/
    cleanliness_score INT,
    accuracy_score INT,
    check_in_score INT,
    communication_score INT,
    location_score INT,
    value_score INT,
    comment VARCHAR(2000),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property_Category (
    property_category_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT, /*FK*/
    category_id INT /*FK*/
);

CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    icon_url VARCHAR(1024),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Property_Amenity (
    property_amenity_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT, /*FK*/ 
    amenity_id INT /*FK*/
);

CREATE TABLE Amenity (
    amenity_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    icon_url VARCHAR(1024),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Property_HouseRule (
    property_houserule_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT, /*FK*/
    houserule_id INT /*FK*/
);

CREATE TABLE HouseRule (
    houserule_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    icon_url VARCHAR(1024),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE PropertyType (
    propertytype_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    icon_url VARCHAR(1024),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Booking (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    total_price DECIMAL(10,2) NOT NULL,
    currency_id INT DEFAULT 1, /*FK*/
    booking_start_date TIMESTAMP NOT NULL,
    booking_end_date TIMESTAMP NOT NULL,
    confirmation_code VARCHAR(16) NOT NULL,
    cancelled BOOLEAN NOT NULL,
    cancellation_date DATE,
    refund_amount DECIMAL(10,2),
    propertylisting_id INT NOT NULL, /*FK*/
    host_id INT NOT NULl, /*FK*/
    guest_id INT NOT NULL, /*FK*/
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Wishlist (
    wishlist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    private BOOLEAN NOT NULL DEFAULT TRUE,
    owning_user_id INT NOT NULL /*FK*/
);

CREATE TABLE Wishlist_PropertyListing (
    wishlist_propertylisting_id INT AUTO_INCREMENT PRIMARY KEY,
    propertylisting_id INT, /*FK*/
    wishlist_id INT /*FK*/
);

CREATE TABLE EmergencyContact (
    emergencycontact_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    relationship VARCHAR(255),
    prefered_language_id INT DEFAULT 1, /*FK*/
    email VARCHAR(255),
    country_code VARCHAR (32),
    phone_number VARCHAR(15) NOT NULL,
    owning_user_id INT NOT NULL /*FK*/
);

CREATE TABLE Language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(32) NOT NULL,
    country VARCHAR(32)
);

CREATE TABLE Currency (
    currency_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    abbreviation VARCHAR(3)
);

CREATE TABLE GiftCard (
    giftcard_code VARCHAR(16) PRIMARY KEY,
    amount DECIMAL(10,2) NOT NULL,
    currency_id INT NOT NULL DEFAULT 1, /*FK*/
    valid_until_date TIMESTAMP NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Transaction (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL, /*FK*/
    bankinformation_id INT, /*FK*/
    creditcardinformation_id INT, /*FK*/
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE CreditCardInformation (
    creditcardinformation_id INT AUTO_INCREMENT PRIMARY KEY,
    owning_guest_id INT NOT NULL, /*FK*/
    bank VARCHAR(128) NOT NULL,
    card_number VARCHAR(64) NOT NULL,
    cvc_code VARCHAR(3) NOT NULL,
    expiration_date DATE NOT NULL
);

CREATE TABLE BankInformation (
    bankinformation_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    owning_host_id INT NOT NULL, /*FK*/
    name VARCHAR(128) NOT NULL,
    account_nr VARCHAR(32) NOT NULL,
    code VARCHAR(64) NOT NULL,
    address_id INT NOT NULL /*FK*/
);

CREATE TABLE Chat (
    chat_id INT AUTO_INCREMENT PRIMARY KEY,
    chat_partner_id INT, /*FK*/
    owner_user_id INT, /*FK*/
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_modified TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Message (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    text TEXT,
    image_id INT, /*FK*/
    author_user_id INT, /*FK*/
    owning_chat_id INT, /*FK*/
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


/* Followed by the table structure itself are the FK constraints,
these are added afterwards for easier extendability, testing, and maintability.  */

/* Users constraints */
ALTER TABLE User
ADD CONSTRAINT fk_user_address
FOREIGN KEY (user_id)
REFERENCES Address(address_id)
ON DELETE CASCADE ON UPDATE RESTRICT;

/* Guest constraints */
ALTER TABLE Guest
ADD CONSTRAINT fk_guest_user
FOREIGN KEY (user_id)
REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE Guest
ADD CONSTRAINT fk_guest_image
FOREIGN KEY (profile_image_id)
REFERENCES Image(image_id)
ON DELETE CASCADE ON UPDATE RESTRICT;

/* Host constraints */
ALTER TABLE Host
ADD CONSTRAINT fk_host_user
FOREIGN KEY (user_id)
REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE Host
ADD CONSTRAINT fk_host_image
FOREIGN KEY (profile_image_id)
REFERENCES Image(image_id)
ON DELETE CASCADE ON UPDATE RESTRICT;

/* PropertyListing constraints */
ALTER TABLE PropertyListing
ADD CONSTRAINT fk_listing_address
FOREIGN KEY (address_id)
REFERENCES Address(address_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PropertyListing
ADD CONSTRAINT fk_listing_currency
FOREIGN KEY (currency_id)
REFERENCES Currency(currency_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* PropertyReview constraints */
ALTER TABLE PropertyReview
ADD CONSTRAINT fk_review_property
FOREIGN KEY (property_id)
REFERENCES PropertyListing(propertylisting_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE PropertyReview
ADD CONSTRAINT fk_review_author
FOREIGN KEY (author_guest_id)
REFERENCES Guest(guest_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Property_Category constraints */
ALTER TABLE Property_Category
ADD CONSTRAINT fk_category_property
FOREIGN KEY (property_id)
REFERENCES PropertyListing(propertylisting_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Property_Category
ADD CONSTRAINT fk_category_category
FOREIGN KEY (category_id)
REFERENCES Category(category_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Property_Amenity constraints */
ALTER TABLE Property_Amenity
ADD CONSTRAINT fk_amenity_property
FOREIGN KEY (property_id)
REFERENCES PropertyListing(propertylisting_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Property_Amenity
ADD CONSTRAINT fk_amenity_amenity
FOREIGN KEY (amenity_id)
REFERENCES Amenity(amenity_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Property_HouseRule constraints */
ALTER TABLE Property_HouseRule
ADD CONSTRAINT fk_houserule_property
FOREIGN KEY (property_id)
REFERENCES PropertyListing(propertylisting_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Property_HouseRule
ADD CONSTRAINT fk_houserule_houserule
FOREIGN KEY (houserule_id)
REFERENCES HouseRule(houserule_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Booking constraints */
ALTER TABLE Booking
ADD CONSTRAINT fk_booking_currency
FOREIGN KEY (currency_id)
REFERENCES Currency(currency_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Booking
ADD CONSTRAINT fk_booking_propertylisting
FOREIGN KEY (propertylisting_id)
REFERENCES PropertyListing(propertylisting_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Booking
ADD CONSTRAINT fk_booking_host
FOREIGN KEY (host_id)
REFERENCES Host(host_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Booking
ADD CONSTRAINT fk_booking_guest
FOREIGN KEY (guest_id)
REFERENCES Guest(guest_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Wishlist constraints */
ALTER TABLE Wishlist
ADD CONSTRAINT fk_wishlist_guest
FOREIGN KEY (owning_user_id)
REFERENCES Guest(guest_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Wishlist_PropertyListing constraints */
ALTER TABLE Wishlist_PropertyListing
ADD CONSTRAINT fk_wishlist_property
FOREIGN KEY (propertylisting_id)
REFERENCES PropertyListing(propertylisting_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Wishlist_PropertyListing
ADD CONSTRAINT fk_wishlist_wishlist
FOREIGN KEY (wishlist_id)
REFERENCES Wishlist(wishlist_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* EmergencyContact constraints */
ALTER TABLE EmergencyContact
ADD CONSTRAINT fk_econtact_language
FOREIGN KEY (prefered_language_id)
REFERENCES Language(language_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE EmergencyContact
ADD CONSTRAINT fk_econtact_user
FOREIGN KEY (owning_user_id)
REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* GiftCard constraints */
ALTER TABLE GiftCard
ADD CONSTRAINT fk_giftcard_currency
FOREIGN KEY (currency_id)
REFERENCES Currency(currency_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Transaction constraints */
ALTER TABLE Transaction
ADD CONSTRAINT fk_transaction_booking
FOREIGN KEY (booking_id)
REFERENCES Booking(booking_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Transaction
ADD CONSTRAINT fk_transaction_bankinformation
FOREIGN KEY (bankinformation_id)
REFERENCES BankInformation(bankinformation_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Transaction
ADD CONSTRAINT fk_transaction_creditcard
FOREIGN KEY (creditcardinformation_id)
REFERENCES CreditCardInformation(creditcardinformation_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* CreditCardInformation constraints */
ALTER TABLE CreditCardInformation
ADD CONSTRAINT fk_ccinformation_guest
FOREIGN KEY (owning_guest_id)
REFERENCES Guest(guest_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* BankInformation constraints */
ALTER TABLE BankInformation
ADD CONSTRAINT fk_bankinfo_host
FOREIGN KEY (owning_host_id)
REFERENCES Host(host_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE BankInformation
ADD CONSTRAINT fk_bankinfo_address
FOREIGN KEY (address_id)
REFERENCES Address(address_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Chat constraints */
ALTER TABLE Chat
ADD CONSTRAINT fk_chat_partner
FOREIGN KEY (chat_partner_id)
REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Chat
ADD CONSTRAINT fk_chat_owner
FOREIGN KEY (owner_user_id)
REFERENCES User(user_id)
ON DELETE CASCADE ON UPDATE CASCADE;

/* Message constraints */
ALTER TABLE Message
ADD CONSTRAINT fk_message_owningchat
FOREIGN KEY (owning_chat_id)
REFERENCES Chat(chat_id)
ON DELETE CASCADE ON UPDATE CASCADE;
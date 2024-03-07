/*
These tests are some example select querries that can be used to retrieve data records.
These test cases in addition to the insert statements in the data.sql file should demonstrate that both
writing and reading data to this database function properly and as intended.

- There will first be some more complicated tests (saved as views for easier use) before continuing to
simple select all statements for the less complex data tables
*/

/* relevant guest data
- it could be argued that this view should be based on the guest_id instead of the user_id but this
is an easy change and depends on how the view is to be used in practice
- as it is this view serves as a demonstration for how the connected data can be querried by comprosing
a complex select statement into a view for easier use. 
*/
CREATE VIEW iu_userguest_view AS
SELECT
    U.user_id,
    U.legal_name,
    U.email,
    A.country,
    A.state,
    A.city,
    A.street,
    A.house_nr,
    A.zip_code,
    G.guest_description,
    G.phone_number,
    IProfile.image_url AS profile_image_url,
    IGovernID.image_url AS governmentid_image_url,
    EC.name AS emergency_contact_name,
    EC.relationship AS emergency_contact_relationship,
    EC.email AS emergency_contact_email,
    EC.country_code AS emergency_contact_country_code,
    EC.phone_number AS emergency_contact_phone_number,
    CCI.bank AS credit_card_bank,
    CCI.card_number AS credit_card_number,
    CCI.cvc_code AS credit_card_cvc,
    CCI.expiration_date AS credit_card_expiration_date
FROM
    User U
JOIN Address A ON U.address_id = A.address_id
JOIN Guest G ON U.user_id = G.user_id
JOIN Image IProfile ON G.profile_image_id = IProfile.image_id
JOIN Image IGovernID ON U.governmentid_image_id = IGovernID.image_id
LEFT JOIN EmergencyContact EC ON U.user_id = EC.owning_user_id
LEFT JOIN CreditCardInformation CCI ON G.guest_id = CCI.owning_guest_id;

-- usage of view
SELECT * FROM iu_userguest_view WHERE user_id = 1;


/* relevant host data 
- it could be argued that this view should be based on the host_id instead of the user_id but this
is an easy change and depends on how the view is to be used in practice
- as it is this view serves as a demonstration for how the connected data can be querried by comprosing
a complex select statement into a view for easier use. 
*/
CREATE VIEW iu_userhost_view AS
SELECT
    U.user_id,
    U.legal_name,
    U.email,
    A.country,
    A.state,
    A.city,
    A.street,
    A.house_nr,
    A.zip_code,
    H.host_description,
    H.phone_number,
    IProfile.image_url AS profile_image_url,
    IGovernID.image_url AS governmentid_image_url,
    BI.account_nr AS bank_account_nr,
    BI.code AS bank_code,
    BI.address_id AS bank_address_id,
    BIA.country AS bank_address_country
FROM
    User U
JOIN Address A ON U.address_id = A.address_id
JOIN Host H ON U.user_id = H.user_id
JOIN Image IProfile ON H.profile_image_id = IProfile.image_id
JOIN Image IGovernID ON U.governmentid_image_id = IGovernID.image_id
LEFT JOIN BankInformation BI ON H.host_id = BI.owning_host_id
JOIN Address BIA ON BI.address_id = BIA.address_id;

-- usage example of view
SELECT * FROM iu_userhost_view WHERE user_id = 21;


/* relevant property listing data
- this first view shows the data attributes that somewhat directly relate to the propertylisting while
the the following view will serve as an example for one of the tables that is linked via another table.
In that case we will use the amenitites table to demonstrate the proper relationship between a
propertylisting and amenities, categories and houserules. 
- includes property_type relation test
*/
CREATE VIEW iu_propertylisting_view AS
SELECT
    PL.propertylisting_id,
    PL.name AS propertylisting_name,
    PT.name AS property_type,
    PL.price_per_night,
    C.name AS currency,
    A.country,
    A.state,
    A.city,
    A.street,
    A.house_nr,
    A.zip_code,
    H.host_id AS host_id,
    HU.legal_name AS host_name
FROM
    PropertyListing PL
JOIN Address A ON PL.address_id = A.address_id
JOIN Host H ON PL.owning_host_id = H.host_id
JOIN User HU ON H.user_id = HU.user_id
JOIN Currency C ON PL.currency_id = C.currency_id
JOIN PropertyType PT ON PL.property_type_id = PT.propertytype_id;

-- usage example of view
SELECT * FROM iu_propertylisting_view WHERE propertylisting_id = 1;
SELECT * FROM iu_propertylisting_view WHERE host_id = 1;

/* this test case shows the selected amenities for a certain propertylisting
- this same structure will work for categories and houserules as well, which will not be included as
they function identically to this view (with different names, etc.)
- i have essentially decided to view amenities, categories and houserules as an equivalence class
and chose Amenity as the representative. this can reduce testing workload/effort
(this can/could be reasoned as trying to reduce testing costs for example)
*/
CREATE VIEW iu_propertylisting_amentities_view AS
SELECT
    PL.propertylisting_id,
    PL.name AS property_name,
    A.name AS amenity_name
FROM PropertyListing PL
JOIN Property_Amenity PA ON PL.propertylisting_id = PA.property_id
JOIN Amenity A ON PA.amenity_id = A.amenity_id;

-- usage example of view
SELECT * FROM iu_propertylisting_amentities_view WHERE propertylisting_id = 1;


/* UserReview data from related to explicit user
- quite simple as the userreview shares the attribute 'user_id' which can be used for a natural join,
otherwise a left join on user_id could be used when only specific data is desired
*/
CREATE VIEW iu_userreviews_view AS
SELECT *
FROM User
NATURAL JOIN UserReview;
/* another test example for only the UserReview data without User data: 
SELECT UR.*
FROM User
NATURAL JOIN UserReview UR;
*/

-- usage example of view
SELECT * FROM iu_userreviews_view WHERE user_id = 1;


/* PropertyReviews are very similar to the UserReviews above, i will therefore not go into much detail
about the structure of the query / test case
- the reason i constrained the query is that it would otherwise be very bloated with less readability
*/
CREATE VIEW iu_propertyreviews_view AS
SELECT 
    PL.propertylisting_id, -- left in to show that PL.id and PR. id are equal -> functioning relation
    PL.name,
    PR.*
FROM PropertyListing PL
JOIN PropertyReview PR ON PL.propertylisting_id = PR.property_id;

-- usage example of view
SELECT * FROM iu_propertyreviews_view WHERE propertylisting_id = 1;


/* Booking data
- this test case serves the purpose of testing the relationships relevant to a booking table entry  
*/
CREATE VIEW iu_booking_view AS
SELECT
    B.booking_id AS booking_id,
    B.propertylisting_id,
    PL.name AS propertylisting_name,
    H.host_id AS host_id,
    HU.legal_name AS host_legal_name,
    G.guest_id AS guest_id,
    GU.legal_name AS guest_legal_name
FROM Booking B
JOIN PropertyListing PL ON B.propertylisting_id = PL.propertylisting_id
JOIN Host H ON B.host_id = H.host_id
JOIN User HU ON HU.user_id = H.user_id
JOIN Guest G ON B.guest_id = G.guest_id
JOIN User GU ON GU.user_id = G.user_id;

-- usage examples of view (either look up booking via the transaction, or propertylisting)
SELECT * FROM iu_booking_view WHERE booking_id = 1;
SELECT * FROM iu_booking_view WHERE propertylisting_id = 1;

/* Transaction, CreditCard, Bankinformation data 
- Test case that shows the relation between transactions with payment informations, such as
credit cards or banks and the corresponding booking
- (this test case will be seen as sufficient for testing the proper implementaiton of the tables that are
a part of it)
*/
CREATE VIEW iu_transaction_view AS
SELECT
    T.*,
    B.booking_id AS Booking_id_ref,
    CCI.creditcardinformation_id AS creditcard_id,
    CCI.card_number AS creditcard_number,
    BI.bankinformation_id AS bankinfo_id,
    BI.account_nr AS bank_account_number
FROM Transaction T
JOIN Booking B ON T.booking_id = B.booking_id
JOIN CreditCardInformation CCI ON T.creditcardinformation_id = CCI.creditcardinformation_id
JOIN BankInformation BI ON T.bankinformation_id = BI.bankinformation_id;

-- usage examples of view (either look up data via the transaction, or booking)
SELECT * FROM iu_transaction_view WHERE transaction_id = 1;
SELECT * FROM iu_transaction_view WHERE booking_id = 1;


/* Wishlist data
- test case that shows the wishlist, user and property listing data to proves the proper
implementation of links between them. Goal is to see the relationship of a user owning 
a wishlist, which in turn 'owns' (multiple) propertylistings. 
*/
CREATE VIEW iu_wishlist_details_view AS
SELECT 
    W.*,
    U.legal_name AS owning_user_name,
    PL.name AS property_listing_namne
FROM
    Wishlist W
JOIN User U ON W.owning_user_id = U.user_id
JOIN Wishlist_PropertyListing WPL ON W.wishlist_id = WPL.wishlist_id
JOIN PropertyListing PL ON WPL.propertylisting_id = PL.propertylisting_id;

-- usage example of view 
SELECT * FROM iu_wishlist_details_view WHERE wishlist_id = 1;

-- this view gets all data regarding the property listings that are in a given wishlist
CREATE VIEW iu_wishlist_propertylistings_view AS
SELECT
    W.wishlist_id,
    PL.*
FROM Wishlist W
JOIN Wishlist_PropertyListing WPL ON W.wishlist_id = WPL.wishlist_id
JOIN PropertyListing PL ON WPL.propertylisting_id = PL.propertylisting_id;

-- usage example of view 
SELECT * FROM iu_wishlist_propertylistings_view WHERE wishlist_id = 1;


/* Chat & Message data 
- two examples, the first one will display general details of the chat, the second text will
return all messages of a given chat
*/
CREATE VIEW iu_chat_details_view AS
SELECT
    C.*,
    UO.legal_name AS owning_user_name,
    UP.legal_name AS partner_guest_name,
    COUNT(M.message_id) AS message_count
FROM Chat C
JOIN User UO ON C.owner_user_id = UO.user_id
JOIN User UP ON C.chat_partner_id = UP.user_id
LEFT JOIN Message M ON M.owning_chat_id = C.chat_id
GROUP BY C.chat_id, UO.legal_name, UP.legal_name;

-- usage example of view 
SELECT * FROM iu_chat_details_view WHERE chat_id = 1;

CREATE VIEW iu_chat_messages_view AS
SELECT
    M.message_id,
    M.text,
    M.image_id,
    C.chat_id AS owning_chat_id_ref
FROM Message M
JOIN Chat C ON C.chat_id = M.owning_chat_id;

-- usage example of view
SELECT * FROM iu_chat_messages_view WHERE owning_chat_id_ref = 1;


-------------------------------------------------------------------------------------------------
/* following now are some simple test cases that should not require any detailed documentation */
-------------------------------------------------------------------------------------------------

/* Address data */
SELECT * FROM Address;

/* PropertyType data - additionaly to the previously properly tested relationship to PropertyListings */
SELECT * FROM PropertyType;

/* Amenity data */
SELECT * FROM Amenity;

/* Category data */
SELECT * FROM Category;

/* HouseRule data  */
SELECT * FROM HouseRule;

/* Image data */
SELECT * FROM Image;

/* Giftcard data */
SELECT * FROM GiftCard;

/* Currency data */
SELECT * FROM Currency;

/* Language data */
SELECT * FROM Language;

/* EmergencyContact data */
SELECT * FROM EmergencyContact;

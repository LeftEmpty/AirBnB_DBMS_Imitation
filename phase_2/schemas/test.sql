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
JOIN Host H ON U.user_id = H.user_id
JOIN Image IProfile ON H.profile_image_id = IProfile.image_id
JOIN Image IGovernID ON U.governmentid_image_id = IGovernID.image_id
LEFT JOIN EmergencyContact EC ON U.user_id = EC.owning_user_id
LEFT JOIN CreditCardInformation CCI ON H.host_id = CCI.owning_guest_id;

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
    PL.owning_host_id,
    PL.name,
    PL.property_type_id,
    PT.name AS property_type_name,
    PL.bedroom_count,
    PL.bathroom_count,
    PL.available_booking_slots,
    PL.price_per_night,
    PL.currency_id,
    PL.check_in_time,
    PL.check_out_time,
    PL.average_rating,
    PL.total_nr_of_ratings,
    A.country,
    A.state,
    A.city,
    A.street,
    A.house_nr,
    A.zip_code
FROM
    PropertyListing PL
JOIN Address A ON PL.address_id = A.address_id
JOIN PropertyType PT ON PL.property_type_id = PT.propertytype_id;

SELECT * FROM iu_propertylisting_view WHERE propertylisting_id = 1;

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
CREATE VIEW iu_userreviews_from_user_view AS
SELECT *
FROM User
NATURAL JOIN UserReview;
/* another test example for only the UserReview data without User data: 
SELECT UR.*
FROM User
NATURAL JOIN UserReview UR;
*/

-- usage example of view
SELECT * FROM iu_userreviews_from_user_view WHERE user_id = 1;


/* PropertyReviews are very similar to the UserReviews above, i will therefore not go into much detail
about the structure of the query / test case
- the reason i constrained the query is that it would otherwise be very bloated with less readability
*/
CREATE VIEW iu_propertyreviews_from_user_view AS
SELECT 
    PL.propertylisting_id, -- left in to show that PL.id and PR. id are equal -> functioning relation
    PL.name,
    PR.*
FROM PropertyListing PL
JOIN PropertyReview PR ON PL.propertylisting_id = PR.property_id;

-- usage example of view
SELECT * FROM iu_propertyreviews_from_user_view WHERE propertylisting_id = 1;


/* Booking data
- this test case serves the purpose of testing the relationships relevant to a booking table entry  
*/
SELECT
    B.id,
    H.id
    H.name
    G.id
    G.name
    CCI.
FROM Booking
JOIN Host
JOIN Guest
JOIN 


-------------------------------------------------------------------------------------------------
/* following now are some simple test cases that should not require any detailed documentation */
-------------------------------------------------------------------------------------------------



/* Address data */
SELECT * FROM Address;

/* PropertyType data - additionaly to the previously properly tested relationship to PropertyListings */
SELECT * FROM PropertyType;

/* Amenity data */
SELECT * FROM ;

/* Category data */
SELECT * FROM ;

/*  */
SELECT * FROM ;

/*  */
SELECT * FROM ;

/*  */
SELECT * FROM ;

/*  */
SELECT * FROM ;

/*  */
SELECT * FROM ;

/*  */
SELECT * FROM ;

/*  */
SELECT * FROM ;








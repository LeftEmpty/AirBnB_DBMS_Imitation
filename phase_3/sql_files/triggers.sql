DELIMITER $$

CREATE TRIGGER before_insert_Booking
BEFORE INSERT ON Booking
FOR EACH ROW
BEGIN
    IF NEW.booking_end_date <= NEW.booking_start_date THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'booking_end_date must be greater than booking_start_date';
    END IF;
END$$

DELIMITER ;


/* Example Trigger 
- this serves as an example of how further constraints could be applied to the database
- as of yet has no affect when using the dummy data / test cases provided
- if you would like to test this trigger, please run the statement above after the schema.sql file
- concerning the functionality of this trigger; it constraints the end_date of a Booking entry to be after
the respecive start_date 
*/;
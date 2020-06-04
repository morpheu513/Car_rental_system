ALTER TABLE Driver_Details ADD CONSTRAINT email_valid_Driver CHECK(
    Email LIKE '%_@__%.__%'  AND
    PhNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
);

ALTER TABLE Customer_Details ADD CONSTRAINT email_valid_Customer CHECK(
    Email LIKE '%_@__%.__%'  AND
    PhNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
);


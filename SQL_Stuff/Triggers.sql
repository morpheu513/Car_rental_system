CREATE TRIGGER book_deet_update ON Booking_Details AFTER INSERT AS
BEGIN
	DECLARE @vechileid INT;
	SELECT 
		@vechileid=inserted.Vehicle_ID
	from inserted;
	Update Vehicle_Details
		SET Vehicle_Details.Availability = 'N'
		WHERE Vehicle_Details.Vehicle_ID =@vechileid
	
END;
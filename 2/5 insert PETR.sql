with 
sub as (SELECT 
			tblclient.clientid, 
			CURRENT_DATE AS dt,
			18000 as sum  
		FROM 
			tblclient 
		WHERE 
			tblclient.Name = 'Петров Петр Петрович')
			
	INSERT INTO 
	public.tblClientPayments 
			(ClientId, 
			 PaymentDate, 
			 PaymentSum)
	SELECT 
		* 
	FROM 
		sub;
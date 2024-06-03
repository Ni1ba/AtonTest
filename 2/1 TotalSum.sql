SELECT 
	tblclient.clientid , tblclient.name, SUM(PaymentSum) AS TotalSum
FROM 
	public.tblclient 
LEFT JOIN
	tblclientpayments 
on 
	tblclient.clientid = tblclientpayments.ClientId
	GROUP BY tblclient.clientid 
	ORDER BY tblclient.clientid ASC
;	
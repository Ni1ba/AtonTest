with Sub as (SELECT 
				tblclient.clientid ,  tblclientpayments.PaymentDate,tblclient.name, SUM(PaymentSum) AS TotalSum
			FROM 
				public.tblclient 

			LEFT JOIN
				tblclientpayments 
			on 
				tblclient.clientid = tblclientpayments.ClientId
				GROUP BY tblclient.clientid,tblclientpayments.PaymentDate
				ORDER BY tblclient.clientid ASC)
SELECT
	Sub.ClientId,Sub.Name,Sub.PaymentDate
FROM
	Sub
WHERE 
	sub.PaymentDate > '05-03-2022' OR Sub.totalsum>7000
;	
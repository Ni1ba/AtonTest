UPDATE public.tblclientpayments
SET paymentsum = paymentsum *0.9
WHERE clientid = (
    SELECT clientid 
    FROM public.tblclient 
    WHERE name = 'Кузнецова Анна Андреевна'
) 
AND paymentdate = '2022-03-02';

 
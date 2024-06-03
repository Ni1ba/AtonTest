-- Создание таблицы tblClient, если она не существует
CREATE TABLE IF NOT EXISTS public.tblClient (
    ClientId INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

-- Создание таблицы tblClientPayments, если она не существует
CREATE TABLE IF NOT EXISTS public.tblClientPayments (
    ClientId INT NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentSum NUMERIC(10, 2) NOT NULL,
    CONSTRAINT FK_tblClientPayments_ClientId FOREIGN KEY (ClientId)
        REFERENCES public.tblClient (ClientId)
);

-- Создание таблицы tblClosePrice, если она не существует
CREATE TABLE IF NOT EXISTS public.tblClosePrice (
    PriceDate DATE NOT NULL,
    PriceAssetId INT NOT NULL,
    ClosePrice NUMERIC(19, 8) NOT NULL,
    CONSTRAINT PK_tblClosePrice PRIMARY KEY (PriceAssetId, PriceDate)
);

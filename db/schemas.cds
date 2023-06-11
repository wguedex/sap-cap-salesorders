namespace com.so;

using {
    cuid,
    managed,
    Country
} from '@sap/cds/common';

entity Header : cuid { 
    Email        : String(30);
    FirstName    : String(30);
    LastName     : String(30);
    Country      : Country;
    DeliveryDate : Date;
    OrderStatus  : Integer;
    ImageURL     : String;
    SalesOrder   : Association to SalesOrder;
}

entity Items : cuid {
    Name             : String(40);
    Description      : String(40);
    ReleaseDate      : Date;
    DiscontinuedDate : Date;
    Price            : Decimal(12, 2);
    Height           : Decimal(15, 3);
    Width            : Decimal(15, 3);
    Depth            : Decimal(15, 3);
    Quantity         : Decimal(16, 2);  
    SalesOrder       : Association to SalesOrder;
}

entity SalesOrder : cuid, managed {
    header : Association to Header;
    items  : Association to many Items
                 on items.SalesOrder = $self;
}

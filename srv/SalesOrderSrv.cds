using com.so as so from '../db/schemas';

service SalesOrderSrv {

    entity Header     as projection on so.Header;
    entity Items      as projection on so.Items;
    entity SalesOrder as projection on so.SalesOrder;

}

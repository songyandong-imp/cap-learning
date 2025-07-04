namespace com.sap.learning.db;

using {
    cuid,
    managed,
    sap.common.CodeList
} from '@sap/cds/common';

// localized data

entity Employees : cuid {
    name:localized String(100);
    dept : Association to Depts;
}

entity Depts : CodeList {
    key code : Integer;
}

entity Authors : cuid, managed {
    name        : String(100);
    dateOfBirth : Date;
    dateOfDeath : Date;
    gender      : String(3);
    address     : String(100);
    books       : Association to many Books
                      on books.author = $self;

}

extend Authors with Phones;
aspect Phones{
    moblePhone:String(20);
    tel:String(20);
}

entity Books : cuid {
    title  : String(100) @mandatory;
    stock  : Stock default 0;
    price  : Price;
    genre  : Genre;
    author : Association to Authors;
}




entity Orders : cuid {
    customer_name : String(100);
    orderItems    : Association to many OrderItems
                        on orderItems.order = $self;
}

entity OrderItems {
    key order        : Association to Orders;
    key pos          : Integer;
        product_name : String(100);
        qty          : Integer;

}


//自定义类型
type Stock : Integer;

//自定义结构
type Price : {
    amount   : Integer;
    currency : String(3);
}

//定义枚举
type Genre : Integer enum {
    fiction     = 1;
    non_fiction = 2;

}

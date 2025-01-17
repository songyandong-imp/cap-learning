namespace com.sap.learning.db;

entity Authors {
    key ID          : UUID;
        name        : String(100);
        dateOfBirth : Date;
        dateOfDeath : Date;
        gender:String(3);
        address:String(100);
        books:Association to many Books on books.author = $self;
        
}

entity Books {
    key ID:UUID;
    title:String(100);
    stock:Stock;
    price:Price;
    genre:Genre;
    author:Association to Authors;
}
//自定义类型
type Stock : Integer;

//自定义结构
type Price : {
    amount   : Integer;
    currency : String(3);
};

//定义枚举
type Genre : Integer enum {
    fiction     = 1;
    non_fiction = 2;

};

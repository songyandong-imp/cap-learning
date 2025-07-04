using { com.sap.learning.db as db } from '../db/schema';

service CatalogService @(path: '/cat') {

// test
entity Books as projection on db.Books{
    key ID,
    title,
    author.name AS writer,
    price,
    stock

};
    

}
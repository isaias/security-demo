using { my.bookshop, sap.common } from '../db/data-model';

service CatalogService {
  @requires:'securityAdmin'
  entity Books as projection on bookshop.Books;
  entity Authors @readonly as projection on bookshop.Authors;
  entity Orders @insertonly as projection on bookshop.Orders;
}
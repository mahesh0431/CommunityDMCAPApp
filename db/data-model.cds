namespace my.bookshop;
using { managed ,cuid} from '@sap/cds/common';

entity Books: cuid,managed {
  booknumber : Integer;
  title  : String;
  stock  : Integer;
  repositoryId : String;
  folderId: String;
}
using {CatalogService as my} from './cat-service';

annotate my.Books with @odata.draft.enabled;
 
annotate my.Books with @(UI : {
    SelectionFields  : [
    booknumber,
    title
    ],
    LineItem         : [
    {
        Value : booknumber,
        Label : 'ID'
    },
    {
        Value : title,
        Label : 'Title'
    },
    {
        Value : folderId,
        Label : 'Folder ID'
    }
    ],
    Facets           : [{
        $Type  : 'UI.CollectionFacet',
        ID     : 'General',
        Label  : 'Book Info',
        Facets : [{
            $Type  : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Main',
            Label  : 'Main Facet'
        }]
    }],
    FieldGroup #Main : {Data : [
    {Value : booknumber},
    {Value : title}
    ]}
});

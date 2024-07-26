using {Library} from './lib';

annotate Library.Hospital with @( 

    UI.LineItem: [
        
        {
            $Type : 'UI.DataField',
            Label: 'name',
            Value : name
        },
        {
            $Type : 'UI.DataField',
            
            Value : addr1
        },
        {
            $Type : 'UI.DataField',
            Value : addr2
        },
        {
            $Type : 'UI.DataField',
            Value : city
        },
        {
            $Type : 'UI.DataField',
            Value : state
        },
        {
            $Type : 'UI.DataField',
            Value : pincode
        },
       
    ],
);

annotate Library.Hospital with @(

 UI.FieldGroup #HospitalInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : addr1,
            },
            {
                $Type : 'UI.DataField',
                Value : addr2,
            },
            
            {
                $Type : 'UI.DataField',
                Value : city
            },
            {
                $Type:'UI.DataField',
                Label:'state',
                Value:state
            },
            {
                $Type : 'UI.DataField',
                Value : pincode,
            }
            
        ]
    },
  UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'HospitalInfoFacet',
            Label : 'Hospital Information',
            Target : '@UI.FieldGroup#HospitalInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'PatienceInfoFacet',
            Label : 'Patience Information',
            Target : 'pat/@UI.LineItem',
        },

  ]
);



annotate Library.Patience with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Label:'Id',
            Value: PatienceId_ID
        },
        {
            $Type:'UI.DataField',
            Value: PatienceDate
        },
        {
            $Type:'UI.DataField',
            Value: PatienceAddress
        },
        {
            $Type:'UI.DataField',
            Value: totalAmount
        }
    ]
);

annotate Library.Patience with @(
    UI.FieldGroup #PatienceDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: PatienceId_ID
        },
        {
            $Type:'UI.DataField',
            Value: PatienceDate
        },
        {
            $Type:'UI.DataField',
            Value: PatienceAddress
        },
        {
            $Type:'UI.DataField',
            Value: totalAmount
        }
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'PatienceGeneralInformation',
            Label : 'Patience Information',
            Target : '@UI.FieldGroup#PatienceDetails',
        },
    ]
);
namespace com.satinfotech.cloudapps;

using { managed,cuid } from '@sap/cds/common';

entity Hospital : managed ,cuid {
    key ID: UUID;
    @title:'hospital ID'
    name:String(10);
    @title:'patience name'
    addr1:String(40);
    @title:'hospital Name'
    addr2:String(40);
    @title:'place'
    city:String(40);
    @title:'Pincode'
    state:String(40);
    @title:'joining Date'
    pincode:String(40);

    pat : Composition of many Patience on pat.PatienceId=$self;
}

entity Patience: cuid , managed {
    key ID            : UUID; 
    @title:'Patience ID'
    PatienceId: Association to one Hospital;
    
    @title: 'Patience Date'
    PatienceDate: Date;
    
    @title: 'Patience Address'
    PatienceAddress: String(100);
    
    @title: 'Total Amount'
    totalAmount: Decimal(10,2);
}
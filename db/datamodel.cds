using { my.commons } from './commons';
using { temporal,managed,Country, cuid } from '@sap/cds/common';

namespace my.school;

context master {
   
   entity avengers : cuid {
    char : String(80);
   }

    entity Student : temporal{
        key studentId : commons.Guid;
        name : String(30);
        class: Association to one stu_class ; 
        //this creates the primary key foriegn key relation . Where this directly goes to the classid
        parent: String(30);
        joiningDate: Date;
        country: Country;
    }

    entity stu_class: managed{
        key classId : commons.Guid;
        name:String(30);
        section: Int16;
    }

    //to build cds build, to deploy cds deploy -2 sqlite
    //npm install -g sqlite3@5.1.1
    //to connect db go to the sql tools and create a new db with the db file name which is created in the project
}
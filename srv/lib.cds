using {com.satinfotech.cloudapps as db} from '../db/schema';

service Library {
    entity Hospital as projection on db.Hospital;
}
annotate Library.Hospital with @odata.draft.enabled;
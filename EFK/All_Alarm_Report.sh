#!/bin/bash

rm -rf link.txt

echo "STO_ALARM_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CLog_Time%2CMessages%2Chostname%2CFile%2CID%2CLevel%29%2CindexPatternId%3A%2750e84480-2ef0-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CLog_Time%2CMessages%2Chostname%2CFile%2CID%2CLevel%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28match_all%3A%28%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-1h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Adesc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CLog_Time%2CMessages%2Chostname%2CFile%2CID%2CLevel%29%2Cversion%3A%21t%29%2Cindex%3A%27stoalarm%2A%27%29%2Ctitle%3AAlarm_Reporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo STO_ALARM=${result} >> link.txt
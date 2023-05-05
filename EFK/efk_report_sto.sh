#!/bin/bash

rm -rf link.txt

echo "AMF1_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2794d734c0-11fa-11eb-90f4-ab6dda0fe26c%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_amf1%2A%27%29%2Ctitle%3AReporting%29' > output.txt                 
														
result=`cut -b 11-62 output.txt`

echo AMF1=${result} >> link.txt

echo "AMF2_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Ae69a8b60-1388-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_amf2%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo AMF2=${result} >> link.txt

echo "AMF3_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Af9a014f0-1388-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_amf3%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo AMF3=${result} >> link.txt

echo "AUSF_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%27212d3430-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_ausf%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo AUSF=${result} >> link.txt

echo "UDM_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2728468690-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_udm%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo UDM=${result} >> link.txt

echo "UDR_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2730da43f0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_udr%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo UDR=${result} >> link.txt

echo "NEF_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%273f1a7d40-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_nef%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo NEF=${result} >> link.txt

echo "NRF1_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%27478ef2d0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_nrf1%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo NRF1=${result} >> link.txt

echo "NRF2_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%274e1d1c30-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_nrf2%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo NRF2=${result} >> link.txt

echo "NRF3_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2755012dc0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_nrf3%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo NRF3=${result} >> link.txt

echo "NSSF1_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%27614aee40-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_nssf1%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo NSSF1=${result} >> link.txt

echo "SMF1_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2705a886b0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_smf1%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo SMF1=${result} >> link.txt

echo "SMF2_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%270d1b43b0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_smf2%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo SMF2=${result} >> link.txt

echo "SMF3_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2715465430-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_smf3%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo SMF3=${result} >> link.txt

echo "PCF1_AMS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2770751260-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf1_ams%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_AMS=${result} >> link.txt

echo "PCF1_IWS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%277b56de70-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf1_iws%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_IWS=${result} >> link.txt

echo "PCF1_PES_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%27856072f0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf1_pes%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_PES=${result} >> link.txt

echo "PCF1_SMS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Af501d080-138f-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf1_sms%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_SMS=${result} >> link.txt

echo "PCF1_CS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Ae1dd6110-14ff-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf1_cs%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_CS=${result} >> link.txt

echo "PCF1_NFRS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Aeae7d510-14ff-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf1_nfrs%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_NFRS=${result} >> link.txt

echo "PCF2_IWS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%278e60fbe0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf2_iws%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_IWS=${result} >> link.txt

echo "PCF2_NFRS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%27007716c0-1500-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf2_nfrs%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_NFRS=${result} >> link.txt

echo "PCF2_SMS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Abda43680-14f9-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf2_sms%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_SMS=${result} >> link.txt

echo "PCF2_AMS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Ac8a0dd90-14f9-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf2_ams%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_AMS=${result} >> link.txt

echo "PCF2_CS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Af6ca9660-14ff-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf2_cs%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_CS=${result} >> link.txt

echo "PCF3_IWS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2798e05ca0-1389-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf3_iws%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_IWS=${result} >> link.txt

echo "PCF3_AMS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%2757608a20-1500-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf3_ams%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_AMS=${result} >> link.txt

echo "PCF3_CS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%270caf4b10-1500-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf3_cs%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_CS=${result} >> link.txt

echo "PCF3_NFRS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2' 'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%27182dcc50-1500-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf3_nfrs%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_NFRS=${result} >> link.txt

echo "PCF3_SMS_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3Aa2e201e0-1389-11eb-b99c-ad068ba0a6c2%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf3_sms%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_SMS=${result} >> link.txt

echo "PCF3_PES_Reporting"

curl -XPOST -u elastic:test123 -H 'kbn-version: 7.9.2'  'http://172.19.0.62:5601/api/reporting/generate/csv?jobParams=%28browserTimezone%3AEurope%2FIstanbul%2CconflictedTypesFields%3A%21%28%29%2Cfields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2CindexPatternId%3A%271bbc6070-1433-11eb-b99c-ad068ba0a6c2%27%2CmetaFields%3A%21%28_source%2C_id%2C_type%2C_index%2C_score%29%2CobjectType%3Asearch%2CsearchRequest%3A%28body%3A%28_source%3A%28includes%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%29%2Cdocvalue_fields%3A%21%28%28field%3A%27%40timestamp%27%2Cformat%3Adate_time%29%29%2Cquery%3A%28bool%3A%28filter%3A%21%28%28bool%3A%28minimum_should_match%3A1%2Cshould%3A%21%28%28query_string%3A%28fields%3A%21%28Level.keyword%29%2Cquery%3A%27ALARM%2A%27%29%29%29%29%29%2C%28range%3A%28%27%40timestamp%27%3A%28format%3Astrict_date_optional_time%2Cgte%3A%27now/h-3h%27%2Clte%3A%27now/h%27%29%29%29%29%2Cmust%3A%21%28%29%2Cmust_not%3A%21%28%29%2Cshould%3A%21%28%29%29%29%2Cscript_fields%3A%28%29%2Csort%3A%21%28%28%27%40timestamp%27%3A%28order%3Aasc%2Cunmapped_type%3Aboolean%29%29%29%2Cstored_fields%3A%21%28%27%40timestamp%27%2CFile%2CID%2CLevel%2CLog_Time%2CMessages%29%2Cversion%3A%21t%29%2Cindex%3A%27sto_pcf3_pes%2A%27%29%2Ctitle%3AReporting%29' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_PES=${result} >> link.txt



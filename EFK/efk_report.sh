#!/bin/bash

rm -rf link.txt

echo "NRF1_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:d17a6a40-dc95-11ea-8839-a94c8c6486e1,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_nrf1*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo NRF1=${result} >> link.txt 

echo "NRF2_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:d9dcde70-dc95-11ea-8839-a94c8c6486e1,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_nrf2*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo NRF2=${result} >> link.txt

echo "NRF3_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%2725ba1950-f35e-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_nrf3*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo NRF3=${result} >> link.txt

echo "AMF1_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:c3fb5930-bb87-11ea-b201-9f6deb77e4e6,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_amf1*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo AMF1=${result} >> link.txt

echo "AMF2_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%271e95db00-b614-11ea-b201-9f6deb77e4e6%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_amf2*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo AMF2=${result} >> link.txt

echo "AMF3_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:a6dfa8a0-f409-11ea-8839-a94c8c6486e1,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_amf3*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo AMF3=${result} >> link.txt

echo "NEF_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%2779531370-bb8a-11ea-b201-9f6deb77e4e6%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_nef*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo NEF=${result} >> link.txt

echo "AUSF_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%27553e5150-b614-11ea-b201-9f6deb77e4e6%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_ausf*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo AUSF=${result} >> link.txt

echo "UDM_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%275e97cfb0-b614-11ea-b201-9f6deb77e4e6%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_udm*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo UDM=${result} >> link.txt

echo "UDR_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%27667116b0-b614-11ea-b201-9f6deb77e4e6%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_udr*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo UDR=${result} >> link.txt

echo "SMF1_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%274411cd80-b614-11ea-b201-9f6deb77e4e6%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_smf1*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo SMF1=${result} >> link.txt

echo "SMF2_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%274d421900-b614-11ea-b201-9f6deb77e4e6%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_smf2*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo SMF2=${result} >> link.txt

echo "SMF3_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%2757620b20-f35e-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_smf3*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo SMF3=${result} >> link.txt

echo "NSSF1_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%2772a72dc0-dc98-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_nssf1*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo NSSF1=${result} >> link.txt

echo "PCF1_AMS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,Messages),indexPatternId:%27661e85f0-dc8c-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf1_ams*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_AMS=${result} >> link.txt

echo "PCF2_AMS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%27450a64f0-dc8d-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf2_ams*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_AMS=${result} >> link.txt

echo "PCF3_AMS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%27311756f0-f35e-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf3_ams*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_AMS=${result} >> link.txt

echo "PCF1_CS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%2790a33a50-dc8c-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf1_cs*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_CS=${result} >> link.txt

echo "PCF2_CS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%27729b9600-dc8d-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf2_cs*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_CS=${result} >> link.txt

echo "PCF3_CS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%273cfeac20-f35e-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf3_cs*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_CS=${result} >> link.txt

echo "PCF1_NFRS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(),indexPatternId:%279c7c5eb0-dc8c-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf1_nfrs*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_NFRS=${result} >> link.txt

echo "PCF2_NFRS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%276a5a2e40-f72f-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf2_nfrs*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_NFRS=${result} >> link.txt

echo "PCF3_NFRS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%27954bfc50-f72f-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf3_nfrs*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_NFRS=${result} >> link.txt

echo "PCF1_PES_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:c4d5cea0-dc8c-11ea-8839-a94c8c6486e1,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf1_sms*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_PES=${result} >> link.txt

echo "PCF2_PES_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%277de8f520-dc8d-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf2_pes*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_PES=${result} >> link.txt

echo "PCF3_PES_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%27468ea3d0-f35e-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf3_pes*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_PES=${result} >> link.txt

echo "PCF1_SMS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:c4d5cea0-dc8c-11ea-8839-a94c8c6486e1,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf1_sms*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_SMS=${result} >> link.txt

echo "PCF2_SMS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%2788a20380-dc8d-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf2_sms*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_SMS=${result} >> link.txt

echo "PCF3_SMS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0'  'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%274fce58a0-f35e-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf3_sms*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_SMS=${result} >> link.txt

echo "PCF1_IWS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%2763055650-f72b-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf1_iws*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF1_IWS=${result} >> link.txt

echo "PCF2_IWS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%2773e9fee0-f72f-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf2_iws*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF2_IWS=${result} >> link.txt

echo "PCF3_IWS_Reporting"

curl -XPOST -u elastic:admin123 -H 'kbn-version: 7.2.0' 'http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(Log_Time,File,ID,Level,messages),indexPatternId:%2771be4fd0-f730-11ea-8839-a94c8c6486e1%27,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((match_all:())),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:now/h-3h,lte:now/h)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto_pcf3_iws*%27),title:reporting,type:search)' > output.txt

result=`cut -b 11-62 output.txt`

echo PCF3_IWS=${result} >> link.txt


http://192.168.13.238/s/sto/api/reporting/generate/csv?jobParams=(conflictedTypesFields:!(),fields:!(%27@timestamp%27,File,ID,Level,Log_Time,Messages,_id,_index,_score,_type),indexPatternId:f74bfbc0-b612-11ea-b201-9f6deb77e4e6,metaFields:!(_source,_id,_type,_index,_score),searchRequest:(body:(_source:(excludes:!()),docvalue_fields:!((field:%27@timestamp%27,format:date_time)),query:(bool:(filter:!((bool:(minimum_should_match:1,should:!((bool:(minimum_should_match:1,should:!((match_phrase:(Level.keyword:ALARM_NORMAL))))),(bool:(minimum_should_match:1,should:!((match_phrase:(Level.keyword:ALARM_CRITICAL))))))))),must:!((range:(%27@timestamp%27:(format:strict_date_optional_time,gte:%272020-09-28T12:01:29.532Z%27,lte:%272020-10-13T12:01:29.532Z%27)))),must_not:!(),should:!())),script_fields:(),sort:!((%27@timestamp%27:(order:desc,unmapped_type:boolean))),stored_fields:!(%27*%27),version:!t),index:%27sto*%27),title:reporting,type:search)
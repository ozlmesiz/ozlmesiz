#Bu scritp jenkins freestyle job içeriside github plugin'in sunduğu git bağlantılı repo'lara erişim sağlayarak 
#master branchten milestone baseline tag'ınin alınması için kullanılır.
#Repo'lara plugin sayeside https bağlantı yapılarak her NF'in source kodları kendi alt klasor'une clone'lanmaları sağlanır.
#VERSION ve TAG_TYPE parametreleri job içerisinden atanır.

VERSION="${MAJOR}.${PHASE_NUMBER}.${SPRINT_NUMBER}"

cd ASELSAN_Common/

git init

git tag -a CINAR_ASELSAN_Common-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/aselsan_common.git CINAR_ASELSAN_Common-v${VERSION}-${TAG_TYPE}

cd ../

cd ASELSAN_5G_Common/

git init

git tag -a CINAR_ASELSAN_5G_Common-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/aselsan5gcommon.git CINAR_ASELSAN_5G_Common-v${VERSION}-${TAG_TYPE}

cd ../

cd MCCORE_IDMS/

git init

git tag -a CINAR_MCCORE_IDMS-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/mccore_idms.git CINAR_MCCORE_IDMS-v${VERSION}-${TAG_TYPE}

cd ../

cd MCCORE_CMS/

git init

git tag -a CINAR_MCCORE_CMS-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/mccore_cms.git CINAR_MCCORE_CMS-v${VERSION}-${TAG_TYPE}

cd ../

cd AMF/

git init

git tag -a CINAR_AMF-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_amf.git CINAR_AMF-v${VERSION}-${TAG_TYPE}

cd ../

cd AUSFUDMUDR/

git init

git tag -a CINAR_AUSFUDMUDR-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_ausfudmudr.git CINAR_AUSFUDMUDR-v${VERSION}-${TAG_TYPE}

cd ../

cd NRF/

git init

git tag -a CINAR_NRF-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_nrf.git CINAR_NRF-v${VERSION}-${TAG_TYPE}

cd  ../

cd NSSF/

git init

git tag -a CINAR_NSSF-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_nssf.git CINAR_NSSF-v${VERSION}-${TAG_TYPE}

cd  ../

cd PCF_Common/

git init

git tag -a CINAR_PCF_Common-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_common.git CINAR_PCF_Common-v${VERSION}-${TAG_TYPE}

cd ../

cd PCF_AMS-2019-06/

git init

git tag -a CINAR_PCF_AMS-2019-06-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_ams.git CINAR_PCF_AMS-2019-06-v${VERSION}-${TAG_TYPE}

cd ../

cd PCF_NFRS-2019-06/

git init

git tag -a CINAR_PCF_NFRS-2019-06-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_nfrs.git CINAR_PCF_NFRS-2019-06-v${VERSION}-${TAG_TYPE}

cd ../

cd PCF_PES/

git init

git tag -a CINAR_PCF_PES-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_pes.git CINAR_PCF_PES-v${VERSION}-${TAG_TYPE}

cd ../

cd PCF_SMS-2019-06/

git init

git tag -a CINAR_PCF_SMS-2019-06-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_sms.git CINAR_PCF_SMS-2019-06-v${VERSION}-${TAG_TYPE}

cd ../

cd PCF_OMS/

git init

git tag -a CINAR_PCF_OMS-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_oms.git CINAR_PCF_OMS-v${VERSION}-${TAG_TYPE}


cd ../

cd PCF_CS/

git init

git tag -a CINAR_PCF_CS-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_cs.git CINAR_PCF_CS-v${VERSION}-${TAG_TYPE}

cd ../

cd SMF/

git init

git tag -a CINAR_SMF-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_smf.git CINAR_SMF-v${VERSION}-${TAG_TYPE}

cd ../


cd SMF_COMMON/

git tag -a CINAR_SMF_COMMON-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_smf_common.git CINAR_SMF_COMMON-v${VERSION}-${TAG_TYPE}

cd ../

cd UPF/

git init

git tag -a CINAR_UPF-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_upf.git CINAR_UPF-v${VERSION}-${TAG_TYPE}

cd ../


cd AMF_COMMON/

git init

git tag -a CINAR_AMF_COMMON-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_amf_common.git CINAR_AMF_COMMON-v${VERSION}-${TAG_TYPE}

cd ../

cd NEF/

git init

git tag -a CINAR_NEF-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_nef.git CINAR_NEF-v${VERSION}-${TAG_TYPE}


cd ../

cd PCF_IWS/

git init

git tag -a CINAR_PCF_IWS-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_iws.git CINAR_PCF_IWS-v${VERSION}-${TAG_TYPE}

cd ../

cd IMS/

git init

git tag -a CINAR_IMS-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_ims.git CINAR_IMS-v${VERSION}-${TAG_TYPE}

cd ../

cd FREEDIAMETER/

git init

git tag -a CINAR_IMS_FREEDIAMETER-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_freediameter.git CINAR_IMS_FREEDIAMETER-v${VERSION}-${TAG_TYPE}

cd ../
 
cd LIBCNRDIAMETER/

git init

git tag -a CINAR_IMS_LIBCNRDIAMETER-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_libcnrdiameter.git CINAR_IMS_LIBCNRDIAMETER-v${VERSION}-${TAG_TYPE}

cd ../

cd CCG_YAML/

git init

git tag -a CCG_YAML-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/ccg/yaml.git CCG_YAML-v${VERSION}-${TAG_TYPE}

cd ../

cd CINAR_PCF_YAML/

git init

git tag -a CINAR_PCF_YAML-v${VERSION}-${TAG_TYPE} -m "Milestone"

git push https://jenkins.servis:Ulak.2019.@bitbucket.ulakhaberlesme.com.tr:8443/scm/cin/cinar_pcf_yaml.git CINAR_PCF_YAML-v${VERSION}-${TAG_TYPE}

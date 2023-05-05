import subprocess
import json
import sys


if sys.argv[2] == "true":
  issecure = "1"
  scheme = "https"

else:
  issecure = "0"
  scheme = "http"

if sys.argv[3] == "nrf":
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/nrf')
    with open("/opt/cinar/nrf/settings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['NFSettings']['TLSSecure'] = sys.argv[2]

    with open("/opt/cinar/nrf/settings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")

elif sys.argv[3] == "smf":
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/smf')
    with open("/opt/cinar/smf/settings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['settings']['generalParameters']['TLS'] = sys.argv[2]

    with open("/opt/cinar/smf/settings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")
        
elif sys.argv[3] == "amf":
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/amf')
    with open("/opt/cinar/amf/settings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['settings']['generalParameters']['TLS'] = sys.argv[2]

    with open("/opt/cinar/amf/settings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")

elif sys.argv[3] == "udm":
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/udm')
    with open("/opt/cinar/udm/UDM.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['NFSubscription Service']['IsSecure'] = issecure
    data['NRF']['IsSecure'] = issecure
    data['NudmSDM Service']['IsSecure'] = issecure
    data['NudmUEAU Service']['IsSecure'] = issecure
    data['NudmUECM Service']['IsSecure'] = issecure

    with open("/opt/cinar/udm/UDM.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")

elif sys.argv[3] == "udr":
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/udr')
    with open("/opt/cinar/udr/UDR.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['NudrDataRepository']['IsSecure'] = issecure
    data['NRF']['IsSecure'] = issecure

    with open("/opt/cinar/udr/UDR.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")

elif sys.argv[3] == "ausf":
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/ausf')
    with open("/opt/cinar/ausf/AUSF.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['NFSubscription Service']['IsSecure'] = issecure
    data['NRF']['IsSecure'] = issecure
    data['NausfUEAU Service']['IsSecure'] = issecure

    with open("/opt/cinar/ausf/AUSF.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")

elif sys.argv[3] == "pcf":
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/pcf/ams')
    with open("/opt/cinar/pcf/ams/AMSSettings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['ServiceSettings']['udrClientTLSSecure'] = json.loads(sys.argv[2])
    data['ServiceSettings']['nrfClientTLSSecure'] = json.loads(sys.argv[2])
    data['ServiceSettings']['Scheme'] = scheme
    data['ServiceSettings']['NRFNotificationServerScheme'] = scheme

    with open("/opt/cinar/pcf/ams/AMSSettings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")
        
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/pcf/cs')
    with open("/opt/cinar/pcf/cs/CSSettings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['ServiceSettings']['Scheme'] = scheme

    with open("/opt/cinar/pcf/cs/CSSettings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")
        
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/pcf/nfrs')
    with open("/opt/cinar/pcf/nfrs/NFRSSettings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['AMSSettings']['Scheme'] = scheme
    data['SMSSettings']['Scheme'] = scheme
    data['ServiceSettings']['nrfClientTLSSecure'] = json.loads(sys.argv[2])

    with open("/opt/cinar/pcf/nfrs/NFRSSettings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")
        
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/pcf/pes')
    with open("/opt/cinar/pcf/pes/PESSettings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['ServiceSettings']['Scheme'] = scheme

    with open("/opt/cinar/pcf/pes/PESSettings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")
        
    subprocess.call('pwd', shell=True, cwd='/opt/cinar/pcf/sms')
    with open("/opt/cinar/pcf/sms/SMSSettings.json", "r") as jsonFile:
        data = json.load(jsonFile)

    data['ServiceSettings']['udrClientTLSSecure'] = json.loads(sys.argv[2])
    data['ServiceSettings']['nrfClientTLSSecure'] = json.loads(sys.argv[2])
    data['ServiceSettings']['Scheme'] = scheme
    data['ServiceSettings']['NRFNotificationServerScheme'] = scheme

    with open("/opt/cinar/pcf/sms/SMSSettings.json", "w") as jsonFile:
        y = json.dumps(data, indent=4, sort_keys=True)
        jsonFile.write(y)
        print("**********OK**********")





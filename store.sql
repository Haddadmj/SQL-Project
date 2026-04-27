ENV=development
DB_URL=jdbc:postgresql://localhost:5432/postgres
APP_SCHEMA_NAME=eair_sandbox
APP_SCHEMA_USER_NAME=postgres
APP_SCHEMA_PASSWORD=postgres
EAIR_SCHEMA_NAME=eair_sandbox
EAIR_SCHEMA_USER_NAME=postgres
EAIR_SCHEMA_PASSWORD=postgres
DARAHIM_CLIENT_ID=11
DARAHIM_CLIENT_SECRET=11
OUTBOUND_CLIENT_ID=391b5eb5ee152541658c4ec4ece28af4
OUTBOUND_CLIENT_SECRET=605960e3d0da0bc8ee4ee5abb27ef3e9
OUTBOUND_URL=https://neotek-int-42f3c648-gateway-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa/neotek/neotek-core-sandbox
AUTH_GW_URL=https://neotek-int-42f3c648-gateway-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa/neotek/neotek-core-sandbox
AVG_BALANCE_URL=https://neotek-int-42f3c648-gateway-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa/neotek/neotek-core-sandbox
OB_DATA_REPO_URL=https://neotek-int-42f3c648-gateway-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa/neotek/neotek-core-sandbox
GW_URL=https://neotek-int-42f3c648-gateway-cp4i-nonprod.apps.nt-non-cp4i.neotek.sa/neotek/neotek-core-sandbox
APIC_KEYSTORE_NAME=dev-apic.jks
APIC_KEYSTORE_PATH=keystore/dev-apic.jks
APIC_KEYSTORE_PASSWORD=123456
APP_ACTIVE_MQ_URL=tcp://127.0.0.1:5671
COMMON_MQ_USER_NAME=admin
ACTIVE_MQ_PASSWORD=admin
ENCRYPTION_KEY=WVOLRFCFOB4WvZ7QRUyz8SGoo5RGJQW9
OPE_ENCRYPTION_KEY=WVOLRFCFOB4WvZ7QRUyz8SGoo5RGJQW9
LOG_ACTIVE_MQ_URL=tcp://127.0.0.1:5671
API_KEY=API_KEY

# Missing Open Banking DB Credentials
OB_DB_URL=jdbc:postgresql://localhost:5432/uat_darahim?currentSchema=darahim
OB_DB_USERNAME=postgres
OB_DB_PASSWORD=postgres
OB_SCHEMA=darahim

# Missing Security Keys
OB_PGP_KEY= "WE2yg9fRrgj12muHwTinZ_6Qoxd0oCtr-phuR4z6nJQ="

# MQ User for Spring (Matches the property placeholder)
SPRING_MQ_USER_NAME=admin

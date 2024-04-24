.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
.super Landroid/content/ContentProvider;
.source "NSDSContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$LinesColumns;,
        Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;,
        Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$LineEntityQuery;
    }
.end annotation


# static fields
.field private static final ACCESS_STEERING_TABLE:Ljava/lang/String; = "access_steering"

.field private static final ACCOUNTS_TABLE:Ljava/lang/String; = "accounts"

.field private static final CONNECTIVITY_PARAMS_TABLE:Ljava/lang/String; = "connectivity_parameters"

.field private static final CONNECTIVITY_SERVICE_NAME_TABLE:Ljava/lang/String; = "connectivity_sevice_names"

.field private static final CREATE_ACCOUNT_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS accounts(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id TEXT NOT NULL,device_uid TEXT, email TEXT,access_token TEXT,is_active INTEGER DEFAULT 0,is_temporary INTEGER DEFAULT 0, UNIQUE(account_id));"

.field private static final CREATE_CONNECTIVITY_PARAMS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS connectivity_parameters(_id INTEGER PRIMARY KEY AUTOINCREMENT,certificate TEXT,epdg_addresses TEXT);"

.field private static final CREATE_CONNECTIVITY_PARAM_SERVICE_NAME_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS connectivity_sevice_names(_id INTEGER PRIMARY KEY AUTOINCREMENT,connectivity_id INTEGER REFERENCES connectivity_parameters(_id) NOT NULL, service_name TEXT NOT NULL,client_id TEXT NOT NULL,package_name TEXT NOT NULL,appstore_url TEXT NOT NULL);"

.field private static final CREATE_DEVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_uid TEXT NOT NULL,device_account_id INTEGER REFERENCES accounts(_id) NOT NULL,device_name TEXT NOT NULL,is_primary INTEGER DEFAULT 0,device_type INTEGER DEFAULT 0,is_local INTEGER DEFAULT 0, UNIQUE(device_account_id,device_uid));"

.field private static final CREATE_DEVICE_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS device_config(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_id TEXT NOT NULL, version TEXT, device_config TEXT);"

.field private static final CREATE_GCM_TOKENS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS gcm_tokens(_id INTEGER PRIMARY KEY AUTOINCREMENT,sender_id TEXT NOT NULL,gcm_token TEXT NOT NULL,protocol_to_server TEXT, device_uid TEXT, UNIQUE( sender_id));"

.field private static final CREATE_LINES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS lines(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER REFERENCES accounts(_id) NOT NULL,msisdn TEXT NOT NULL,friendly_name TEXT NOT NULL,status INTEGER DEFAULT 0,line_res_package TEXT, icon INTEGER,color INTEGER,type TEXT DEFAULT regular,is_owner INTEGER DEFAULT 1,service_attributes TEXT, is_device_default INTEGER DEFAULT 0, location_status INTEGER , tc_status INTEGER , e911_address_id TEXT, e911_aid_expiration TEXT, e911_server_data TEXT, e911_server_url TEXT, cab_status INTEGER DEFAULT 0, reg_status INTEGER DEFAULT 0, ring_tone TEXT, UNIQUE( account_id,msisdn));"

.field private static final CREATE_NSDS_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS nsds_configs(_id INTEGER PRIMARY KEY AUTOINCREMENT,imsi TEXT, pname TEXT NOT NULL,pvalue TEXT);"

.field private static final CREATE_PROVISIONING_PARAMS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS provisioning_parameters(_id INTEGER PRIMARY KEY AUTOINCREMENT,apn TEXT NOT NULL,pcscf_address TEXT NOT NULL,sip_uri TEXT NOT NULL,impu TEXT NOT NULL,sip_username TEXT,sip_password TEXT NOT NULL);"

.field private static final CREATE_SERVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS services(_id INTEGER PRIMARY KEY AUTOINCREMENT,line_id INTEGER REFERENCES lines(_id),device_id INTEGER REFERENCES devices(_id),is_native INTEGER DEFAULT 0,service_name TEXT,service_instance_id TEXT,expiration_time INTEGER DEFAULT 0,service_msisdn TEXT,is_owner INTEGER,msisdn_friendly_name TEXT,service_fingerprint TEXT DEFAULT NULL,service_instance_token TEXT, service_token_expire_time TEXT, provisioning_params_id INTEGER REFERENCES provisioning_parameters(_id),config_parameters TEXT);"

.field private static final CREATE_SIM_SWAP_NSDS_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sim_swap_nsds_configs(_id INTEGER PRIMARY KEY AUTOINCREMENT,imsi TEXT NOT NULL, pname TEXT NOT NULL,pvalue TEXT);"

.field private static final CREATE_SIM_SWAP_SERVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sim_swap_services(_id INTEGER PRIMARY KEY AUTOINCREMENT,line_id INTEGER REFERENCES lines(_id),device_id INTEGER REFERENCES devices(_id),is_native INTEGER ,service_name TEXT,service_instance_id TEXT,expiration_time INTEGER DEFAULT 0,service_msisdn TEXT,is_owner INTEGER,msisdn_friendly_name TEXT,service_fingerprint TEXT DEFAULT NULL,service_instance_token TEXT, service_token_expire_time TEXT, provisioning_params_id INTEGER REFERENCES provisioning_parameters(_id),config_parameters TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ericsson_nsds.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final DEVICES_TABLE:Ljava/lang/String; = "devices"

.field private static final DEVICE_CONFIG_TABLE:Ljava/lang/String; = "device_config"

.field private static final GCM_TOKENS_TABLE:Ljava/lang/String; = "gcm_tokens"

.field private static final LINES_TABLE:Ljava/lang/String; = "lines"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NSDS_CONFIG_TABLE:Ljava/lang/String; = "nsds_configs"

.field private static final PENDING_LINES_TABLE:Ljava/lang/String; = "pending_lines"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.nsds.provider"

.field private static final PROVISIONING_PARAMS_TABLE:Ljava/lang/String; = "provisioning_parameters"

.field private static final REMOVE_ALL_TABLES_AND_INDICES:Ljava/lang/String; = "PRAGMA writable_schema = 1; DELETE FROM sqlite_master WHERE TYPE IN (\'table\', \'index\'); PRAGMA writable_schema = 0; "

.field private static final SERVICES_TABLE:Ljava/lang/String; = "services"

.field private static final SIM_SWAP_NSDS_CONFIG_TABLE:Ljava/lang/String; = "sim_swap_nsds_configs"

.field private static final SIM_SWAP_SERVICES_TABLE:Ljava/lang/String; = "sim_swap_services"

.field private static final SQL_WHERE_ACCOUNT_ID:Ljava/lang/String; = "_id = ?"

.field private static final SQL_WHERE_ACTIVE_ACCOUNT:Ljava/lang/String; = "is_active = 1"

.field private static final SQL_WHERE_ALL_LINES:Ljava/lang/String; = " (lines.account_id != 0 OR is_native = 1)"

.field private static final SQL_WHERE_DEVICES_FOR_LINE_ID:Ljava/lang/String; = "devices._id IN(SELECT services.device_id from lines, devices, services  where device_id = devices._id AND line_id = lines._id AND status = 1 AND line_id = ?)"

.field private static final SQL_WHERE_DEVICE_ID:Ljava/lang/String; = "_id = ?"

.field private static final SQL_WHERE_LINES_FOR_ACTIVE_ACCOUNT:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1))"

.field private static final SQL_WHERE_LINE_ENTITIY_BASE:Ljava/lang/String; = "line_id = lines._id AND device_id = devices._id"

.field private static final SQL_WHERE_LINE_ENTITIY_ID:Ljava/lang/String; = "line_id = lines._id AND device_id = devices._id AND lines._id= ?"

.field private static final SQL_WHERE_LINE_ENTITY_ACTIVE_ACCOUNT:Ljava/lang/String; = "line_id = lines._id AND device_id = devices._id AND services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1))"

.field private static final SQL_WHERE_LINE_ID:Ljava/lang/String; = "lines._id = ?"

.field private static final SQL_WHERE_LINE_STATUS_ACTIVE:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1)) AND status = ?"

.field private static final SQL_WHERE_LOCAL_LINES_WITH_SERVICES:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND status = ?"

.field private static final SQL_WHERE_LOCAL_LINES_WITH_SERVICES_BASE:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ?"

.field public static final TABLE_JOIN_FOR_ALL_LINES:Ljava/lang/String; = "lines LEFT OUTER JOIN services on services.line_id = lines._id "

.field public static final TABLE_JOIN_LINES_SERVICES:Ljava/lang/String; = "lines, services,devices"

.field private static final sLineEntityProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLineWithServicesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

.field protected mNsdsService:Landroid/os/Messenger;

.field protected mNsdsSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smrenameDeviceAccountIdColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->renameDeviceAccountIdColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 63
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "lines/#/enable_cab"

    const/16 v2, 0x31

    const-string v3, "com.samsung.ims.nsds.provider"

    .line 236
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "lines/#/disable_cab"

    const/16 v2, 0x32

    .line 238
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "lines"

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "lines/#/devices"

    const/16 v2, 0x2b

    .line 243
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/#/lines/#/services"

    const/4 v2, 0x6

    .line 245
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices"

    const/4 v2, 0x2

    .line 248
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/#/lines/#/add_services"

    const/16 v2, 0x11

    .line 250
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/#/lines/#/remove_services"

    const/16 v2, 0x12

    .line 252
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/#/lines/#/acitvate_services"

    const/16 v2, 0x13

    .line 254
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/#/lines/#/deactivate_services"

    const/16 v2, 0x14

    .line 256
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "accounts/disable_active_account"

    const/16 v2, 0x30

    .line 259
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "activate_sim_device"

    const/16 v2, 0x1e

    .line 261
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "deactivate_sim_device"

    const/16 v2, 0x1f

    .line 263
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "update_e911_address"

    const/16 v2, 0x2e

    .line 266
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "vowifi_toggle_on"

    const/16 v2, 0x20

    .line 268
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "vowifi_toggle_off"

    const/16 v2, 0x21

    .line 270
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "accounts/upload_all_contacts"

    const/16 v2, 0x17

    .line 273
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "accounts/download_all_contacts"

    const/16 v2, 0x18

    .line 275
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "accounts/upload_updated_contact/#"

    const/16 v2, 0x19

    .line 277
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/#/set_primary"

    const/16 v2, 0x1a

    .line 280
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/own_activation_status"

    const/16 v2, 0x1c

    .line 282
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/own_login_status"

    const/16 v2, 0x29

    .line 284
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/own_ready_status"

    const/16 v2, 0x3c

    .line 286
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/own_nsds_service_status"

    const/16 v2, 0x3d

    .line 288
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/push_token"

    const/16 v2, 0x43

    .line 290
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "device_config"

    const/16 v2, 0x27

    .line 293
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "device_config/element"

    const/16 v2, 0x3e

    .line 294
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "nsds_configs"

    const/16 v2, 0x28

    .line 296
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "nsds_configs/entitlement_url"

    const/16 v2, 0x49

    .line 298
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "devices/#/services"

    const/16 v2, 0x2a

    .line 301
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "all_lines_in_current_account"

    const/16 v2, 0x2c

    .line 303
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "all_lines"

    const/16 v2, 0x2d

    .line 305
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "all_lines_internal"

    const/16 v2, 0x4d

    .line 307
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "services"

    const/16 v2, 0x3f

    .line 310
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "sim_swap_nsds_configs"

    const/16 v2, 0x47

    .line 313
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "sim_swap_services"

    const/16 v2, 0x48

    .line 314
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "gcm_tokens"

    const/16 v2, 0x4a

    .line 316
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "retrieve_aka_token"

    const/16 v2, 0x50

    .line 318
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "reconnect_db"

    const/16 v2, 0x51

    .line 320
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "binding_service"

    const/16 v2, 0x52

    .line 322
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "lines._id"

    .line 386
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "account_id"

    const-string v4, "lines.account_id"

    .line 387
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "msisdn"

    .line 388
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "friendly_name"

    .line 389
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "type"

    .line 390
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "status"

    .line 391
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "line_res_package"

    .line 392
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "icon"

    .line 393
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "color"

    .line 394
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "services.is_native"

    const-string v10, "is_native"

    .line 395
    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "lines.is_owner"

    const-string v11, "is_owner"

    .line 396
    invoke-virtual {v0, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {v0, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "service_attributes"

    .line 398
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "is_device_default"

    .line 399
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "location_status"

    .line 400
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "tc_status"

    .line 401
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "e911_address_id"

    .line 402
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "e911_aid_expiration"

    .line 403
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "e911_server_data"

    .line 404
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "e911_server_url"

    .line 405
    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "cab_status"

    const-string v12, "cab_status"

    .line 406
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "reg_status"

    const-string/jumbo v12, "reg_status"

    .line 407
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "ring_tone"

    const-string/jumbo v12, "ring_tone"

    .line 408
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "service_name"

    const-string/jumbo v12, "service_name"

    .line 409
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "service_fingerprint"

    const-string/jumbo v12, "service_fingerprint"

    .line 410
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "service_instance_id"

    const-string/jumbo v12, "service_instance_id"

    .line 411
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "service_instance_token"

    const-string/jumbo v12, "service_instance_token"

    .line 412
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "service_token_expire_time"

    const-string/jumbo v12, "service_token_expire_time"

    .line 413
    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    .line 420
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Lines.is_owner"

    .line 424
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {v0, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v0, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_uid"

    const-string v2, "device_uid"

    .line 429
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_name"

    const-string v2, "device_name"

    .line 430
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_primary"

    const-string v2, "is_primary"

    .line 431
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_type"

    const-string v2, "device_type"

    .line 432
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    return-void
.end method

.method private activateSimDevice(I)V
    .locals 4

    .line 1294
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activate_after_oos"

    const-string v3, "completed"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 1298
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1299
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SLOT_ID"

    .line 1300
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EVENT_TYPE"

    const/16 v2, 0xb

    .line 1301
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "RETRY_COUNT"

    const/4 v2, 0x0

    .line 1302
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1303
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1304
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1306
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activateSIMDevice: failed to activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addServicesToLine(Landroid/net/Uri;)J
    .locals 12

    .line 1450
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1451
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "service_names"

    .line 1452
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    .line 1453
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1454
    array-length v3, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v3, :cond_0

    aget-object v9, v2, v6

    .line 1455
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "device_id"

    .line 1456
    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "line_id"

    .line 1457
    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v11, "service_name"

    .line 1458
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-direct {p0, v10}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoServices(Landroid/content/ContentValues;)J

    move-result-wide v9

    add-long/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    cmp-long p0, v7, v4

    if-nez p0, :cond_1

    .line 1464
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not add services:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to line Id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v7
.end method

.method private appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1528
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " AND ("

    .line 1529
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    .line 1531
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1533
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private broadcastPrimaryDeviceSettingChanged(Ljava/lang/String;)V
    .locals 2

    .line 1430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.IS_PRIMARY_ACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "is_primary_device"

    .line 1432
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1433
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private declared-synchronized connectToNSDSMultiSimService()V
    .locals 5

    monitor-enter p0

    .line 813
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToNSDSMultiSimService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.nsds.NSDSMultiSimService"

    .line 827
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsSvcConn:Landroid/content/ServiceConnection;

    .line 845
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-static {v2, v0, v1, v4, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deactivateSimDevice(Landroid/net/Uri;)V
    .locals 4

    .line 1311
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getSlotIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1313
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1314
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v2, "activate_after_oos"

    const-string v3, "completed"

    invoke-static {v1, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "imsi"

    .line 1318
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1319
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    .line 1320
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1321
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IMSI"

    .line 1322
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1324
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1326
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openLoginPage: failed to open login page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private deleteFromServices(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 724
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 726
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "device_id = ? AND line_id = ?"

    .line 729
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "services"

    .line 730
    invoke-virtual {p0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 731
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 733
    :try_start_1
    sget-object p2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete from Services table:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    .line 735
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 736
    throw p1
.end method

.method private disableActiveAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 2

    .line 1190
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->disableLinesAndServices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1191
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 1192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_active"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "1"

    .line 1194
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "accounts"

    const-string v1, "is_active = ?  AND _id = ?"

    .line 1195
    invoke-virtual {p1, v0, p0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-gtz p0, :cond_0

    .line 1197
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string p2, "disabling the account failed"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private disableLinesAndServices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "status"

    const-string v2, "0"

    .line 1204
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lines"

    const/4 v2, 0x0

    .line 1205
    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1207
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableLinesAndServices: de-activated :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " lines for logout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    .line 1209
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_0
    const-string p0, "disableLinesAndServices: de-activated lines for logout"

    .line 1211
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "services"

    .line 1212
    invoke-virtual {p1, p0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private getDeviceConfigElement(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "tag_name"

    .line 1252
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1253
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Empty tag name. Return null"

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "device_config"

    const/4 v8, 0x0

    aput-object v1, v4, v8

    .line 1258
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_1

    .line 1260
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 1258
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 1263
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 1265
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL exception while parseDeviceConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_2
    :goto_3
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v1, "element_name"

    const-string v2, "element_value"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 1270
    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/util/ConfigElementExtractor;->getAllElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1271
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1272
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 1275
    :cond_3
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Device Config is null: "

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p0
.end method

.method private getDeviceOwnActivationStatus(I)Landroid/database/Cursor;
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 1218
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "activation_in_progress"

    goto :goto_0

    .line 1220
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v1, "device_state"

    invoke-static {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1222
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceState: onSimSwapEvt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " state "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    new-instance p1, Landroid/database/MatrixCursor;

    const-string v0, "activation_status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p1
.end method

.method private getDeviceOwnReadyStatus(I)Landroid/database/Cursor;
    .locals 3

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1232
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1236
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    .line 1237
    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->activateSimDevice(I)V

    const/4 v1, 0x0

    .line 1242
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "own_ready_status:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo p1, "ready_status"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method

.method private getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string v0, "device_uid"

    .line 987
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getSlotIdFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 991
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 993
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "dummy.txt.txt"

    :cond_1
    return-object v0
.end method

.method private getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    if-eqz p3, :cond_2

    .line 1558
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 1564
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 1565
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1566
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") is of type "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is required."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    :cond_2
    :goto_0
    return-object p0
.end method

.method private getSlotIdFromUri(Landroid/net/Uri;)I
    .locals 0

    :try_start_0
    const-string/jumbo p0, "slot"

    .line 980
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleVoWiFiToggleOffEvent(I)V
    .locals 4

    .line 1348
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1349
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v2, "activate_after_oos"

    const-string v3, "completed"

    invoke-static {v1, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xdd

    .line 1354
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1355
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SLOT_ID"

    .line 1356
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1357
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1358
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1360
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVoWiFiToggleOffEvent: failed to toggle off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleVoWiFiToggleOnEvent(I)V
    .locals 4

    .line 1331
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v2, "activate_after_oos"

    const-string v3, "completed"

    invoke-static {v1, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xdc

    .line 1337
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1338
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SLOT_ID"

    .line 1339
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1341
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1343
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVoWiFiToggleOnEvent: failed to toggle on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private insertDeviceConfig(Landroid/content/ContentValues;)J
    .locals 5

    .line 741
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 742
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "device_config"

    const/4 v3, 0x0

    .line 745
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 746
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 748
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into device_config table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 750
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 751
    throw p1
.end method

.method private insertIntoAccounts(Landroid/content/ContentValues;)J
    .locals 5

    .line 679
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 680
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "accounts"

    const/4 v3, 0x0

    .line 682
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 683
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 685
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into DEVICES table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 687
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    throw p1
.end method

.method private insertIntoDevices(Landroid/content/ContentValues;)J
    .locals 5

    .line 664
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 665
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "devices"

    const/4 v3, 0x0

    .line 667
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 668
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 670
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into DEVICES table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 672
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 673
    throw p1
.end method

.method private insertIntoGcmTokens(Landroid/content/ContentValues;)J
    .locals 5

    .line 710
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 711
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "gcm_tokens"

    const/4 v3, 0x0

    .line 713
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 714
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 716
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into GCM Tokens table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 718
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 719
    throw p1
.end method

.method private insertIntoLines(Landroid/content/ContentValues;)J
    .locals 13

    const-string v0, "icon"

    const-string v1, "line_res_package"

    const-string v2, "color"

    .line 622
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 623
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v4, -0x1

    .line 625
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 626
    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 627
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 628
    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :try_start_1
    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 632
    :try_start_2
    sget-object v9, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Lines resource package not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 637
    invoke-direct {p0, v7, v2, v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v10, " from values"

    if-nez v9, :cond_1

    .line 639
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 640
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Color resource is null, removing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v8, "drawable"

    .line 643
    invoke-direct {p0, v7, v8, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 645
    sget-object v7, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Icon resource is null, removing: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_2
    if-nez v9, :cond_3

    if-nez p0, :cond_3

    .line 649
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 650
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Both color and icon resource are null, removing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p0, "lines"

    const/4 v0, 0x0

    .line 652
    invoke-virtual {v3, p0, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 653
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 655
    :try_start_4
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not insert into LINES:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 657
    :goto_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v4

    :goto_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    throw p0
.end method

.method private insertIntoNsdsConfig(Landroid/content/ContentValues;)J
    .locals 5

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 779
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string v2, "nsds_configs"

    const/4 v3, 0x0

    .line 781
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 782
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 784
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into nsds_configs table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 786
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 787
    throw p1
.end method

.method private insertIntoServices(Landroid/content/ContentValues;)J
    .locals 5

    .line 695
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 696
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string/jumbo v2, "services"

    const/4 v3, 0x0

    .line 698
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 699
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 701
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into SERVICES table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 703
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 704
    throw p1
.end method

.method private insertIntoSimSwapNsdsConfig(Landroid/content/ContentValues;)J
    .locals 5

    .line 793
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 794
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v0, -0x1

    :try_start_0
    const-string/jumbo v2, "sim_swap_nsds_configs"

    const/4 v3, 0x0

    .line 796
    invoke-virtual {p0, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 797
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 799
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not insert into nsds_configs table:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v0

    .line 801
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    throw p1
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1546
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1548
    :cond_0
    array-length p0, p1

    const/4 v0, 0x1

    add-int/2addr p0, v0

    .line 1549
    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1550
    aput-object p2, p0, v1

    .line 1551
    array-length p2, p1

    invoke-static {p1, v1, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private queryInternalWithService(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 2

    .line 1001
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryInternalWithService: uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "query: NSDS service is not connected"

    .line 1003
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1008
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getSlotIdFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 1011
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/16 v0, 0x1c

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 1016
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceOwnReadyStatus(I)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 1013
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceOwnActivationStatus(I)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private removeServicesFromLine(Landroid/net/Uri;)I
    .locals 3

    .line 1476
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1477
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1479
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->deleteFromServices(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    .line 1481
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete services for device Id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private static renameDeviceAccountIdColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 478
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "renameDeviceAccountIdColumn()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "devices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " RENAME TO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "CREATE TABLE IF NOT EXISTS devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_uid TEXT NOT NULL,device_account_id INTEGER REFERENCES accounts(_id) NOT NULL,device_name TEXT NOT NULL,is_primary INTEGER DEFAULT 0,device_type INTEGER DEFAULT 0,is_local INTEGER DEFAULT 0, UNIQUE(device_account_id,device_uid));"

    .line 483
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " select * from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private retrieveAkaToken(Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    const-string v0, "imsi"

    .line 1403
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1404
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x31

    .line 1405
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1406
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "IMSI"

    .line 1407
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EVENT_TYPE"

    const/16 v2, 0x13

    .line 1408
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "RETRY_COUNT"

    const/4 v2, 0x0

    .line 1409
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1410
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1411
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1413
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrieveAkaToken: failed to retrieve aka"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setDevicePrimary(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I
    .locals 5

    .line 1365
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_primary"

    .line 1366
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1367
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1368
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Can not update isPrimary since Query parameter:is_primary is null or empty"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v3, "devices"

    const-string v4, "_id = ?"

    .line 1373
    invoke-virtual {p1, v3, v0, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 1375
    sget-object p2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDevicePrimary is successful:"

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->broadcastPrimaryDeviceSettingChanged(Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method private updateCabStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)I
    .locals 3

    .line 1437
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "cab_status"

    .line 1438
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1439
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1440
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "lines"

    const-string v2, "lines._id = ?"

    .line 1441
    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 1443
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCabStatus: cab status successfully updated for lineId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to :"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private updateDeviceConfig(Landroid/content/ContentValues;)I
    .locals 4

    .line 762
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 763
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "device_config"

    const/4 v2, 0x0

    .line 766
    invoke-virtual {p0, v1, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 767
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 769
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update connectivity_parameters table:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    .line 771
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 772
    throw p1
.end method

.method private updateE911Address(I)V
    .locals 3

    .line 1282
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x13

    .line 1283
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1284
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SLOT_ID"

    .line 1285
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1286
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1287
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1289
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openLoginPage: failed to open login page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateEntitlementUrl(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "entitlement_url"

    .line 1383
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imsi"

    .line 1384
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1387
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xd4

    .line 1388
    iput v2, v1, Landroid/os/Message;->what:I

    .line 1389
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "URL"

    .line 1390
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IMSI"

    .line 1392
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    :cond_0
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1395
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1397
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEntitlementUrl: failed to request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateInternalWithService(Landroid/net/Uri;)I
    .locals 5

    .line 1130
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInternalWithService: uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo p0, "update: NSDS service is not connected"

    .line 1132
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1137
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getSlotIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 1140
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1141
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "SimSwap process is in progress. Ignore operations now"

    .line 1142
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1147
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_4

    const/16 v3, 0x49

    if-eq v0, v3, :cond_3

    const/16 v3, 0x50

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1173
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->handleVoWiFiToggleOffEvent(I)V

    goto :goto_0

    .line 1170
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->handleVoWiFiToggleOnEvent(I)V

    goto :goto_0

    .line 1164
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->deactivateSimDevice(Landroid/net/Uri;)V

    goto :goto_0

    .line 1161
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->activateSimDevice(I)V

    goto :goto_0

    .line 1158
    :pswitch_4
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateServicesStatusForLine(Landroid/net/Uri;Z)I

    move-result v2

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    .line 1155
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateServicesStatusForLine(Landroid/net/Uri;Z)I

    move-result v2

    goto :goto_0

    .line 1152
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->removeServicesFromLine(Landroid/net/Uri;)I

    move-result v2

    goto :goto_0

    .line 1149
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->addServicesToLine(Landroid/net/Uri;)J

    goto :goto_0

    .line 1179
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->retrieveAkaToken(Landroid/net/Uri;)V

    goto :goto_0

    .line 1176
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateEntitlementUrl(Landroid/net/Uri;)V

    goto :goto_0

    .line 1167
    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateE911Address(I)V

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateServicesStatusForLine(Landroid/net/Uri;Z)I
    .locals 7

    .line 1492
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1493
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "service_ids"

    .line 1494
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, " "

    .line 1495
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1496
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v2, v4

    .line 1497
    invoke-direct {p0, v0, v1, v6, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateStatusInServices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    .line 1502
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not add services:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to line Id"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v5
.end method

.method private updateStatusInServices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    .line 1508
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1510
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x0

    .line 1512
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "service_status"

    .line 1513
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "device_id= ? AND line_id= ? AND _id = ?"

    .line 1515
    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "services"

    .line 1516
    invoke-virtual {p0, p2, v1, p4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1517
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1519
    :try_start_1
    sget-object p2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateStatusInServices: Could not update Services table:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1521
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1522
    throw p1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10

    .line 1582
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "imsi"

    .line 1584
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    const-string/jumbo v3, "sim_swap_nsds_configs"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    const/16 v2, 0x47

    if-eq v0, v2, :cond_0

    .line 1593
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "None of the Uri\'s match for bulkInsert:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    :cond_0
    move-object v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "nsds_configs"

    .line 1596
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1597
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ignoring nsds_config inserts since migration is not done yet"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 1601
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v5, :cond_7

    .line 1602
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 1603
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1605
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "DELETE FROM sim_swap_nsds_configs"

    .line 1606
    invoke-virtual {v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1607
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "INSERT INTO "

    if-eqz v3, :cond_3

    .line 1608
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SELECT * from nsds_configs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1610
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " SELECT * from nsds_configs WHERE IMSI = \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_1
    const-string v1, "DELETE FROM sim_swap_services"

    .line 1612
    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "INSERT INTO sim_swap_services SELECT * from services"

    .line 1613
    invoke-virtual {v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1616
    :cond_4
    array-length v1, p2

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, p2, v2

    .line 1617
    invoke-virtual {v5, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1619
    :cond_5
    new-instance p0, Landroid/database/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to insert row into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1622
    :cond_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1623
    array-length v2, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1625
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1628
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 1625
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1626
    throw p0

    :cond_7
    :goto_3
    return v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .line 490
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x1

    .line 500
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_5

    const/16 v5, 0x47

    if-eq v4, v5, :cond_4

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_3

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2

    const/16 v5, 0x28

    if-eq v4, v5, :cond_1

    .line 537
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "None of the Uri\'s match for insert:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_1
    :try_start_1
    const-string v0, "nsds_configs"

    .line 529
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_2
    const-string v0, "device_config"

    .line 524
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move v3, v2

    goto :goto_1

    :catch_0
    move-exception p2

    move v3, v2

    goto :goto_4

    :cond_3
    :try_start_2
    const-string v0, "gcm_tokens"

    .line 508
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_3
    const-string/jumbo v0, "sim_swap_nsds_configs"

    .line 534
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_4
    const-string v0, "accounts"

    .line 502
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_6
    const-string p2, "device_id = ?"

    new-array p3, v3, [Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p3, v2

    const-string/jumbo v0, "services"

    .line 519
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 511
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x3

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->deleteFromServices(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_8
    const-string v0, "devices"

    .line 514
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_9
    const-string v0, "lines"

    .line 505
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    :goto_1
    move v2, p2

    .line 539
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 543
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p2

    .line 541
    :goto_4
    :try_start_5
    sget-object p3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not update LINES table:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :goto_5
    if-lez v2, :cond_a

    if-eqz v3, :cond_a

    .line 546
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_a
    return v2

    .line 543
    :goto_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    throw p0

    :cond_b
    :goto_7
    return v2
.end method

.method public getDevicePushToken(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 3

    .line 1418
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getSlotIdFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 1419
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 1420
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1421
    new-instance p1, Landroid/database/MatrixCursor;

    const-string v0, "device_push_token"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1424
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicePushToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 558
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 564
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    const/16 v2, 0x47

    if-eq v0, v2, :cond_4

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x27

    if-eq v0, v2, :cond_2

    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 590
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoNsdsConfig(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 591
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->buildNsdsConfigUri(J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 586
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertDeviceConfig(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 587
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceConfig;->buildDeviceConfigUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 598
    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoGcmTokens(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 599
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->buildGcmTokensUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 594
    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoSimSwapNsdsConfig(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 595
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$SimSwapNsdsConfigs;->buildNsdsConfigUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 582
    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoAccounts(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 583
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Accounts;->buildAccountUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 574
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 575
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "device_id"

    .line 576
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "line_id"

    .line 577
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoServices(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 579
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Services;->buildServiceUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 570
    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoDevices(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 571
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->buildDeviceUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 566
    :cond_8
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoLines(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 567
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLineUri(J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    .line 605
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_9
    :goto_1
    return-object v1
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 1

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreate()Z
    .locals 1

    .line 808
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 850
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 856
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 857
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 859
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const-string v7, "lines._id"

    const-string v8, "lines, services,devices"

    const-string v9, "_id"

    if-eqz v6, :cond_d

    const/4 v10, 0x2

    const-string v11, "devices"

    if-eq v6, v10, :cond_c

    const/16 v10, 0x1d

    const-string/jumbo v12, "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND status = ?"

    const-string v13, "1"

    if-eq v6, v10, :cond_b

    const/16 v10, 0x43

    if-eq v6, v10, :cond_a

    const/16 v10, 0x4a

    if-eq v6, v10, :cond_9

    const/16 v10, 0x4d

    const-string v14, "lines LEFT OUTER JOIN services on services.line_id = lines._id "

    if-eq v6, v10, :cond_7

    const/16 v10, 0x27

    if-eq v6, v10, :cond_6

    const/16 v10, 0x28

    if-eq v6, v10, :cond_5

    const/16 v10, 0x3e

    if-eq v6, v10, :cond_4

    const/16 v10, 0x3f

    const-string/jumbo v15, "services"

    if-eq v6, v10, :cond_3

    const-string v10, "accounts"

    move-object/from16 v16, v15

    const/4 v15, 0x1

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    packed-switch v6, :pswitch_data_2

    .line 972
    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->queryInternalWithService(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_0
    const-string/jumbo v0, "sim_swap_services"

    .line 935
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 936
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    const-string/jumbo v0, "sim_swap_nsds_configs"

    .line 931
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 932
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 906
    :pswitch_2
    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 908
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v6, "0"

    .line 909
    invoke-direct {v0, v4, v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 910
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 911
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 939
    :pswitch_3
    invoke-virtual {v5, v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v0, " (lines.account_id != 0 OR is_native = 1)"

    .line 941
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 942
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 943
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 944
    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 946
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 872
    :pswitch_4
    invoke-virtual {v5, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v6, "devices._id IN(SELECT services.device_id from lines, devices, services  where device_id = devices._id AND line_id = lines._id AND status = 1 AND line_id = ?)"

    .line 873
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 875
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 914
    :pswitch_5
    invoke-virtual {v5, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 915
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 888
    :pswitch_6
    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string/jumbo v6, "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1)) AND status = ?"

    .line 889
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 890
    invoke-direct {v0, v4, v13}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 891
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 893
    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, v3

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v5

    move-object v4, v2

    move-object/from16 v5, p2

    move-object v7, v0

    move-object/from16 v10, p5

    .line 895
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 918
    :pswitch_7
    invoke-virtual {v5, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v0, "is_active = 1"

    .line 919
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 920
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, v16

    .line 882
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "device_id = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "line_id"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 885
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    move-object v0, v15

    .line 961
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 962
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 958
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceConfigElement(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    const-string v0, "nsds_configs"

    .line 927
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 928
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 923
    :cond_6
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 949
    :cond_7
    invoke-virtual {v5, v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 951
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 952
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 953
    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 955
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    :cond_9
    const-string v0, "gcm_tokens"

    .line 965
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 966
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 969
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDevicePushToken(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_2

    .line 898
    :cond_b
    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 900
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 901
    invoke-direct {v0, v4, v13}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 902
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 903
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    .line 878
    :cond_c
    invoke-virtual {v5, v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p5

    .line 879
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    .line 862
    :cond_d
    :pswitch_9
    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string/jumbo v6, "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1))"

    .line 863
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 864
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 865
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 867
    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_e
    move-object v6, v3

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v5

    move-object v4, v2

    move-object/from16 v5, p2

    move-object v7, v0

    move-object/from16 v10, p5

    .line 869
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_f
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_9
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .line 1027
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x52

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const-string p1, "Binding to NSDSMultiSimService"

    .line 1031
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->connectToNSDSMultiSimService()V

    return v4

    .line 1036
    :cond_0
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x51

    if-ne v2, v3, :cond_2

    const-string p1, "Reconnect DB for DatabaseHelper null"

    .line 1037
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz p1, :cond_1

    const-string p1, "Reconnect DB after closing the previous DB"

    .line 1039
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1042
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    return v4

    .line 1046
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_6

    .line 1050
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1052
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1053
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_0

    .line 1055
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1059
    :goto_0
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_a

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-eq v1, v5, :cond_9

    const/16 v3, 0x9

    const-string v5, "accounts"

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_7

    const/16 v3, 0x4a

    if-eq v1, v3, :cond_6

    const/16 v3, 0x27

    if-eq v1, v3, :cond_5

    const/16 v3, 0x28

    if-eq v1, v3, :cond_c

    packed-switch v1, :pswitch_data_0

    .line 1114
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateInternalWithService(Landroid/net/Uri;)I

    move-result p2

    goto :goto_1

    .line 1108
    :pswitch_0
    invoke-direct {p0, v2, p1, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateCabStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)I

    move-result p2

    goto :goto_1

    .line 1105
    :pswitch_1
    invoke-direct {p0, v2, p1, v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateCabStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)I

    move-result p2

    goto :goto_1

    :pswitch_2
    const-string p2, "account_id"

    .line 1086
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1087
    invoke-direct {p0, v2, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->disableActiveAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 1076
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = ?"

    .line 1077
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1079
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p4, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 1080
    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_c

    const-string p2, "Updating the account failed"

    .line 1082
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1099
    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateDeviceConfig(Landroid/content/ContentValues;)I

    move-result p2

    goto :goto_1

    :cond_6
    const-string v0, "gcm_tokens"

    .line 1067
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 1111
    :cond_7
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->setDevicePrimary(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I

    move-result p2

    :goto_1
    move v4, p2

    goto :goto_2

    .line 1073
    :cond_8
    invoke-virtual {v2, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_9
    const-string p3, "device_id = ? AND line_id = ?"

    new-array p4, v3, [Ljava/lang/String;

    .line 1091
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p4, v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p4, v6

    const-string/jumbo v1, "services"

    .line 1092
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c

    .line 1094
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Updated Services table for deviceId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and lineId :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1094
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v0, "devices"

    .line 1070
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_b
    const-string v1, "lines"

    .line 1061
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_c

    const-string p2, "Updating lines failed"

    .line 1063
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_c
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    :goto_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p2

    .line 1118
    :try_start_2
    sget-object p3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not update table:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_d

    .line 1124
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_d
    return v4

    .line 1120
    :goto_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1121
    throw p0

    :cond_e
    :goto_6
    return v4

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

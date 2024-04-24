.class Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudMessageBufferDBPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Landroid/content/Context;)V
    .locals 2

    .line 611
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 612
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->database_name:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x18

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 613
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1024
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dropAllAndReCreateTables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE sms"

    .line 1025
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE pdu"

    .line 1026
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE addr"

    .line 1027
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE part"

    .line 1028
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE rcsimft"

    .line 1029
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE participant"

    .line 1030
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE session"

    .line 1031
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE notification"

    .line 1032
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE summarytable"

    .line 1033
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE multilinestatus"

    .line 1034
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_messages"

    .line 1035
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_pin"

    .line 1036
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_greeting"

    .line 1037
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_profile"

    .line 1038
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_quota"

    .line 1039
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 618
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DatabaseHelper onCreate()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE TABLE sms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, address TEXT, person INTEGER, date INTEGER, date_sent INTEGER, protocol INTEGER, read INTEGER DEFAULT 0, status INTEGER, type INTEGER, reply_path_present INTEGER, subject TEXT, body TEXT, service_center TEXT, locked INTEGER, error_code INTEGER, seen INTEGER, deletable INTEGER, sim_slot INTEGER, sim_imsi TEXT, hidden INTEGER, group_id INTEGER, group_type INTEGER, delivery_date INTEGER, app_id INTEGER, msg_id INTEGER, callback_number TEXT, reserved INTEGER, pri INTEGER, teleservice_id INTEGER, link_url TEXT, svc_cmd INTEGER, svc_cmd_content TEXT, roam_pending INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, group_cotag TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

    .line 619
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE pdu(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, thread_id INTEGER, date INTEGER, date_sent INTEGER, msg_box INTEGER, read INTEGER DEFAULT 0, m_id TEXT, sub TEXT,sub_cs INTEGER, ct_t TEXT, ct_l TEXT, exp INTEGER, m_cls TEXT, m_type INTEGER, v INTEGER, m_size INTEGER, pri INTEGER, rr INTEGER, rpt_a INTEGER, resp_st INTEGER, st INTEGER, tr_id TEXT, retr_st INTEGER, retr_txt TEXT, retr_txt_cs INTEGER, read_status INTEGER, ct_cls INTEGER, resp_txt TEXT, d_tm INTEGER, d_rpt INTEGER, locked INTEGER, seen INTEGER, sim_slot INTEGER, sim_imsi TEXT, deletable INTEGER, hidden INTEGER, app_id INTEGER, msg_id INTEGER, callback_set INTEGER, reserved INTEGER, text_only INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, correlation_id TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

    .line 620
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE addr(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, msg_id INTEGER, contact_id INTEGER, address TEXT, type INTEGER, charset INTEGER);"

    .line 621
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE part(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, mid INTEGER, seq INTEGER, ct TEXT, name TEXT, chset INTEGER, cd TEXT, fn TEXT, cid TEXT, cl TEXT, ctt_s INTEGER, ctt_t TEXT, _data TEXT, text TEXT, content_uri TEXT, payloadurl TEXT);"

    .line 622
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE rcsimft(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, sim_imsi TEXT DEFAULT \'\',file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,file_disposition INTEGER,playing_length INTEGER DEFAULT 0,request_message_id TEXT,is_resizable INTEGER DEFAULT 0, content_uri TEXT,thumbnail_uri TEXT,correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, payloadurl TEXT, payloadpartThumb TEXT, payloadpartThumb_filename TEXT, payloadpartFull TEXT, payloadencoding INTEGER DEFAULT 0, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, reference_id TEXT DEFAULT NULL,reference_type TEXT DEFAULT NULL,reference_value TEXT DEFAULT NULL,suggestion TEXT DEFAULT NULL,maap_traffic_type TEXT DEFAULT NULL,syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, creator TEXT DEFAULT NULL,linenum TEXT DEFAULT NULL);"

    .line 623
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE participant(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT,sim_imsi TEXT DEFAULT NULL);"

    .line 624
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE session(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,own_sim_imsi TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER,status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER, session_uri TEXT DEFAULT NULL, preferred_uri TEXT DEFAULT NULL,linenum TEXT DEFAULT NULL,icon_path TEXT,icon_participant TEXT,sim_imsi TEXT DEFAULT NULL,subject_timestamp LONG,inserted_time_stamp LONG,icon_timestamp TEXT,subject_participant TEXT DEFAULT NULL,created_by TEXT DEFAULT NULL,invited_by TEXT DEFAULT NULL,syncdirection INTEGER DEFAULT 0,syncaction INTEGER DEFAULT 0);"

    .line 625
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE notification(_bufferdbid INTEGER PRIMARY KEY,id INTEGER,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT NULL);"

    .line 626
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE summarytable(_bufferdbid INTEGER PRIMARY KEY,messagetype INTEGER DEFAULT 0, correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, linenum TEXT, lastmodseq INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT NULL);"

    .line 627
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE multilinestatus(_bufferdbid INTEGER PRIMARY KEY,linenum TEXT,messagetype INTEGER,initsync_cusor TEXT DEFAULT NULL,initsync_status INTEGER DEFAULT 0,initupload_status INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT NULL);"

    .line 628
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_messages(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,timeStamp INTEGER,text TEXT,flagRead INTEGER,flags INTEGER,messageId TEXT,sender TEXT,recipient TEXT,fileName TEXT,mimeType INTEGER,size INTEGER,filepath TEXT,messageKey TEXT,importance TEXT, sensitivity TEXT, sim_imsi TEXT DEFAULT NULL, correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, uploadstatus INTEGER,v2t_language TEXT,content_uri TEXT);"

    .line 629
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_pin(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,oldpwd TEXT, newpwd TEXT,error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

    .line 630
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_greeting(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,fileName TEXT,mimeType TEXT,size INTEGER,filepath TEXT,flags INTEGER,duration INTEGER,account_number TEXT,messageId TEXT,greetingtype INTEGER,error_message TEXT,uploadstatus INTEGER,correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, content_uri TEXT);"

    .line 631
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_profile(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,cos INTEGER,greeting_type TEXT,status TEXT NOT NULL DEFAULT U, password TEXT,nut TEXT,language TEXT,isblocked TEXT,vvmon TEXT,email_addr1 TEXT,email_addr2 TEXT,v2t_language TEXT,line_number TEXT,sim_imsi TEXT DEFAULT \'\',user_authenticated INTEGER NOT NULL DEFAULT 0, profile_changetype INTEGER, error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, v2t_sms TEXT,v2t_email TEXT);"

    .line 632
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_quota(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,TotalStorage LONG DEFAULT 0,OccupiedStorage LONG DEFAULT 0,VMMessagesQuota INTEGER DEFAULT 0,VMOccupiedMessages INTEGER DEFAULT 0,LastUpdated LONG DEFAULT 0,linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncaction INTEGER DEFAULT 0);"

    .line 633
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1016
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1018
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1020
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db downgrade: oldVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newVersion="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    const-string/jumbo v0, "rcsimft"

    const-string/jumbo v1, "sim_imsi"

    .line 638
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db upgrade: oldVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, " "

    const-string v2, ""

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 643
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/16 p2, 0x18

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne p2, v4, :cond_1

    move p2, v5

    :cond_1
    const/4 v4, 0x4

    const-string v6, " version:"

    if-ne p2, v5, :cond_2

    :try_start_1
    const-string v5, "ALTER TABLE rcsimft ADD COLUMN contribution_id  TEXT DEFAULT NULL;"

    .line 656
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE rcsimft ADD COLUMN conversation_id  TEXT DEFAULT NULL;"

    .line 658
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 661
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_1
    move p2, v4

    :cond_2
    const/4 v5, 0x5

    if-ne p2, v4, :cond_3

    :try_start_2
    const-string v4, "ALTER TABLE session ADD COLUMN chat_type INTEGER;"

    .line 668
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move p2, v5

    :cond_3
    const/4 v4, 0x6

    if-ne p2, v5, :cond_4

    :try_start_3
    const-string v5, "ALTER TABLE session ADD COLUMN icon_path TEXT;"

    .line 678
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE session ADD COLUMN icon_participant TEXT;"

    .line 680
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE session ADD COLUMN icon_timestamp TEXT;"

    .line 682
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    .line 685
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_3
    move p2, v4

    :cond_4
    const/4 v5, 0x7

    if-ne p2, v4, :cond_5

    :try_start_4
    const-string v4, "ALTER TABLE rcsimft ADD COLUMN payloadpartThumb_filename TEXT;"

    .line 692
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    .line 695
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move p2, v5

    :cond_5
    const/16 v4, 0x8

    if-ne p2, v5, :cond_6

    :try_start_5
    const-string v5, "ALTER TABLE rcsimft ADD COLUMN sim_imsi TEXT DEFAULT \'\';"

    .line 702
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE session ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 704
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    .line 707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move p2, v4

    :cond_6
    const/16 v5, 0x9

    if-ne p2, v4, :cond_11

    .line 714
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 715
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 716
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set sim imsi : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE rcsimft SET sim_imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " IS \'\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 722
    :catch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message sim imsi update failed "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 726
    :goto_6
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE session SET sim_imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " IS NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 729
    :catch_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " session sim imsi update failed "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    .line 732
    :goto_7
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;-><init>(Landroid/content/Context;)V

    const-string v7, "chat_id"

    .line 734
    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryAllSession([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 735
    :try_start_8
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "queryAllSession."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_8

    .line 737
    :cond_7
    :goto_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "chat_id"

    .line 739
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 738
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 741
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 740
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 742
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 744
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 745
    invoke-virtual {v9, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p2, v8, v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateSessionFromBufferDbToRCSDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    :cond_8
    if-eqz v7, :cond_9

    .line 750
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    const-string v7, "_id"

    .line 751
    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryAllMessage([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 752
    :try_start_9
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "queryAllMessage."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_b

    .line 754
    :cond_a
    :goto_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "_id"

    .line 755
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 756
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 758
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 760
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 761
    invoke-virtual {v9, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p2, v8, v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateMessageFromBufferDb(ILandroid/content/ContentValues;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :cond_b
    if-eqz v7, :cond_c

    .line 766
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 767
    :cond_c
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "upgrade sim imsi done."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 768
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-eqz p2, :cond_d

    const/4 p2, 0x0

    .line 769
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMigrateSuccessFlag(Z)V

    goto :goto_a

    .line 770
    :cond_d
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 771
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMigrateSuccessFlag(Z)V

    :cond_e
    :goto_a
    move p2, v5

    goto :goto_d

    :catchall_0
    move-exception p0

    if-eqz v7, :cond_f

    .line 751
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_b
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v7, :cond_10

    .line 734
    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_c
    throw p0

    :cond_11
    :goto_d
    const/16 v1, 0xa

    const-string v3, "ALTER TABLE part ADD COLUMN content_uri TEXT DEFAULT \'\';"

    const-string v4, "ALTER TABLE rcsimft ADD COLUMN thumbnail_uri TEXT DEFAULT \'\';"

    const-string v7, "ALTER TABLE rcsimft ADD COLUMN content_uri TEXT DEFAULT \'\';"

    if-ne p2, v5, :cond_12

    .line 778
    :try_start_c
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_e

    :catch_8
    move-exception v5

    .line 785
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_e
    move p2, v1

    :cond_12
    const/16 v5, 0xb

    if-ne p2, v1, :cond_13

    :try_start_d
    const-string v1, "CREATE TABLE vvm_quota(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,TotalStorage LONG DEFAULT 0,OccupiedStorage LONG DEFAULT 0,VMMessagesQuota INTEGER DEFAULT 0,VMOccupiedMessages INTEGER DEFAULT 0,LastUpdated LONG DEFAULT 0,linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncaction INTEGER DEFAULT 0);"

    .line 792
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE vvm_messages ADD COLUMN importance TEXT DEFAULT \'\'"

    .line 793
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE vvm_messages ADD COLUMN sensitivity TEXT DEFAULT \'\'"

    .line 795
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE vvm_profile ADD COLUMN sim_imsi TEXT DEFAULT \'\'"

    .line 797
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_f

    :catch_9
    move-exception v1

    .line 800
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_f
    move p2, v5

    :cond_13
    const-string v1, "ALTER TABLE vvm_quota ADD COLUMN syncaction INTEGER DEFAULT 0"

    const/16 v8, 0xc

    if-ne p2, v5, :cond_14

    :try_start_e
    const-string v5, "ALTER TABLE vvm_quota ADD COLUMN LastUpdated LONG DEFAULT 0"

    .line 806
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_10

    :catch_a
    move-exception v5

    .line 811
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_10
    move p2, v8

    :cond_14
    const/16 v5, 0xd

    if-ne p2, v8, :cond_15

    :try_start_f
    const-string v8, "DROP TABLE calllog"

    .line 818
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v8, "DROP TABLE fax_message"

    .line 819
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v8, "DROP TABLE fax_receivers"

    .line 820
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_11

    :catch_b
    move-exception v1

    .line 826
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_11
    move p2, v5

    :cond_15
    const/16 v1, 0xe

    if-ne p2, v5, :cond_16

    :try_start_10
    const-string v5, "ALTER TABLE vvm_messages ADD COLUMN content_uri TEXT DEFAULT \'\';"

    .line 833
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE vvm_greeting ADD COLUMN content_uri TEXT DEFAULT \'\';"

    .line 835
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_12

    :catch_c
    move-exception v5

    .line 846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_12
    move p2, v1

    :cond_16
    const/16 v5, 0xf

    if-ne p2, v1, :cond_1a

    :try_start_11
    const-string v1, "content_uri"

    .line 854
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isColumnNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 855
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_17
    const-string/jumbo v1, "thumbnail_uri"

    .line 858
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isColumnNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 859
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_18
    const-string v0, "part"

    const-string v1, "content_uri"

    .line 862
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->isColumnNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 863
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :cond_19
    :goto_13
    move p2, v5

    :cond_1a
    if-ne p2, v5, :cond_1b

    :try_start_12
    const-string v0, "ALTER TABLE vvm_messages ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 874
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE vvm_greeting ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 876
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE vvm_pin ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 878
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE vvm_quota ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 880
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE vvm_quota ADD COLUMN linenum TEXT DEFAULT \'\';"

    .line 882
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_14

    :catch_e
    move-exception v0

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_14
    const/16 p2, 0x10

    :cond_1b
    const/16 v0, 0x10

    if-ne p2, v0, :cond_1c

    :try_start_13
    const-string v0, "ALTER TABLE vvm_profile ADD COLUMN v2t_language TEXT DEFAULT NULL;"

    .line 892
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_15
    const/16 p2, 0x11

    :cond_1c
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1d

    :try_start_14
    const-string v0, "ALTER TABLE session ADD COLUMN subject_timestamp LONG;"

    .line 902
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN creator TEXT DEFAULT NULL;"

    .line 904
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE session ADD COLUMN inserted_time_stamp LONG;"

    .line 906
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE session ADD COLUMN subject_participant TEXT DEFAULT NULL;"

    .line 908
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE session ADD COLUMN syncdirection INTEGER DEFAULT 0;"

    .line 910
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE session ADD COLUMN syncaction INTEGER DEFAULT 0;"

    .line 912
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN reference_id TEXT DEFAULT NULL;"

    .line 914
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN reference_type TEXT DEFAULT NULL;"

    .line 916
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN reference_value TEXT DEFAULT NULL;"

    .line 918
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN suggestion TEXT DEFAULT NULL;"

    .line 920
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN maap_traffic_type TEXT DEFAULT NULL;"

    .line 922
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN file_disposition INTEGER DEFAULT 0;"

    .line 924
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE rcsimft ADD COLUMN playing_length INTEGER DEFAULT 0;"

    .line 926
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_16
    const/16 p2, 0x12

    :cond_1d
    const/16 v0, 0x12

    if-ne p2, v0, :cond_1e

    :try_start_15
    const-string v0, "ALTER TABLE multilinestatus ADD COLUMN initupload_status INTEGER DEFAULT 0;"

    .line 936
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_17

    :catch_11
    move-exception v0

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_17
    const/16 p2, 0x13

    :cond_1e
    const/16 v0, 0x13

    if-ne p2, v0, :cond_1f

    :try_start_16
    const-string v0, "ALTER TABLE notification ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 947
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE participant ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 949
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE multilinestatus ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 951
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE summarytable ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 953
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_18
    const/16 p2, 0x14

    :cond_1f
    const/16 v0, 0x14

    if-ne p2, v0, :cond_20

    :try_start_17
    const-string v0, "ALTER TABLE vvm_profile ADD COLUMN v2t_sms TEXT DEFAULT NULL;"

    .line 963
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE vvm_profile ADD COLUMN v2t_email TEXT DEFAULT NULL;"

    .line 965
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_19
    const/16 p2, 0x15

    :cond_20
    const/16 v0, 0x15

    if-ne p2, v0, :cond_21

    :try_start_18
    const-string v0, "ALTER TABLE vvm_messages ADD COLUMN v2t_language TEXT DEFAULT NULL;"

    .line 975
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE vvm_messages ADD COLUMN uploadstatus INTEGER DEFAULT 0;"

    .line 977
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_1a
    const/16 p2, 0x16

    :cond_21
    const/16 v0, 0x16

    if-ne p2, v0, :cond_22

    :try_start_19
    const-string v0, "ALTER TABLE sms ADD COLUMN group_cotag TEXT DEFAULT NULL;"

    .line 987
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v0

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1b
    const/16 p2, 0x17

    :cond_22
    const/16 v0, 0x17

    if-ne p2, v0, :cond_23

    :try_start_1a
    const-string v0, "ALTER TABLE session ADD COLUMN invited_by TEXT DEFAULT NULL;"

    .line 997
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE session ADD COLUMN created_by TEXT DEFAULT NULL;"

    .line 999
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p1

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    .line 1007
    :cond_23
    :goto_1c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 1008
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OnUpgrade error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.class public Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;
.super Ljava/lang/Object;
.source "QueryBuilderBase.java"


# instance fields
.field protected IMSI:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field protected VALUE_ID_UNFETCHED:I

.field protected isCmsEnabled:Z

.field protected final mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

.field protected final mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mHoursToSendCloudUnsyncMessage:I

.field protected mHoursToUploadMessageInitSync:I

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field sFormatOfName:[Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V
    .locals 8

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    const/16 v0, 0xa

    .line 42
    iput v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToSendCloudUnsyncMessage:I

    const/16 v0, 0x888

    .line 43
    iput v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    .line 45
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "EEE, dd MMM yyyy HH:mm:ss Z"

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->sFormatOfName:[Ljava/text/SimpleDateFormat;

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->VALUE_ID_UNFETCHED:I

    .line 58
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, "UTC"

    .line 59
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    .line 64
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    .line 65
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 67
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    .line 68
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->onUpdateCmsConfigInitSyncDataTtl()V

    return-void
.end method


# virtual methods
.method public cleanAllBufferDB()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->cleanAllBufferDBUsingIMSIAndTableIndex()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->deleteFilesinMmsBufferFolder(I)V

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->cleanAllBufferDB()V

    :goto_0
    return-void
.end method

.method public cleanAllBufferDBUsingIMSIAndTableIndex()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x3

    const-string/jumbo v3, "sim_imsi=?"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string v3, "linenum=?"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanAllBufferDBUsingIMSIAndTableIndex rowsDeleted via linenum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public deleteAllUsingLineAndTableIndex(ILjava/lang/String;)V
    .locals 2

    .line 108
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string v1, "linenum=?"

    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteAllUsingLineAndTableIndex isSuccess: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .locals 4

    .line 154
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    if-eqz p1, :cond_4

    .line 155
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 158
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 159
    aget-object v1, v1, v0

    const-string v2, "\\Seen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    if-le v2, v3, :cond_3

    :goto_1
    move-object p0, v1

    goto :goto_2

    .line 163
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "\\Deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_1

    .line 167
    :cond_2
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "\\Canceled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    if-le v2, v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object p0
.end method

.method public getDateFromDateString(Ljava/lang/String;)J
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->sFormatOfName:[Ljava/text/SimpleDateFormat;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 117
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_1

    .line 119
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-wide p0

    :catch_0
    move-exception v3

    .line 121
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ParseException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileExtension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 265
    invoke-static {p1}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getIfCancelUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 242
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p0

    .line 245
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 246
    aget-object v1, v1, v0

    const-string v2, "\\Canceled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method public getIfSeenValueUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 218
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, p0

    .line 221
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 222
    aget-object v1, v1, v0

    const-string v2, "\\Seen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method public getIfisGreetingOnUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)I
    .locals 2

    if-eqz p1, :cond_3

    .line 230
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 233
    :goto_0
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_2

    const-string v1, "$CNS-Greeting-On"

    .line 234
    aget-object v0, v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->GreetingOn:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->getId()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 238
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->GreetingOff:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->getId()I

    move-result p0

    return p0

    .line 231
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->GreetingOff:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$GreetingOnFlag;->getId()I

    move-result p0

    return p0
.end method

.method public insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    move-result-wide v0

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertDeviceMsgToBuffer, tableindex: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rowid: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public insertResUrlinSummary(Ljava/lang/String;I)V
    .locals 2

    .line 280
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "messagetype"

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "res_url"

    .line 282
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "linenum"

    .line 283
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "sim_imsi"

    .line 284
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->insertTable(ILandroid/content/ContentValues;)J

    return-void
.end method

.method public insertTable(ILandroid/content/ContentValues;)J
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isContentTypeDefined(Ljava/lang/String;)Z
    .locals 2

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isContentTypeDefined: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 275
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "multipart/related"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public notifyApplication(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 210
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 211
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    .line 212
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onUpdateCmsConfigInitSyncDataTtl()V
    .locals 3

    .line 337
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getCmsDataTtl()I

    move-result v0

    div-int/lit16 v0, v0, 0xe10

    iput v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ttl value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public queryMessageBySyncAction(II)Landroid/database/Cursor;
    .locals 8

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryMessageBySyncAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " syncAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "sim_imsi=? AND syncaction=?"

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object v6

    .line 333
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryMessageBySyncDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " syncDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "sim_imsi=? AND syncdirection=?"

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object v6

    .line 325
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryTablewithBufferDbId(IJ)Landroid/database/Cursor;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryTablewithBufferDbId, table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public resetImsi()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetImsi new val: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMsgDeleted(IJ)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufferId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 313
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string p3, "_bufferdbid=?"

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public translatePayloadEncoding(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;
    .locals 2

    .line 254
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "translatePayloadEncoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "base64"

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 256
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    return-object p0

    .line 258
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    return-object p0
.end method

.method public updateAppFetchingFailed(IJ)V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppFetchingFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufferId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 304
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->FetchingFail:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 307
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string p3, "_bufferdbid=?"

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateMessageStatus(Lcom/sec/internal/omanetapi/nms/data/FlagList;Ljava/lang/String;)I
    .locals 6

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateMessageStatus"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "OUT"

    if-eqz p1, :cond_9

    .line 178
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 186
    :goto_0
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 187
    aget-object v3, v3, v0

    const-string v4, "\\Canceled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v1, v4

    goto :goto_1

    .line 189
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v5, "\\Seen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 195
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0

    return p0

    .line 198
    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-eqz v1, :cond_5

    .line 199
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0

    return p0

    :cond_6
    if-eqz v1, :cond_7

    .line 202
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0

    return p0

    :cond_7
    if-eqz v2, :cond_8

    .line 204
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    goto :goto_3

    :cond_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0

    return p0

    .line 179
    :cond_9
    :goto_4
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 180
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0

    return p0

    .line 182
    :cond_a
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0

    return p0
.end method

.method protected updateSummaryTableMsgType(Ljava/lang/String;I)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSummaryTableMsgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->extractObjIdFromResUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 295
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "messagetype"

    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x7

    const-string/jumbo v1, "res_url GLOB ? AND linenum=?"

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

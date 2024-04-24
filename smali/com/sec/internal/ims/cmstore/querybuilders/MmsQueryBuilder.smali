.class public Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;
.super Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;
.source "MmsQueryBuilder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    .line 32
    const-class p2, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    .line 38
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    return-void
.end method

.method private deleteAddrTable(J)V
    .locals 1

    .line 504
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 505
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x5

    const-string v0, "msg_id= ?"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deletePartTable(J)V
    .locals 1

    .line 510
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 511
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x6

    const-string v0, "mid= ?"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanAllBufferDB()V
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->deleteFilesinMmsBufferFolder(I)V

    .line 477
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->cleanMMSBufferDBUsingIMSIAndTableIndex()V

    goto :goto_0

    .line 479
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v0, "cleanAllBufferDB: Cms is disabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public cleanMMSBufferDBUsingIMSIAndTableIndex()V
    .locals 9

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v1, "cleanMMSBufferDBUsingIMSIAndTableIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "_bufferdbid"

    .line 485
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 488
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v4, 0x0

    const-string/jumbo v5, "sim_imsi= ?"

    invoke-virtual {v3, v1, v5, v2, v4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 489
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 492
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete addr and part entries for bufferDbId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->deleteAddrTable(J)V

    .line 494
    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->deletePartTable(J)V

    .line 495
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 488
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanMMSBufferDBUsingIMSIAndTableIndex isSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 1

    .line 556
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTablewithResUrl(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public insertMMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJZ)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 315
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 316
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const-wide/16 v7, -0x1

    .line 318
    iput-wide v7, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 319
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    const-string v8, "correlation_id"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "m_id"

    .line 320
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "lastmodseq"

    .line 321
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 323
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "res_url"

    .line 322
    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 325
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "parentfolder"

    .line 324
    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "path"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 328
    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "linenum"

    .line 327
    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "date"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    iget v7, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->VALUE_ID_UNFETCHED:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "_id"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "ct_t"

    .line 331
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-boolean v7, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v7, :cond_0

    .line 333
    iget v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SAFE_MESSAGE:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "safe_message"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    :cond_0
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v8, "IN"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const/16 v9, 0x80

    const-string v10, "m_type"

    const-string v11, "msg_box"

    const/4 v12, 0x1

    if-eqz v7, :cond_1

    .line 336
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v7, 0x84

    .line 338
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 337
    invoke-virtual {v3, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    .line 340
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    const-string/jumbo v7, "sub"

    .line 343
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    invoke-virtual {v3, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-boolean v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const-string/jumbo v10, "syncdirection"

    const-string/jumbo v11, "syncaction"

    const/4 v13, 0x4

    if-eqz v7, :cond_2

    .line 345
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 348
    :cond_2
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v7, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 349
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    iput-object v6, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto/16 :goto_4

    .line 355
    :cond_3
    iget-boolean v7, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-nez v7, :cond_5

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    if-nez v7, :cond_5

    .line 356
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    if-eqz p5, :cond_4

    .line 358
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 360
    :cond_4
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    const-string/jumbo v15, "text_only"

    .line 361
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_5
    move-object v14, v5

    move-object v7, v6

    .line 363
    :goto_1
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-eqz v12, :cond_9

    if-eqz p5, :cond_6

    .line 365
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 366
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    goto :goto_3

    :cond_6
    const-string v7, "OUT"

    .line 367
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 368
    invoke-static {v7, v12, v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->isDownloadObject(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v14, v5

    move-object v7, v6

    goto :goto_3

    .line 369
    :cond_8
    :goto_2
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchIndividualUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 370
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 376
    :cond_9
    :goto_3
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    if-eqz v12, :cond_c

    if-nez p5, :cond_a

    .line 377
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v7, v12, v13}, Lcom/sec/internal/ims/cmstore/utils/Util;->isDownloadObject(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 378
    :cond_a
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 379
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 384
    :cond_b
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "ct_l"

    invoke-virtual {v3, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v5

    move-object v7, v6

    .line 386
    :cond_c
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SyncAction: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " direction: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 391
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "read"

    .line 393
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "seen"

    .line 394
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    iput-object v7, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 396
    iput-object v14, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    :goto_4
    const-string v5, "m_cls"

    const-string v6, "personal"

    .line 400
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x12

    .line 402
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "v"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "pri"

    const/16 v6, 0x81

    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "rr"

    .line 404
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "d_rpt"

    .line 405
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "retr_st"

    .line 406
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "D4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tr_id"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sim_imsi"

    .line 408
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_d

    .line 411
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "_bufferdbid=?"

    .line 412
    invoke-virtual {v0, v13, v3, v6, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    goto :goto_5

    .line 415
    :cond_d
    invoke-virtual {v0, v13, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide v5

    .line 417
    :goto_5
    iput-wide v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 418
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insert MMS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " res url: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " lastmdf: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " objt size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 419
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " payloadPart: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 420
    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " isUpdate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 423
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v7, "msg_id"

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    goto :goto_6

    :cond_e
    const-string v2, "insert-address-token"

    .line 426
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, ""

    const-string/jumbo v10, "tel:"

    if-nez v8, :cond_10

    .line 427
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 428
    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 429
    :cond_f
    iget-boolean v8, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v8, :cond_10

    const-string/jumbo v8, "unknown_address"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    move-object v2, v9

    :cond_10
    :goto_7
    const-string v8, "address"

    .line 433
    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x89

    .line 434
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v11, "type"

    invoke-virtual {v3, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0x6a

    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "charset"

    invoke-virtual {v3, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v12, 0x5

    .line 436
    invoke-virtual {v0, v12, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    const/4 v15, 0x0

    .line 438
    :goto_8
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v15, v14, :cond_12

    .line 439
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 440
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v7, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_11

    .line 442
    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 443
    invoke-virtual {v14, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 445
    :cond_11
    invoke-virtual {v3, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x97

    .line 446
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    invoke-virtual {v0, v12, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 450
    :cond_12
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    const/4 v7, 0x6

    const-string v8, "ct"

    const-string v9, "mid"

    if-eqz v2, :cond_13

    .line 451
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const/4 v2, 0x0

    .line 452
    :goto_9
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    array-length v10, v10

    if-ge v2, v10, :cond_13

    .line 453
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 454
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 455
    aget-object v10, v10, v11

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentId:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->encodedToIso8859(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "cid"

    invoke-virtual {v3, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    aget-object v10, v10, v2

    iget-object v10, v10, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "payloadurl"

    invoke-virtual {v3, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    aget-object v10, v10, v2

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateLocationWithEncoding(Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "cl"

    invoke-virtual {v3, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 462
    :cond_13
    iget-boolean v2, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    if-nez v2, :cond_14

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 463
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 464
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 465
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "text/plain"

    .line 467
    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    .line 468
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    :cond_14
    return-object v4
.end method

.method protected insertToMMSAddrBufferDB(Landroid/database/Cursor;J)V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToAddrBufferDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "we do get something from telephony MMS Addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertADDRtoCV(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 193
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "msg_id"

    .line 194
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x5

    .line 195
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    .line 107
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertPDUtoCV(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    return-wide v4

    .line 111
    :cond_0
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v6

    .line 112
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertToPDUBufferDB size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isImsiUpdateReq "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move-wide v9, v4

    move v8, v7

    .line 114
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v8, v11, :cond_a

    .line 115
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    if-nez v11, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string/jumbo v9, "read"

    .line 119
    invoke-virtual {v11, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_2

    move v9, v7

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_1
    const-string/jumbo v10, "syncaction"

    const-string/jumbo v13, "syncdirection"

    if-eqz p3, :cond_3

    if-ne v9, v12, :cond_3

    .line 123
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 127
    :cond_3
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 126
    invoke-virtual {v11, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 128
    invoke-virtual {v11, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const-string v9, "lastmodseq"

    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "linenum"

    .line 132
    invoke-virtual {v11, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string/jumbo v9, "sim_imsi"

    .line 135
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v9, 0x4

    .line 137
    invoke-virtual {v0, v9, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    move-result-wide v9

    const-string v12, "_id"

    .line 139
    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_5

    move-wide v11, v4

    goto :goto_3

    .line 140
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Integer;->longValue()J

    move-result-wide v11

    .line 141
    :goto_3
    iget-object v13, v0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {v13, v11, v12}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->getTelephonyAddr(J)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 142
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 143
    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertToAddrBufferDB: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0, v13, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertToMMSAddrBufferDB(Landroid/database/Cursor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 141
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_6
    :goto_5
    if-eqz v13, :cond_7

    .line 146
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_7
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {v7, v11, v12}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->getTelephonyPart(J)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 149
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 150
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertToPartBufferDB: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0, v7, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertToMMSPartBufferDB(Landroid/database/Cursor;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 148
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    :cond_8
    :goto_7
    if-eqz v7, :cond_9

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 156
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_b

    return-wide v9

    :cond_b
    return-wide v4
.end method

.method protected insertToMMSPartBufferDB(Landroid/database/Cursor;J)V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we do get something from telephony MMS Part: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", row="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertPARTtoCV(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "mid"

    .line 174
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x6

    .line 180
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public queryAllMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryMMSPduFromTelephonyDbWithSlot()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    .line 211
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 210
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sim_imsi=? AND date > ?"

    goto :goto_0

    .line 214
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sim_imsi=?"

    .line 216
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;
    .locals 8

    .line 235
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMmsPduBufferDBLargestTelephonyId()I

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryDeltaMMSPduFromTelephonyDb largest MMS _id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id > ? AND sim_imsi=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND CREATOR != \'com.samsung.android.messaging\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v6, v6, 0x18

    int-to-long v6, v6

    .line 246
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 245
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id>?  AND sim_imsi=?"

    .line 252
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;
    .locals 7

    .line 256
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMmsPduBufferDBLargestTelephonyIdWoImsi()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryDeltaMMSPduFromTelephonyDbWoImsi largest MMS _id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    const-string v2, "_id > ? AND (sim_imsi IS NULL OR sim_imsi = \'\')"

    if-eqz v1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND CREATOR != \'com.samsung.android.messaging\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v5, v5, 0x18

    int-to-long v5, v5

    .line 266
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 265
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIfMmsPartsDownloadComplete(J)Z
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryIfMmsPartsDownloadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string v0, "mid= ? AND (_data IS NULL OR _data = \'\') AND (text IS NULL OR text = \'\')"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPARTMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 525
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 523
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p0, :cond_1

    .line 528
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1
.end method

.method public queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 552
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithResUrl(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSMessagesToUpload()Landroid/database/Cursor;
    .locals 6

    .line 87
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 88
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    int-to-long v4, v4

    .line 90
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 89
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND (res_url IS NULL OR res_url = \'\') AND date > ? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPartRowIdWithoutAppId(J)Landroid/database/Cursor;
    .locals 1

    .line 546
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 547
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string v0, "mid= ? AND (_id IS NULL OR _id = \'\')"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPARTMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryMMSPduFromTelephonyDbUseID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryMMSPduFromTelephonyDbWoIMSI()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    .line 227
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 226
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "(sim_imsi IS NULL OR sim_imsi = \'\' ) AND date > ?"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "sim_imsi IS NULL OR sim_imsi = \'\'"

    move-object v0, v1

    .line 231
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMmsPduBufferDBLargestTelephonyId()I
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryMmsPduBufferDBLargestTelephonyId: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MAX(_id)"

    const-string v1, "_id"

    .line 285
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 289
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x0

    const-string/jumbo v4, "sim_imsi=?"

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 291
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 289
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    .line 294
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method public queryMmsPduBufferDBLargestTelephonyIdWoImsi()I
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryMmsPduBufferDBLargestTelephonyId: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MAX(_id)"

    const-string v1, "_id"

    .line 300
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x0

    const-string/jumbo v3, "sim_imsi IS NULL OR sim_imsi = \'\'"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 306
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 304
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    .line 309
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method public queryReadMmsfromTelephony()Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x1

    .line 279
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v1, 0x0

    const-string/jumbo v2, "read=? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToCloudUnsyncedMms()Landroid/database/Cursor;
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryToCloudUnsyncedMms: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 574
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    .line 576
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 575
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 577
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND res_url IS NOT NULL AND date > ? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1

    .line 563
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {p2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 564
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string/jumbo v0, "syncaction=? AND linenum=? AND sim_imsi=?"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedMms()Landroid/database/Cursor;
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryToDeviceUnsyncedMms: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryUndownloadedPart(J)Landroid/database/Cursor;
    .locals 1

    .line 538
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 539
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string v0, "mid= ? AND (_data IS NULL OR _data = \'\') AND (text IS NULL OR text = \'\')"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPARTMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchMMSPduBufferUsingMidorTrId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string p2, "invalid string"

    move-object v0, p2

    .line 52
    :goto_0
    filled-new-array {p1, p2, p1, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "searchMMSPduBufferUsingMidorTrId, mid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tr_id: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " subtrid:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p1, 0x0

    const-string p2, "m_id=? OR tr_id=? OR correlation_id=? OR correlation_id=?"

    invoke-virtual {p0, p1, p2, v1, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchMMSPduBufferUsingRowId(J)Landroid/database/Cursor;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchMMSPduBufferUsingRowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string v0, "_id=?"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchMMsPduBufferUsingCorrelationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x0

    const-string v1, "m_id=? OR tr_id GLOB ?"

    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public updateMMSUpdateingDevice(J)V
    .locals 3

    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 98
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    const-string v1, "_bufferdbid=?"

    .line 100
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

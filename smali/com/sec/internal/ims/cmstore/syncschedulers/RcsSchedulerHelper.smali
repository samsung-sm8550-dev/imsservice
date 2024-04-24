.class public Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "RcsSchedulerHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

.field protected final mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

.field protected final mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

.field private final mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p8

    move-object v6, p3

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 73
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "["

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 88
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-direct {p2, p1, p5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 p2, 0x1

    .line 89
    iput p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    .line 90
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 91
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 92
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    return-void
.end method

.method private getPayloadCV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/ContentValues;)V
    .locals 0

    const-string p0, "file_name"

    .line 480
    invoke-virtual {p6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "file_size"

    .line 481
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "bytes_transf"

    .line 482
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "file_path"

    .line 483
    invoke-virtual {p6, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 485
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "syncdirection"

    .line 484
    invoke-virtual {p6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 487
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p1, "syncaction"

    .line 486
    invoke-virtual {p6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private onNewPartcptsInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 652
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSParticipantsBufferDB(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 651
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 655
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private onNewSessionInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "session already exists in BufferDb"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 673
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    if-eqz v0, :cond_1

    .line 678
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 680
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertSingleSessionToRcsBuffer(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 679
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 683
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private saveOrCopyFileToAppUri(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;IZ)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    if-eqz p5, :cond_1

    .line 322
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result p2

    if-ne p2, p4, :cond_0

    .line 323
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/FileUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_3

    .line 324
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result p2

    if-ne p2, p4, :cond_5

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/FileUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_3

    .line 329
    :cond_1
    :try_start_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result p1

    if-ne p1, p4, :cond_3

    .line 330
    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_2

    .line 331
    :try_start_1
    array-length p2, p1

    int-to-long v0, p2

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v2, p1

    goto :goto_2

    .line 332
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v2, p1

    goto :goto_3

    .line 334
    :cond_3
    :try_start_2
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result p1

    if-ne p1, p4, :cond_5

    .line 335
    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p1, :cond_4

    .line 336
    :try_start_3
    array-length p2, p1

    int-to-long v0, p2

    .line 337
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 340
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    :cond_5
    :goto_3
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private saveToAppUriOnRcsPayloadDownloaded(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Landroid/content/ContentValues;Z)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    const-string v1, "content_uri"

    .line 347
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "thumbnail_uri"

    .line 348
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "content_type"

    .line 349
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v1, "payloadencoding"

    .line 350
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string/jumbo v12, "thumbnail_path"

    .line 351
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz p4, :cond_0

    .line 357
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getFilePath()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_0

    :cond_0
    move-object v14, v13

    .line 359
    :goto_0
    iget-object v2, v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "large-file case, filePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    const-string v15, " encoding method: "

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app generated thumbnail uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v9

    move v8, v4

    move v4, v11

    move v11, v5

    move/from16 v5, p4

    .line 363
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->saveOrCopyFileToAppUri(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;IZ)Landroid/util/Pair;

    move-result-object v0

    .line 364
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    goto :goto_1

    :cond_1
    move v8, v4

    move v11, v5

    .line 366
    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "file copy to APP failed. thumbUri=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 369
    :goto_1
    invoke-virtual {v7, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iput-boolean v11, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    .line 371
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iput-object v13, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;

    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iput-object v13, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    move v5, v8

    goto/16 :goto_6

    :cond_2
    move v9, v4

    move v1, v5

    const-string v2, "is_filetransfer"

    .line 375
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v9, :cond_3

    move v5, v9

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_7

    const-string v0, "json"

    .line 376
    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "text/plain"

    .line 377
    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "xml"

    .line 378
    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_4
    const-string v0, ""

    if-eqz p4, :cond_5

    .line 381
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {v6, v14, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v13

    if-eqz v13, :cond_6

    .line 382
    new-instance v0, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v13, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_3

    .line 384
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :cond_6
    :goto_3
    const-string v2, "body"

    .line 386
    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    goto :goto_5

    :cond_7
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v8

    move v4, v11

    move/from16 v5, p4

    .line 390
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->saveOrCopyFileToAppUri(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;IZ)Landroid/util/Pair;

    move-result-object v0

    .line 391
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 392
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, [B

    goto :goto_4

    .line 394
    :cond_8
    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "file copy to APP failed. fileUri=null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 396
    :goto_4
    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app generated file uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "file_size"

    .line 398
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "bytes_transf"

    .line 399
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "file_path"

    .line 400
    invoke-virtual {v7, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v9

    :goto_5
    move-object v0, v13

    :goto_6
    if-eqz p4, :cond_9

    .line 410
    invoke-static {v14}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    goto :goto_7

    :cond_9
    if-eqz v10, :cond_a

    const-string v1, "application/vnd.gsma.rcspushlocation+xml"

    .line 412
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    .line 413
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext_info"

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_7
    return v5
.end method

.method private setInlineTextCV(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    .line 469
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 470
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "syncdirection"

    .line 469
    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 472
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "syncaction"

    .line 471
    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    .line 473
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "is_filetransfer"

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "content_type"

    const-string/jumbo v0, "text/plain"

    .line 474
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "body"

    .line 475
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRcsDownloadListForUri(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V
    .locals 8

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 276
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 277
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRcsDownloadListForUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p3, "_bufferdbid"

    .line 280
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 279
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string p3, "content_type"

    .line 281
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 282
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string v0, "botmessage"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 283
    iget-object p3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v7

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 275
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 289
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public cleanAllBufferDB()V
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->cleanAllBufferDB()V

    return-void
.end method

.method public deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 0

    .line 806
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B
    .locals 7

    .line 293
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x100

    :try_start_2
    new-array v2, v2, [B

    .line 297
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 299
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 300
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFileContentInBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bytes "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getRcsFilePayloadFromPath, all bytes: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    .line 308
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 310
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 293
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception p1

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFileContentInBytes :: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public insertAllSessionToRCSSessionBufferDB(Landroid/database/Cursor;)V
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertAllToRCSSessionBufferDB(Landroid/database/Cursor;)V

    return-void
.end method

.method public insertSessionFromTPDBToRCSSessionBufferDB(Landroid/database/Cursor;)V
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertSessionFromTPDBToRCSSessionBufferDB(Landroid/database/Cursor;)V

    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMsgAppDeleteFail, dbIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufferDbId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 872
    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 875
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    const-string p1, "CHAT"

    .line 876
    invoke-static {p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "MessageApp"

    .line 875
    invoke-interface {p0, p3, p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/content/ContentValues;I)V
    .locals 3

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    const-string p2, "chat_id"

    .line 734
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "session_uri"

    .line 735
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation_id"

    .line 736
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    .line 737
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 739
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMsgAppFetchBuffer, chatId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", jsonArrayRowIdsSession: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 742
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 743
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MessageApp"

    const-string v1, "RCS_SESSION"

    .line 742
    invoke-interface {p0, v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    .locals 8

    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 688
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 689
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_0
    const-string v2, "_bufferdbid"

    .line 691
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "file_path"

    .line 692
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "thumbnail_path"

    .line 694
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 693
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    if-eqz v3, :cond_1

    .line 695
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v0, :cond_2

    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 696
    :cond_2
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 697
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 700
    :cond_3
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 701
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p2, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 706
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonArrayRowIdsCHAT.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",notify message app: CHAT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", jsonArrayRowIdsFT.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "notify message app: FT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v4, "CHAT"

    const/4 v5, 0x0

    const-string v6, "MessageApp"

    if-ne v2, v3, :cond_4

    .line 711
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 712
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 711
    invoke-interface {v2, v6, v4, p2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 713
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 715
    :cond_4
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const-string v7, "FT"

    if-ne v2, v3, :cond_5

    .line 716
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 717
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-interface {v2, v6, v7, v1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 718
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 720
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 722
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 723
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 722
    invoke-interface {p1, v6, v4, p2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 725
    :cond_6
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 726
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 727
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 726
    invoke-interface {p0, v6, v7, p1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCloudUploadSuccess "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V

    return-void
.end method

.method protected onDownloadRequestFromApp(Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 583
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownloadRequestFromApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget v4, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 585
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    .line 586
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    .line 585
    invoke-virtual {v4, v6, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 587
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "is_filetransfer"

    .line 588
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v6, "file_path"

    .line 589
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "bytes_transf"

    .line 590
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "_bufferdbid"

    .line 591
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 593
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportExpiredRule()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    .line 594
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-lez v8, :cond_1

    .line 595
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file already downloaded, should not have received another download, notify message app directly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget v2, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getAppTypeString(I)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    .line 597
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-wide v4, v12

    .line 596
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    .line 603
    :cond_1
    :try_start_1
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 602
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    .line 605
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 604
    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v6

    .line 607
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 608
    invoke-virtual {v4, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 609
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "duplicate download request!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    .line 612
    :cond_2
    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 613
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->getFtRowFromTelephonyDb(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_3

    .line 615
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "para.mImdnId not present in DB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mImdnId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :try_start_3
    const-string v6, "content_uri"

    .line 618
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://im/ft_original/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "thumbnail_uri"

    .line 619
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "content://im/ft_thumbnail/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 621
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 620
    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 623
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 622
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 624
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v4, v12, v13, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 625
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 626
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget v11, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mTableindex:I

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/sec/internal/ims/cmstore/params/DeviceIMFTUpdateParam;->mLine:Ljava/lang/String;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v10, v3

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 628
    iput-boolean v5, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsDownloadRequestFromApp:Z

    .line 629
    iget-object v1, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 585
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 632
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method public onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 108
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v4, "onNmsEventChangedObjRCSBufferDbAvailable"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "_bufferdbid"

    .line 110
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 109
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 111
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string v3, "is_filetransfer"

    .line 112
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "direction"

    .line 113
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v4, "linenum"

    .line 115
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 114
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v8, "syncaction"

    .line 117
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 116
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v17

    const-string/jumbo v6, "syncdirection"

    .line 119
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 118
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v18

    const-string/jumbo v7, "status"

    .line 120
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 122
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 123
    iget-object v10, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    const-string v15, "lastmodseq"

    invoke-virtual {v4, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    iget-object v10, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v21, v6

    const-string/jumbo v6, "res_url"

    invoke-virtual {v4, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "parentfolder"

    invoke-virtual {v4, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v10, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v6, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v10

    .line 129
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 130
    sget-object v22, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v22

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v24, v15

    move v15, v3

    move/from16 v3, v22

    move-object/from16 v22, v4

    goto :goto_2

    :cond_1
    move-object/from16 v22, v4

    .line 131
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 132
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-object/from16 v23, v7

    iget-object v7, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    sget-object v24, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v25, v8

    invoke-virtual/range {v24 .. v24}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v8

    if-ne v9, v8, :cond_2

    const-string v8, "IN"

    goto :goto_1

    :cond_2
    const-string v8, "OUT"

    :goto_1
    invoke-virtual {v4, v7, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateMessageStatus(Lcom/sec/internal/omanetapi/nms/data/FlagList;Ljava/lang/String;)I

    move-result v4

    .line 133
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v15

    const-string v15, "msgStatus for cancel: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    move v3, v4

    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    move v15, v3

    move v3, v4

    goto :goto_2

    :cond_4
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    move-object/from16 v24, v15

    move v15, v3

    const/4 v3, 0x0

    .line 139
    :goto_2
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v4, v7, v8}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 141
    sget-object v26, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual/range {v26 .. v26}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v7

    const-string v8, "ft_status"

    if-ne v3, v7, :cond_5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v7

    if-ne v5, v7, :cond_5

    .line 142
    iput-object v6, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 143
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iput-object v6, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-wide/from16 v29, v11

    move-wide/from16 v27, v13

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v25

    move-object v11, v8

    move v12, v9

    move/from16 v22, v15

    move v15, v5

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_5
    if-eq v3, v5, :cond_8

    .line 144
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v6

    if-eq v3, v6, :cond_6

    .line 145
    invoke-virtual/range {v26 .. v26}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v6

    if-ne v3, v6, :cond_7

    :cond_6
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v6

    if-ne v9, v6, :cond_7

    goto :goto_3

    .line 152
    :cond_7
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-object/from16 v7, v22

    move/from16 v22, v15

    move v15, v5

    move v5, v6

    move-object v1, v7

    move-wide/from16 v27, v13

    move-object/from16 v2, v21

    move-object/from16 v13, v23

    move-wide v6, v11

    move-wide/from16 v29, v11

    move-object/from16 v14, v25

    move-object v11, v8

    move-object/from16 v8, v18

    move v12, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    move-object v10, v4

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    :goto_3
    move-wide/from16 v29, v11

    move-wide/from16 v27, v13

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v25

    move-object v11, v8

    move v12, v9

    move/from16 v22, v15

    move v15, v5

    const/4 v5, 0x0

    .line 146
    iput-boolean v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eq v3, v15, :cond_9

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    :goto_4
    move-object v10, v4

    .line 155
    :goto_5
    iget-boolean v4, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_a

    .line 156
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msgStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " currStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object v4, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    iget-object v2, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    :cond_a
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-wide/from16 v14, v29

    invoke-virtual {v0, v1, v14, v15, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 164
    iget-boolean v2, v10, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v2, :cond_b

    .line 165
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-wide/from16 v8, v27

    long-to-int v4, v8

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    goto :goto_6

    :cond_b
    move-wide/from16 v8, v27

    .line 168
    :goto_6
    iget-boolean v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    const-wide/16 v17, 0x0

    if-eqz v2, :cond_11

    move-object/from16 v2, p2

    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    if-eqz v4, :cond_11

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v4

    if-ne v12, v4, :cond_11

    .line 169
    invoke-virtual/range {v26 .. v26}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v4

    if-eq v3, v4, :cond_11

    .line 170
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "chat_id"

    move-object v4, v1

    move-object/from16 v1, p1

    .line 172
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 175
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "is_group_chat"

    .line 176
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    move v5, v7

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 174
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1

    :cond_c
    :goto_8
    if-eqz v3, :cond_d

    .line 178
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_d
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNmsEventChangedObjRCSBufferDbAvailable isGroupChat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10

    const-string v3, "imdn_message_id"

    .line 181
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryLargestLastModSeqRow(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 184
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v3, v24

    .line 186
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 185
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 183
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v2

    :cond_e
    move-wide/from16 v3, v17

    :goto_a
    if-eqz v1, :cond_f

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_f
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNmsEventChangedObjRCSBufferDbAvailable object imdns lastModSeq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    iget-wide v6, v6, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->lastModSeq:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", notificationDbLastModSeq: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    iget-wide v1, v1, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->lastModSeq:J

    cmp-long v5, v1, v17

    if-eqz v5, :cond_11

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    .line 193
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 194
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v5, 0xd

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v4, v3

    move-wide v6, v14

    move-wide/from16 v19, v8

    move v8, v11

    move-object/from16 v9, v16

    move-object v11, v10

    move-object v10, v12

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_b

    :cond_10
    move-wide/from16 v19, v8

    move-object v11, v10

    .line 199
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    invoke-virtual {v0, v2, v4, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateRCSImdnToBufferDB(Lcom/sec/internal/omanetapi/nms/data/ImdnList;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_b

    :cond_11
    move-wide/from16 v19, v8

    move-object v11, v10

    :goto_b
    cmp-long v1, v19, v17

    if-lez v1, :cond_12

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v3, v14

    move/from16 v6, v22

    move/from16 v7, p3

    move-object/from16 v8, v16

    .line 203
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_12
    return-void
.end method

.method public onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRCSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "_bufferdbid"

    .line 224
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 223
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v10, v2

    const-string v2, "_id"

    .line 225
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    const-string v2, "is_filetransfer"

    .line 226
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v2, "linenum"

    .line 227
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "syncaction"

    .line 229
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 228
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v8

    const-string/jumbo v15, "syncdirection"

    .line 231
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 230
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v7

    const-string v5, "imdn_message_id"

    .line 232
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "status"

    .line 233
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v9, "ft_status"

    .line 234
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 235
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v3

    if-eq v6, v3, :cond_2

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v16, 0x0

    .line 240
    :goto_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 241
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 242
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 243
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RevokeStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "revocation_status"

    .line 244
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 241
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    :cond_3
    move-object v9, v1

    :goto_4
    if-eqz v3, :cond_4

    .line 246
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_4
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v3, p2

    .line 249
    iget-wide v3, v3, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->lastModSeq:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lastmodseq"

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v17, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v18, v14

    move-object v14, v5

    move-wide v5, v10

    move-wide/from16 v19, v12

    move-object v12, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v3

    .line 253
    iget-boolean v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    if-eqz v4, :cond_5

    if-eq v12, v1, :cond_5

    .line 254
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v14, v10, v11, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    goto :goto_6

    .line 258
    :cond_5
    iget-boolean v1, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_6

    .line 259
    iget-object v1, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    iget-object v1, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    :cond_6
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0, v14, v10, v11, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 263
    iget-boolean v1, v3, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_7

    .line 264
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-wide/from16 v4, v19

    long-to-int v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteRCSMessageDb(I)I

    goto :goto_5

    :cond_7
    move-wide/from16 v4, v19

    :goto_5
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_8

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-wide v3, v10

    move/from16 v6, v16

    move/from16 v7, p3

    move-object/from16 v8, v18

    move v10, v12

    .line 268
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_8
    :goto_6
    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 0

    .line 215
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    return-void
.end method

.method public onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    return-void
.end method

.method public onRcsAllPayloadsDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 20

    move-object/from16 v8, p0

    const-string v1, ""

    const-string v2, ";"

    const-string v3, "onRcsAllPayloadsDownloaded: "

    const-string v4, "content_type"

    .line 493
    :try_start_0
    iget-object v6, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 494
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v7

    iget v7, v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v9

    iget-wide v9, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 493
    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v11, :cond_a

    .line 495
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "content_uri"

    .line 496
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id"

    .line 497
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v7, "linenum"

    .line 498
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v7, "file_name"

    .line 499
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "thumbnail_path"

    .line 500
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 501
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 505
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v16, 0x0

    .line 507
    :try_start_2
    iget-object v5, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v10

    :try_start_3
    const-string v10, "multipart payloads, size: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v10, 0x1

    if-le v5, v10, :cond_1

    :try_start_4
    const-string v2, "multipart/related"

    .line 509
    invoke-virtual {v14, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v2, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    const/4 v3, 0x0

    .line 511
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 512
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/BodyPart;

    invoke-virtual {v2, v4}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/BodyPart;

    invoke-interface {v4}, Ljavax/mail/Part;->getSize()I

    move-result v4

    int-to-long v4, v4

    add-long v16, v16, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 515
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 516
    iget-object v3, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v7, v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 517
    iget-object v4, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "generated file path: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveMimeBodyToPath(Ljavax/mail/internet/MimeMultipart;Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v5, 0x0

    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 519
    :cond_1
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_7

    .line 521
    iget-object v5, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :try_start_6
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    check-cast v10, Ljavax/mail/BodyPart;

    invoke-interface {v10}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v5, 0x0

    :try_start_8
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "text/plain"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v1, :cond_2

    .line 526
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 527
    :try_start_b
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 528
    :try_start_c
    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "converted inlineTxt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v15, 0x1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    const/4 v5, 0x0

    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_9

    .line 530
    :cond_2
    :try_start_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-nez v1, :cond_3

    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    goto/16 :goto_2

    .line 532
    :cond_3
    :try_start_f
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v10, 0x0

    :try_start_10
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljavax/mail/MessagingException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    check-cast v5, Ljavax/mail/BodyPart;

    invoke-interface {v5}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v1, :cond_4

    .line 533
    :try_start_12
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_5

    .line 535
    :cond_4
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    const/4 v5, 0x0

    :try_start_14
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljavax/mail/MessagingException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v1, :cond_6

    .line 536
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v5

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/BodyPart;

    invoke-interface {v5}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v10

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 538
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v10

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v14, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 545
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v2, "onRcsAllPayloadsDownloaded: no file name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 571
    :try_start_16
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    return-void

    .line 548
    :cond_5
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/BodyPart;

    invoke-interface {v1}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_17 .. :try_end_17} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 549
    :try_start_18
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoAppUri(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)J

    move-result-wide v16
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljavax/mail/MessagingException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    move-object/from16 v1, v19

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v19

    goto/16 :goto_3

    .line 541
    :cond_6
    :try_start_19
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRcsAllPayloadsDownloaded invalid file type for RCS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljavax/mail/MessagingException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    const/4 v4, 0x0

    :try_start_1a
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/BodyPart;

    invoke-interface {v3}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljavax/mail/MessagingException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 571
    :try_start_1b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    return-void

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move v4, v10

    goto :goto_6

    :catch_8
    move-exception v0

    move v4, v5

    goto :goto_6

    :catch_9
    move-exception v0

    const/4 v4, 0x0

    goto :goto_6

    :catch_a
    move-exception v0

    move v4, v1

    :goto_6
    move-object v2, v0

    move v15, v4

    move-object/from16 v1, v19

    goto :goto_8

    :cond_7
    move-object/from16 v19, v1

    const/4 v4, 0x0

    move v15, v4

    const/4 v5, 0x0

    goto :goto_a

    :catch_b
    move-exception v0

    move-object/from16 v19, v1

    goto :goto_7

    :catch_c
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v18, v10

    :goto_7
    const/4 v4, 0x0

    move-object v2, v0

    move v15, v4

    :goto_8
    const/4 v5, 0x0

    .line 553
    :goto_9
    :try_start_1c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :goto_a
    move-object v13, v5

    move-object v2, v7

    if-eqz v15, :cond_8

    .line 557
    :try_start_1d
    invoke-direct {v8, v1, v14}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->setInlineTextCV(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_b

    :cond_8
    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v12

    move-wide/from16 v5, v16

    move-object v7, v14

    .line 559
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->getPayloadCV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/ContentValues;)V

    .line 562
    :goto_b
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const-wide/16 v2, 0x1

    invoke-virtual {v8, v14, v2, v3, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    if-lez v9, :cond_9

    .line 564
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v9, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 566
    :cond_9
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p2

    move-object/from16 v8, v18

    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-object v5, v13

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v13

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    .line 493
    :goto_c
    :try_start_1e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_1f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1

    :cond_a
    const/4 v5, 0x0

    :goto_e
    if-eqz v11, :cond_b

    .line 571
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_11

    :cond_b
    :goto_f
    if-eqz v5, :cond_c

    .line 574
    :try_start_20
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v1, v0

    .line 577
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_10
    return-void

    :catchall_5
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_d

    .line 574
    :try_start_21
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    move-object v2, v0

    .line 577
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    :cond_d
    :goto_12
    throw v1
.end method

.method public onRcsChatImdnsDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 4

    .line 886
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 887
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObject()Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object p1

    .line 889
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 890
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->resourceURL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "res_url"

    .line 891
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->resourceURL:Ljava/lang/String;

    .line 892
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 891
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "syncaction"

    .line 894
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncdirection"

    .line 895
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->updateRCSImdnToBufferDB(Lcom/sec/internal/omanetapi/nms/data/ImdnList;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 886
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 898
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public onRcsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 12

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    .line 423
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-wide v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 422
    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 424
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "_bufferdbid"

    .line 425
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "_id"

    .line 426
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "linenum"

    .line 427
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "is_filetransfer"

    .line 428
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const-string/jumbo v4, "status"

    .line 429
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 430
    iget-boolean v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v9

    if-ne v4, v9, :cond_1

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "Message is cancelled:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-void

    .line 435
    :cond_1
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 438
    iget-boolean v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    if-eqz v9, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getPayloadUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 439
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getPayloadUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->urlContainsLargeFile(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 440
    invoke-direct {p0, v11, p1, v4, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->saveToAppUriOnRcsPayloadDownloaded(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Landroid/content/ContentValues;Z)Z

    move-result v5

    goto :goto_1

    .line 442
    :cond_2
    invoke-direct {p0, v11, p1, v4, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->saveToAppUriOnRcsPayloadDownloaded(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Landroid/content/ContentValues;Z)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const-string/jumbo v6, "syncaction"

    const-string/jumbo v9, "syncdirection"

    if-nez v5, :cond_3

    .line 445
    :try_start_2
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 446
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 445
    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 448
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 447
    invoke-virtual {v4, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 450
    :cond_3
    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 451
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 450
    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 453
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 452
    invoke-virtual {v4, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    int-to-long v9, v2

    .line 455
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, v4, v9, v10, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    if-lez v3, :cond_4

    .line 457
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSMessageDb(ILandroid/content/ContentValues;)I

    .line 459
    :cond_4
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    if-nez v5, :cond_5

    .line 460
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    :goto_3
    invoke-direct {v2, v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 462
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget-wide v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v6, v7

    move v7, p2

    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 422
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    :cond_6
    :goto_5
    if-eqz v11, :cond_7

    .line 465
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void
.end method

.method public onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 3

    .line 856
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateAppFetchingFailed(IJ)V

    return-void
.end method

.method public onUpdateFromDeviceSession(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFromDeviceSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNewSessionInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    :goto_0
    return-void
.end method

.method public onUpdateFromDeviceSessionPartcpts(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateFromDeviceSessionPartcpts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag:[I

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mUpdateType:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 640
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNewPartcptsInserted(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    :goto_0
    return-void
.end method

.method public queryAllSession()Landroid/database/Cursor;
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSession()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSessionsFromTelephony(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryAllSessionsFromTelephony(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryGroupSession()Landroid/database/Cursor;
    .locals 0

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryGroupSession()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryImdnMessagesToUpload()Landroid/database/Cursor;
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnMessagesToUpload()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryOneToOneSession()Landroid/database/Cursor;
    .locals 0

    .line 822
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryOneToOneSession()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryPendingUrlFetch()I
    .locals 2

    .line 758
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 759
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    const/4 v1, 0x1

    .line 758
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncAction(II)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 761
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 758
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
    if-eqz p0, :cond_1

    .line 763
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 802
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSFtMessagesToUpload(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSFtMessagesToUpload(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesToUpload()Landroid/database/Cursor;
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesToUploadByMessageType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSMessagesToUploadByMessageType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSPDUActionStatus(J)I
    .locals 1

    .line 769
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 770
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "syncaction"

    .line 771
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 769
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
    const/4 p1, -0x1

    :goto_1
    if-eqz p0, :cond_1

    .line 773
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1
.end method

.method public queryToCloudUnsyncedRcs()Landroid/database/Cursor;
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToCloudUnsyncedRcs()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedRcs()Landroid/database/Cursor;
    .locals 0

    .line 782
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryToDeviceUnsyncedRcs()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public resetImsi()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetImsi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    return-void
.end method

.method public searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public updateRCSImdnToBufferDB(Lcom/sec/internal/omanetapi/nms/data/ImdnList;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v1, p3

    .line 902
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRCSImdnToBufferDB"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_12

    .line 903
    iget-object v2, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const-string/jumbo v9, "status"

    .line 907
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 908
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 909
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "Imdn Update called for cancelled message, ignore it"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "imdn_message_id"

    .line 913
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 912
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v2, "chat_id"

    .line 915
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 914
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "disposition_notification_status"

    .line 917
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 916
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "not_displayed_counter"

    .line 919
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 918
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v2, "creator"

    .line 920
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v16, 0x0

    if-nez v2, :cond_2

    const-string v2, "SD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move/from16 v5, v16

    :goto_0
    const-string v1, "imdn_id"

    .line 923
    invoke-virtual {v8, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-wide v1, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->lastModSeq:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastmodseq"

    invoke-virtual {v8, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 926
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSNotificationStatus(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 927
    iget-object v3, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    array-length v2, v3

    move/from16 v1, v16

    move v7, v1

    :goto_1
    if-ge v1, v2, :cond_8

    aget-object v6, v3, v1

    move/from16 v17, v1

    .line 928
    iget-object v1, v6, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    if-nez v1, :cond_3

    .line 929
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateRCSImdnToBufferDB imdnInfo is empty"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v2

    goto/16 :goto_3

    .line 932
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 934
    iget-object v8, v6, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    move/from16 v18, v2

    .line 935
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v2, v6, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->setNotificationStatusAndTimestamp(Lcom/sec/internal/omanetapi/nms/data/ImdnObject;Landroid/content/ContentValues;)V

    .line 936
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 937
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v20, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v21, v3

    move-object/from16 v3, v20

    move-object/from16 v22, v4

    move-object v4, v10

    move-object/from16 v23, v9

    move v9, v5

    move-object v5, v8

    move/from16 v24, v15

    move-object v15, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertOrUpdateToNotificationDB(Lcom/sec/internal/omanetapi/nms/data/ImdnList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v9, :cond_4

    .line 939
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v6, v22

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 940
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 941
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRCSImdnToBufferDB rcsNotificationStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cloudNotificationStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    .line 944
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 945
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v1, v10, v2, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSNotificationUsingImdnId(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move-object/from16 v6, v22

    :cond_5
    :goto_2
    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v6, v22

    goto :goto_4

    :cond_7
    :goto_3
    move-object/from16 v21, v3

    move-object v6, v4

    move-object/from16 v23, v9

    move/from16 v24, v15

    move v9, v5

    :goto_4
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v8, p2

    move-object v4, v6

    move v5, v9

    move/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v9, v23

    move/from16 v15, v24

    goto/16 :goto_1

    :cond_8
    move-object v6, v4

    move v9, v5

    move/from16 v24, v15

    .line 951
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRCSImdnToBufferDB msgDbUpdated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSDMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v1, v10, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnBufferDBandUpdateRcsMessageBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_10

    if-eqz v9, :cond_10

    .line 955
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 956
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 958
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 957
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 960
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 959
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 961
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_9

    .line 962
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 964
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 963
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 965
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateRCSImdnToBufferDB newNotDisplayedCounter:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", rcsDbNotDisplayedCounter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v4, v1, :cond_9

    .line 969
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v4, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 961
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    :cond_9
    :goto_6
    if-eqz v3, :cond_a

    .line 972
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 974
    :cond_a
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRCSImdnToBufferDB oldDispositionStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newDispositionStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", oldNotDisplayedCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_b

    if-lt v1, v5, :cond_c

    .line 977
    :cond_b
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 978
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    if-ne v13, v1, :cond_f

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 979
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    if-ne v2, v1, :cond_f

    :cond_c
    const-string v1, "_bufferdbid"

    .line 981
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 980
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v1, "is_filetransfer"

    .line 983
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 982
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    move/from16 v16, v2

    .line 984
    :cond_d
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRCSImdnToBufferDB bufferDbId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MessageApp"

    if-eqz v16, :cond_e

    const-string v1, "RCS_IMDN_FT"

    goto :goto_7

    :cond_e
    const-string v1, "RCS_IMDN_CHAT"

    :goto_7
    move-object v3, v1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v0, v6

    move v6, v8

    .line 985
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 955
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1

    :cond_f
    move-object v0, v6

    :goto_9
    if-eqz v7, :cond_11

    .line 990
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :cond_10
    move-object v0, v6

    .line 992
    :cond_11
    :goto_a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    .line 904
    :cond_12
    :goto_b
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRCSImdnToBufferDB imdn/imdns is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public wipeOutData(ILjava/lang/String;)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

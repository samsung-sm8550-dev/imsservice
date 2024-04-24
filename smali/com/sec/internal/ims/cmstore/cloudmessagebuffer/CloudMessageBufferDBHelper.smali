.class public Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
.super Landroid/os/Handler;
.source "CloudMessageBufferDBHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field protected mBufferDBloaded:Z

.field protected final mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

.field protected mIsCmsEnabled:Z

.field protected mIsGoforwardSync:Z

.field protected final mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

.field protected final mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

.field protected mPhoneId:I

.field protected mProvisionSuccess:Z

.field protected mRCSDbReady:Z

.field protected final mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

.field protected final mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

.field protected final mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected final mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

.field protected final mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p4

    .line 83
    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    const-class v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 73
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRCSDbReady:Z

    .line 75
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    .line 76
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 77
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    .line 78
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    .line 79
    iput v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 86
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 87
    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    iput v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    .line 88
    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    move/from16 v1, p5

    .line 89
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    .line 90
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 91
    new-instance v11, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    invoke-direct {v11}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;-><init>()V

    iput-object v11, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    move-object/from16 v12, p3

    .line 92
    iput-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    .line 93
    iput-object v10, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 94
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 95
    new-instance v13, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v13, v1, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 96
    new-instance v9, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v9, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    .line 98
    new-instance v14, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v14

    move-object v5, v9

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 100
    new-instance v15, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v15

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v15, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 102
    new-instance v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v15

    move-object v8, v14

    move-object v14, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V

    iput-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 104
    new-instance v8, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    return-void
.end method

.method private addSessionMessagesToList(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    .locals 8

    if-eqz p1, :cond_5

    .line 485
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const-string v0, "chat_id"

    .line 487
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesToUploadByMessageType(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v4, v1

    move v6, p3

    .line 489
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 490
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSFtMessagesToUpload(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v5, 0xc

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move v6, p3

    .line 492
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 493
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 491
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_4

    .line 488
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method private getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 0

    .line 426
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x11

    goto :goto_1

    .line 430
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x12

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I
    .locals 6

    .line 1032
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v0, 0x11

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move p0, v5

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "MSG_ALL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "VVMDATA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "GREETING"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "V2TLANGUAGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "V2T_SMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string p1, "V2T_EMAIL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "PROFILE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string p1, "VOICEMAILTOTEXT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string p1, "NUTON"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string p1, "CHAT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string p1, "SMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 p0, 0x7

    goto :goto_1

    :sswitch_b
    const-string p1, "PIN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p0, 0x6

    goto :goto_1

    :sswitch_c
    const-string p1, "MMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_d
    const-string p1, "FT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    move p0, v1

    goto :goto_1

    :sswitch_e
    const-string p1, "ADHOCV2T"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    move p0, v2

    goto :goto_1

    :sswitch_f
    const-string p1, "ACTIVATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_10
    const-string p1, "DEACTIVATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    move p0, v3

    goto :goto_1

    :sswitch_11
    const-string p1, "NUTOFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    move p0, v4

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 1068
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartFullSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StopSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 1069
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartDeltaSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 1070
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_2

    :cond_12
    move v0, v5

    goto :goto_3

    :cond_13
    :goto_2
    :pswitch_0
    move v0, v4

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x12

    goto :goto_3

    :pswitch_2
    move v0, v2

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x13

    goto :goto_3

    :pswitch_4
    move v0, v1

    goto :goto_3

    :pswitch_5
    move v0, v3

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x14

    :goto_3
    :pswitch_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7610d13e -> :sswitch_11
        -0x5a1a438c -> :sswitch_10
        -0x340e3b0d -> :sswitch_f
        -0x1355f281 -> :sswitch_e
        0x8ce -> :sswitch_d
        0x12ab3 -> :sswitch_c
        0x13575 -> :sswitch_b
        0x14139 -> :sswitch_a
        0x1f8b58 -> :sswitch_9
        0x473120c -> :sswitch_8
        0x12846531 -> :sswitch_7
        0x185a1589 -> :sswitch_6
        0x1a9035b5 -> :sswitch_5
        0x1f765db2 -> :sswitch_4
        0x30191490 -> :sswitch_3
        0x3ae47039 -> :sswitch_2
        0x5c75a6b7 -> :sswitch_1
        0x7af6bfa3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 4

    .line 1306
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVvmChangeParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tableindex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " VvmTypeChange: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 1310
    :try_start_0
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    .line 1311
    iput-object p3, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 1312
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1313
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    .line 1315
    :cond_0
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1316
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    .line 1315
    invoke-static {p2, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1319
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 1

    .line 1080
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, -0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "GREETING"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string p3, "V2TLANGUAGE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string p3, "V2T_SMS"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string p3, "V2T_EMAIL"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string p3, "PROFILE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string p3, "VOICEMAILTOTEXT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string p3, "NUTON"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const-string p3, "PIN"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_8
    const-string p3, "ADHOCV2T"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_9
    const-string p3, "ACTIVATE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_a
    const-string p3, "DEACTIVATE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_b
    const-string p3, "NUTOFF"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 1094
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto/16 :goto_1

    .line 1114
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto/16 :goto_1

    .line 1122
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_SMS:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1126
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_EMAIL:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1086
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1090
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1110
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1082
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1118
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ADHOC_V2T:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1098
    :pswitch_9
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1102
    :pswitch_a
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 1106
    :pswitch_b
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7610d13e -> :sswitch_b
        -0x5a1a438c -> :sswitch_a
        -0x340e3b0d -> :sswitch_9
        -0x1355f281 -> :sswitch_8
        0x13575 -> :sswitch_7
        0x473120c -> :sswitch_6
        0x12846531 -> :sswitch_5
        0x185a1589 -> :sswitch_4
        0x1a9035b5 -> :sswitch_3
        0x1f765db2 -> :sswitch_2
        0x30191490 -> :sswitch_1
        0x3ae47039 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isValidPreferredLineValue(Lcom/google/gson/JsonElement;)Z
    .locals 3

    .line 1295
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string/jumbo v0, "preferred_line"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    .line 1298
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 1299
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 3

    const-string v0, "messagetype"

    .line 597
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 596
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isgoforwardSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    goto/16 :goto_6

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 614
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 615
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 613
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

    :cond_1
    :goto_1
    if-eqz p1, :cond_7

    .line 619
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 602
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 603
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 604
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto :goto_2

    .line 608
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p2, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz p1, :cond_7

    .line 610
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_4

    .line 602
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    .line 625
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 626
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 627
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 628
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 625
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 631
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_6
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 3

    const-string v0, "messagetype"

    .line 750
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 749
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    goto/16 :goto_6

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 766
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 767
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 765
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

    :cond_1
    :goto_1
    if-eqz p1, :cond_7

    .line 771
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 754
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 755
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 756
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_2

    .line 760
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p2, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz p1, :cond_7

    .line 762
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_4

    .line 754
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    .line 777
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 778
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 779
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 780
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 777
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 783
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_6
    return-void
.end method

.method private onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 3

    const-string v0, "messagetype"

    .line 1449
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1448
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1450
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventExpiredObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1456
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I

    goto :goto_0

    .line 1453
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I

    goto :goto_0

    .line 1462
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "syncaction"

    .line 512
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 511
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "messagetype"

    .line 514
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 513
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 515
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateBufferDBBulkUpdateSuccess,  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msgtype: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "linenum"

    const-string v0, "_bufferdbid"

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eq v3, v1, :cond_6

    const/16 v2, 0x11

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    goto/16 :goto_9

    .line 539
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 540
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 541
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 544
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 543
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 545
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 546
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 539
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

    :cond_1
    :goto_1
    if-eqz p2, :cond_8

    .line 552
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 523
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 524
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 526
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 525
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 528
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 527
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 529
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 530
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v1, v9

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 523
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz p2, :cond_8

    .line 536
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 571
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 572
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 574
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 573
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 576
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 575
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 577
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 578
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v1, v9

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 571
    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_5
    :goto_5
    if-eqz p2, :cond_8

    .line 584
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 555
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 556
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 558
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 557
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 560
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 559
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 561
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 562
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 564
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move v1, v9

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 555
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_7
    :goto_7
    if-eqz p2, :cond_8

    .line 568
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_8
    move v9, v1

    :goto_9
    if-eqz v9, :cond_9

    .line 590
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 5

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processParamAppJsonList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 1384
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 1387
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 1388
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1389
    iget v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    if-eq v3, v1, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1403
    :pswitch_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1391
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1397
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1409
    :cond_4
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1410
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1420
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processWipeOutList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1426
    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 1427
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 1428
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v5, "MSG_ALL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1429
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1430
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1431
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->wipeOutData(ILjava/lang/String;)V

    goto :goto_0

    .line 1432
    :cond_2
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    .line 1433
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v5, "VVMDATA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1434
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onWipeOutResetSyncHandler()V

    .line 1435
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x11

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1436
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1437
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x13

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1438
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x14

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1439
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x24

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1440
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x17

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1441
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->setVVMSyncState(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected appFetchingFailedMsg(Ljava/lang/String;)V
    .locals 3

    .line 1470
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1472
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1473
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1470
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
    :goto_1
    if-eqz v0, :cond_1

    .line 1476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1477
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1479
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1480
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 1477
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 1483
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1484
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1486
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1487
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 1484
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    .line 1490
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method protected buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    .locals 10

    const-string v0, "_bufferdbid"

    if-eqz p5, :cond_2

    if-eqz p2, :cond_1

    .line 117
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 118
    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferlist query count for isUpload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p5

    .line 120
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    .line 122
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v4, p5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v9

    move v3, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p5

    if-nez p5, :cond_0

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 129
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 130
    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferlist query count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p5

    .line 132
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    const-string v1, "linenum"

    .line 135
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 134
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 136
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v4, p5

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v9

    move v3, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p5

    if-nez p5, :cond_3

    :cond_4
    return-void
.end method

.method protected checkRCSNotifyUriRequestToApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;I)V
    .locals 6

    .line 278
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRCSNotifyUriRequestToApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x0

    move v1, p2

    .line 289
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 291
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 292
    iget-wide v4, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v5, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 295
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonArray;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 301
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MessageApp"

    const-string v1, "FT"

    .line 300
    invoke-interface {p0, v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method protected cleanAllBufferDB()V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->cleanAllBufferDB()V

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->cleanAllBufferDB()V

    .line 966
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->cleanAllBufferDB()V

    const/4 v0, 0x0

    .line 967
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method protected decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v15, "group_sms_body"

    const-string v14, "group_sms_from"

    const-string v13, "group_sms_recipients"

    const-string v12, "is_group_sms"

    const-string v11, "imdn_message_id"

    const-string v10, "correlationId"

    const-string v9, "correlationTag"

    const-string v8, "chatid"

    const-string v7, "id"

    const-string/jumbo v6, "type"

    const-string v5, "islocalonly"

    .line 1137
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 1138
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    invoke-direct {v4}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v3, p2

    .line 1141
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1142
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1143
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    const/16 v19, 0x0

    move-object/from16 v16, v4

    move/from16 v2, v19

    .line 1144
    :goto_0
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 1145
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    const-string v17, ""

    move/from16 p2, v2

    .line 1152
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    .line 1159
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 1161
    :try_start_1
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1162
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1163
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1164
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1165
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1166
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v3

    const-string/jumbo v3, "true"

    .line 1167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    move/from16 v32, p2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v34, v7

    move-object/from16 v22, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v35, v11

    move-object/from16 v20, v12

    move-object/from16 v31, v13

    move-object v0, v14

    move-object/from16 v27, v15

    move-object/from16 v33, v16

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    move-object/from16 v21, v3

    .line 1172
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_2

    .line 1173
    :try_start_3
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1174
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object/from16 v3, v17

    .line 1177
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v2, :cond_3

    .line 1178
    :try_start_5
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1179
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1180
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1181
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move/from16 v17, v2

    goto :goto_2

    :cond_3
    move/from16 v17, v19

    .line 1184
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v2, :cond_4

    .line 1185
    :try_start_7
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1186
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1187
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1188
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v22, v2

    goto :goto_3

    :cond_4
    move-object/from16 v22, v18

    .line 1191
    :goto_3
    :try_start_8
    invoke-direct {v1, v4}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->isValidPreferredLineValue(Lcom/google/gson/JsonElement;)Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v2, :cond_5

    .line 1192
    :try_start_9
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    move-object/from16 v23, v5

    const-string/jumbo v5, "preferred_line"

    .line 1193
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1194
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v24, v6

    iget v6, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    invoke-static {v5, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1192
    invoke-static {v2, v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v5, :cond_6

    move-object/from16 v20, v2

    goto :goto_4

    :cond_5
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 1200
    :cond_6
    :goto_4
    :try_start_a
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v2, :cond_7

    .line 1202
    :try_start_b
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1203
    invoke-virtual {v2, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1204
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1205
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1206
    invoke-virtual {v2, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1207
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object/from16 v25, v2

    goto :goto_5

    :cond_7
    move-object/from16 v25, v18

    .line 1211
    :goto_5
    :try_start_c
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    if-eqz v2, :cond_8

    .line 1213
    :try_start_d
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1214
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1215
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1216
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1217
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1218
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_6

    :cond_8
    move-object/from16 v2, v18

    .line 1222
    :goto_6
    :try_start_e
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    if-eqz v5, :cond_9

    .line 1224
    :try_start_f
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 1225
    invoke-virtual {v5, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 1226
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1227
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1228
    invoke-virtual {v2, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1229
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :cond_9
    move-object/from16 v26, v2

    .line 1234
    :try_start_10
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    if-eqz v2, :cond_a

    .line 1236
    :try_start_11
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1237
    invoke-virtual {v2, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1238
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1239
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1240
    invoke-virtual {v2, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1241
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    move/from16 v27, v2

    goto :goto_7

    :cond_a
    move/from16 v27, v19

    :goto_7
    if-eqz v27, :cond_e

    .line 1245
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1247
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1248
    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1249
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1250
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1251
    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1252
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_b
    move-object/from16 v2, v18

    .line 1255
    :goto_8
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1257
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 1258
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 1259
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1260
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 1261
    invoke-virtual {v5, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 1262
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_c
    move-object/from16 v5, v18

    .line 1265
    :goto_9
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 1267
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 1268
    invoke-virtual {v6, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 1269
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1270
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 1271
    invoke-virtual {v6, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 1272
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    move-object/from16 v28, v2

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_a

    :cond_d
    move-object/from16 v28, v2

    move-object/from16 v29, v5

    move-object/from16 v30, v18

    goto :goto_a

    :cond_e
    move-object/from16 v28, v18

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    .line 1275
    :goto_a
    :try_start_12
    invoke-direct {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    const/4 v2, -0x1

    if-ne v5, v2, :cond_f

    .line 1277
    :try_start_13
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "decodeJson: Invalid tableindex"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    return-object v18

    .line 1280
    :cond_f
    :try_start_14
    invoke-direct {v1, v4, v3, v0, v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v31

    move-object/from16 v4, v16

    .line 1281
    iget-object v6, v4, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move/from16 v32, p2

    move-object/from16 p2, v2

    move-object/from16 v2, p2

    move-object/from16 v16, v3

    move-object/from16 v3, p1

    move-object/from16 v33, v4

    move-object/from16 v4, v16

    move-object v1, v6

    move/from16 v6, v17

    move-object/from16 v34, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v25

    move-object/from16 v25, v9

    move-object/from16 v9, v26

    move-object/from16 v26, v10

    move-object/from16 v10, p3

    move-object/from16 v35, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v31

    move-object/from16 v31, v13

    move-object v13, v0

    move-object v0, v14

    move/from16 v14, v27

    move-object/from16 v27, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    invoke-direct/range {v2 .. v17}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;Lcom/sec/internal/ims/cmstore/MessageStoreClient;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    :goto_b
    add-int/lit8 v2, v32, 0x1

    move-object/from16 v1, p0

    move-object v14, v0

    move-object/from16 v12, v20

    move-object/from16 v3, v21

    move-object/from16 v8, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v15, v27

    move-object/from16 v13, v31

    move-object/from16 v16, v33

    move-object/from16 v7, v34

    move-object/from16 v11, v35

    move-object/from16 v0, p3

    goto/16 :goto_0

    :cond_10
    move-object/from16 v33, v16

    goto :goto_c

    :cond_11
    move-object/from16 v33, v4

    :goto_c
    return-object v33

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 1288
    :goto_d
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JsonSyntaxException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v18
.end method

.method protected fetchingPendingMsg()V
    .locals 5

    .line 1494
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "MessageApp"

    if-eqz v1, :cond_0

    .line 1498
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1499
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v4, "SMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1496
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

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1502
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1503
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1505
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1506
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const-string v4, "MMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 1503
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 1509
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1510
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1512
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1513
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const-string v1, "CHAT"

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 1510
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 1516
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method protected handleBufferDbReadMessageJson(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBulkDeleteSingleUrlSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 503
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

    .line 507
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method protected handleCancelMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1340
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1341
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    .locals 9

    .line 668
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 670
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->protocol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "standard"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->protocol:Ljava/lang/String;

    .line 671
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 672
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p2, "syncaction"

    .line 674
    invoke-interface {v8, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 673
    invoke-interface {v8, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 675
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloudNotifyChangedObj, Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ne p2, v0, :cond_1

    .line 744
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void

    .line 679
    :cond_1
    :try_start_1
    invoke-direct {p0, v8, p1, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto/16 :goto_9

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v4

    .line 683
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v2

    .line 685
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v7

    if-eq v2, v7, :cond_4

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v8, :cond_3

    .line 744
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    .line 692
    :cond_4
    :try_start_2
    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 735
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v0, "SD outgoing message - needs to be inserted"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 693
    :cond_6
    :goto_1
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyChangedObj RCS CloudUpdate: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v0, :cond_7

    .line 697
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 698
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v2, v4, v5, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 700
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v0, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v1

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 696
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 704
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    if-nez v3, :cond_a

    .line 706
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyChangedObj MMS CloudUpdate: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v0, :cond_9

    .line 711
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 712
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v5, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 714
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v1

    goto :goto_5

    :catchall_2
    move-exception p0

    .line 709
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 718
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    if-nez v3, :cond_c

    .line 721
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 722
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCloudNotifyChangedObj: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_b

    .line 725
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 726
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v5, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 728
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v0, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move v3, v1

    goto :goto_7

    :catchall_4
    move-exception p0

    .line 723
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_b
    :goto_7
    if-eqz v0, :cond_c

    .line 732
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_8
    if-nez p3, :cond_d

    if-nez v3, :cond_d

    .line 739
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v2, 0x7

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, p2

    move-wide v3, v4

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_d
    :goto_9
    if-eqz v8, :cond_e

    .line 744
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :catchall_6
    move-exception p0

    if-eqz v8, :cond_f

    .line 671
    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_a
    throw p0
.end method

.method protected handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 10

    .line 832
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 835
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "syncaction"

    .line 837
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 836
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 838
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloudNotifyDeletedObj, Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ne v0, v2, :cond_0

    .line 903
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 842
    :cond_0
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto/16 :goto_8

    .line 844
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 846
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v0, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v2

    .line 848
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 849
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v1, :cond_2

    .line 903
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 854
    :cond_3
    :try_start_2
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v4, 0x1

    const-string v5, "did not find buffer item to delete"

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_6

    .line 855
    :try_start_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCloudNotifyDeletedObj RCS CloudUpdate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v0, :cond_4

    .line 859
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 860
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v2, v6, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 862
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    move v3, v4

    goto :goto_0

    .line 866
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v0, :cond_6

    .line 868
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_5

    .line 858
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0

    :cond_6
    :goto_2
    if-nez v3, :cond_a

    .line 870
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCloudNotifyDeletedObj MMS CloudUpdate: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v0, :cond_7

    .line 876
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 877
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x4

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 879
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_3

    .line 883
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v4, v3

    :goto_3
    if-eqz v0, :cond_8

    .line 885
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_8
    move v3, v4

    goto :goto_5

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_9

    .line 874
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p0

    :cond_a
    :goto_5
    if-nez v3, :cond_d

    .line 887
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 888
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloudNotifyChangedObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v0, :cond_b

    .line 892
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 893
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_6

    .line 898
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_6
    if-eqz v0, :cond_d

    .line 900
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_8

    :catchall_4
    move-exception p0

    if-eqz v0, :cond_c

    .line 890
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    :try_start_f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    .line 903
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :catchall_6
    move-exception p0

    if-eqz v1, :cond_f

    .line 834
    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw p0
.end method

.method protected handleDeleteMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1360
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1361
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleDownloadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1370
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1371
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleExpiredObject(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 792
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "syncaction"

    .line 794
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 793
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 795
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExpiredObject, Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 802
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 799
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 800
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->deleteSummaryDBwithResUrl(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 791
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 802
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method protected handleReadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1335
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1336
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleReceivedMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1325
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Received:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1326
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleSentMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1330
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Sent:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1331
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleStarredMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1345
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Starred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1346
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUnReadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1355
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1356
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUnStarredMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1350
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnStarred:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1351
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUploadMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1365
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Upload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1366
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleWipeOutMessageJson(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1378
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->WipeOut:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1379
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 9

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "notifyNetAPIUploadMessages Message upload started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresMsgUploadInInitSync()Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 443
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v4, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v1

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void

    .line 450
    :cond_1
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz p2, :cond_5

    .line 451
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryGroupSession()Landroid/database/Cursor;

    move-result-object p2

    const/16 v5, 0xa

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move v6, p3

    .line 452
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    .line 453
    invoke-direct {p0, p2, v0, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->addSessionMessagesToList(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_2

    .line 454
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryOneToOneSession()Landroid/database/Cursor;

    move-result-object p2

    .line 456
    :try_start_1
    invoke-direct {p0, p2, v0, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->addSessionMessagesToList(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_5

    .line 457
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 455
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz p2, :cond_4

    .line 451
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0

    .line 459
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x3

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move v6, p3

    .line 460
    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    if-eqz p2, :cond_6

    .line 461
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move v6, p3

    .line 463
    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz p2, :cond_7

    .line 464
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_7
    iget-boolean p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez p2, :cond_b

    .line 466
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move v6, p3

    .line 467
    :try_start_6
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz p2, :cond_8

    .line 468
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_8
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryImdnMessagesToUpload()Landroid/database/Cursor;

    move-result-object p2

    const/16 v5, 0xd

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move v6, p3

    .line 471
    :try_start_7
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p2, :cond_b

    .line 472
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_4
    move-exception p0

    if-eqz p2, :cond_9

    .line 470
    :try_start_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw p0

    :catchall_6
    move-exception p0

    if-eqz p2, :cond_a

    .line 466
    :try_start_9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw p0

    .line 474
    :cond_b
    :goto_5
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 477
    :cond_c
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v8

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :goto_6
    return-void

    :catchall_8
    move-exception p0

    if-eqz p2, :cond_d

    .line 462
    :try_start_a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    throw p0

    :catchall_a
    move-exception p0

    if-eqz p2, :cond_e

    .line 459
    :try_start_b
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_8

    :catchall_b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_8
    throw p0
.end method

.method protected notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11

    .line 307
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUriRequesttoApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 313
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 314
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 317
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v4, :cond_4

    .line 318
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 319
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 320
    iget-wide v9, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-ne v4, v3, :cond_1

    .line 323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_1
    const/16 v9, 0x11

    if-ne v4, v9, :cond_2

    .line 325
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_2
    const/16 v6, 0x12

    if-ne v4, v6, :cond_3

    .line 327
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    .line 329
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppForFtUri notifyMMS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyRCS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyVVM count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyGreeting count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 338
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_a

    .line 339
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonArray;

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "MessageApp"

    if-eqz p1, :cond_8

    if-eq p1, v7, :cond_7

    const-string v2, "VVMDATA"

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_5

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default apptype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " datatype:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    goto :goto_4

    :cond_5
    const-string v3, "GREETING"

    goto :goto_5

    :cond_6
    :goto_4
    move-object v3, v2

    goto :goto_5

    :cond_7
    const-string v3, "FT"

    goto :goto_5

    :cond_8
    const-string v3, "MMS"

    .line 363
    :goto_5
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonArray;

    invoke-virtual {v8}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v2, v3, v8, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method protected onHandlePendingNmsEvent()V
    .locals 12

    .line 907
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 908
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->queryAllPendingNmsEventInSummaryDB()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 909
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 910
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "NmsEvent sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "_bufferdbid"

    .line 913
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 912
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 914
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v5, 0x7

    int-to-long v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 908
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

    .line 919
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 921
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method protected onSendCloudUnSyncedUpdate()V
    .locals 8

    .line 369
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToCloudUnsyncedSms()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 371
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_0

    .line 372
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToCloudUnsyncedMms()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 374
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v7, :cond_1

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToCloudUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 377
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 378
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_2
    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 380
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v7, :cond_4

    .line 376
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v7, :cond_5

    .line 373
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0

    :catchall_4
    move-exception p0

    if-eqz v7, :cond_6

    .line 370
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
.end method

.method protected onSendDeviceUnSyncedUpdate()V
    .locals 12

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToDeviceUnsyncedSms()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_bufferdbid"

    if-eqz v0, :cond_1

    .line 386
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 388
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 390
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v5, "MessageApp"

    const/4 v6, 0x3

    .line 392
    invoke-virtual {v4, v6, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    const/4 v9, 0x0

    .line 390
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 394
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 385
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
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
    if-eqz v0, :cond_2

    .line 396
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnsyncedMms()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 398
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 401
    :cond_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 400
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 402
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const-string v5, "MessageApp"

    const/4 v6, 0x4

    .line 404
    invoke-virtual {v4, v6, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    const/4 v9, 0x0

    .line 402
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 406
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_3

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 397
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 408
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 410
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 413
    :cond_6
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 412
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "is_filetransfer"

    .line 414
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    move v4, v5

    goto :goto_4

    :cond_7
    move v4, v1

    .line 415
    :goto_4
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const-string v7, "MessageApp"

    .line 417
    invoke-virtual {v6, v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v8

    int-to-long v9, v3

    const/4 v11, 0x0

    .line 415
    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 419
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v3, :cond_6

    goto :goto_6

    :catchall_4
    move-exception p0

    .line 409
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void
.end method

.method protected onSendMCSUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    .line 183
    new-instance v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 184
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v9

    .line 185
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingFetchForce()I

    move-result v2

    if-lez v2, :cond_0

    .line 188
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUnDownloadedMmsMessageForMcs(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    return-void

    .line 192
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v8

    move-object v3, v11

    move/from16 v5, p3

    .line 194
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v11, :cond_2

    .line 195
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v10

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v8

    move-object v3, v10

    move/from16 v5, p3

    .line 197
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_3

    .line 198
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_3
    iget-object v1, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 202
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    :cond_4
    if-ltz v9, :cond_5

    .line 204
    iget-object v10, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v11

    move v2, v9

    move/from16 v5, p3

    move-object v6, p1

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_6

    .line 196
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_7

    .line 193
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v1
.end method

.method protected onSendPayloadObject(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "onSendPayloadObject"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 145
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 146
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 147
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p2, :cond_1

    .line 148
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 150
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_2

    .line 151
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    .line 153
    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 154
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_3
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 158
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_5

    .line 152
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz p2, :cond_6

    .line 149
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p0

    :catchall_4
    move-exception p0

    if-eqz p2, :cond_7

    .line 146
    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p0
.end method

.method protected onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v1, p2

    move/from16 v8, p4

    .line 211
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 212
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v10

    .line 216
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_6

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 239
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedVvm(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v12

    const/16 v4, 0x11

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move/from16 v5, p3

    .line 241
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    .line 242
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 243
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v1, v11}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->setVVMSyncState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v12, :cond_5

    .line 245
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_2

    .line 240
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 246
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedGreeting(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v12

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move/from16 v5, p3

    .line 248
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_5

    .line 249
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_4

    .line 247
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1

    :cond_5
    :goto_2
    const/4 v1, -0x1

    goto/16 :goto_5

    .line 217
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryPendingUrlFetch()I

    move-result v1

    .line 218
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryPendingFetchForce()I

    move-result v12

    .line 219
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSendUnDownloadedMessage syncAction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pendingRCSCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pendingLegacyMMSCount"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    .line 222
    :try_start_4
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_7

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v13

    move/from16 v5, p3

    .line 223
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    goto :goto_4

    :cond_7
    if-eqz v13, :cond_9

    .line 225
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string v1, "_bufferdbid"

    .line 228
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 227
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "linenum"

    .line 230
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 229
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 231
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    int-to-long v3, v1

    move-object v1, v2

    move-object v2, v9

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->addMmsPartDownloadList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V

    .line 232
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v1, :cond_8

    :cond_9
    :goto_4
    if-eqz v13, :cond_a

    .line 235
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_a
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v13

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v13

    move/from16 v5, p3

    .line 237
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v13, :cond_b

    .line 238
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    move v1, v12

    .line 252
    :goto_5
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 253
    iget-boolean v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v2, :cond_e

    .line 254
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    if-ne v8, v2, :cond_c

    if-lez v1, :cond_c

    .line 255
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUnDownloadedMmsMessageForMcs(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    goto :goto_6

    .line 256
    :cond_c
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_d

    .line 257
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 259
    :cond_d
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 262
    :cond_e
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_f

    .line 263
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    .line 265
    :cond_f
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_6

    :cond_10
    if-ltz v10, :cond_11

    .line 268
    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_11

    .line 270
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1, v1, v11}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onSendMCSUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto :goto_6

    :cond_11
    if-ltz v10, :cond_12

    .line 272
    iget-object v8, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v11

    move v2, v10

    move/from16 v5, p3

    move-object v6, p1

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_12
    :goto_6
    return-void

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_13

    .line 236
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_7
    throw v1

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_14

    .line 221
    :try_start_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_14
    :goto_8
    throw v1
.end method

.method protected onUnDownloadedMmsMessageForMcs(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 10

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "onUnDownloadedMmsMessageForMcs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 165
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v8

    .line 167
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 168
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    .line 169
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 170
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_1
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    :cond_2
    if-ltz v8, :cond_3

    .line 176
    iget-object p2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move v2, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    .line 168
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
.end method

.method public resetImsi()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->resetImsi()V

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->resetImsi()V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->resetImsi()V

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->resetImsi()V

    return-void
.end method

.method protected setBufferDBLoaded(Z)V
    .locals 0

    .line 1415
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 1416
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveBufferDbLoaded(Z)V

    return-void
.end method

.method protected startGoForwardSyncDbCopyTask()V
    .locals 5

    .line 926
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 927
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 928
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    .line 927
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 930
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    .line 929
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 931
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryDeltaSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 932
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 931
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

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 937
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 938
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 939
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 940
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 938
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 943
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez v1, :cond_7

    .line 945
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryDeltaSMSfromTelephonyWoImsi()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 946
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 947
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "Null Imsi SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 945
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 950
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 951
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 952
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 953
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "Null Imsi MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 951
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 956
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->syncReadSmsFromTelephony()V

    .line 959
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->syncReadMmsFromTelephony()V

    .line 960
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method protected startInitialSyncDBCopyTask()V
    .locals 5

    .line 971
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->cleanAllBufferDB()V

    .line 972
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 973
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 974
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 975
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 976
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    .line 975
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 978
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    .line 977
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSfromTelephonyWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 980
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 981
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 979
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

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 985
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 987
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 988
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 989
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 987
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 992
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 994
    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsCmsEnabled:Z

    if-nez v1, :cond_7

    .line 996
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSfromTelephonyWoIMSI()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 997
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 998
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS Loading for IMSI null case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 996
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 1001
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1002
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1003
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1004
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS Loading for IMSI null case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 1002
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 1007
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1010
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1011
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1012
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "RCS DB loading"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->insertAllSessionToRCSSessionBufferDB(Landroid/database/Cursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    .line 1010
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0

    :cond_8
    :goto_9
    if-eqz v0, :cond_9

    .line 1015
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1018
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1019
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryAllSessionsFromTelephony(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1020
    :try_start_a
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "TP DB loading"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    .line 1021
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1022
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->insertSessionFromTPDBToRCSSessionBufferDB(Landroid/database/Cursor;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :cond_a
    if-eqz v0, :cond_c

    .line 1024
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_a
    move-exception p0

    if-eqz v0, :cond_b

    .line 1019
    :try_start_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_a

    :catchall_b
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    throw p0

    :cond_c
    :goto_b
    const/4 v0, 0x1

    .line 1027
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

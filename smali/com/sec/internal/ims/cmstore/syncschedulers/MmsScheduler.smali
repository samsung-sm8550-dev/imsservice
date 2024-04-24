.class public Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;
.super Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;
.source "MmsScheduler.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected final mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

.field private final mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p3

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;)V

    .line 54
    const-class p2, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    .line 66
    new-instance p2, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-direct {p2, p1, p6}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    .line 67
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mMultiLineScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    const/4 p1, 0x4

    .line 68
    iput p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    return-void
.end method

.method private handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeviceLegacyUpdateParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 670
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Sending:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->SendFail:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 674
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag:[I

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    .line 687
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 680
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTRId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingMidorTrId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 676
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTRId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMSPduBufferUsingMidorTrId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 696
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 700
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_3

    .line 704
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_2
    throw p0

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCrossObjectSearchMmsAvailableUsingCorrelationId(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 806
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 805
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "date"

    .line 808
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 807
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "_id"

    .line 809
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v13, v5

    const-string v5, "m_id"

    .line 810
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 812
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCrossSearchObj find bufferDB: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " m_id: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "syncaction"

    .line 815
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 814
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v4

    const-string/jumbo v15, "syncdirection"

    .line 817
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 816
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v5

    .line 818
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "lastmodseq"

    .line 819
    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 820
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 821
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "res_url"

    .line 820
    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    if-eqz v6, :cond_0

    .line 824
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "parentfolder"

    .line 823
    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_0
    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    if-eqz v6, :cond_1

    const-string v7, "path"

    .line 828
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 827
    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v6, "read"

    .line 830
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    .line 832
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 833
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object v9, v1

    move-object v8, v4

    goto :goto_0

    :cond_2
    move-object v9, v4

    move-object v8, v5

    .line 835
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 836
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    :cond_3
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v1, v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v6, v11

    move-object v2, v10

    move-object v10, v1

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    .line 841
    iget-boolean v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_4

    .line 842
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 843
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 842
    invoke-virtual {v2, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    :cond_4
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v2, v11, v12, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-lez v2, :cond_5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide v2, v11

    move/from16 v6, p4

    move-object/from16 v7, p3

    .line 848
    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_5
    return-void
.end method

.method private onNmsEventChangedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 248
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 247
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 249
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string v3, "linenum"

    .line 251
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 250
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "syncaction"

    .line 253
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 252
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v16

    const-string/jumbo v10, "syncdirection"

    .line 255
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 254
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v1

    .line 256
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 257
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    const-string v5, "lastmodseq"

    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 259
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "res_url"

    .line 258
    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    .line 261
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parentfolder"

    .line 260
    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v2

    .line 263
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "read"

    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-wide v6, v11

    move-object v8, v1

    move-object/from16 v17, v15

    move-object v15, v9

    move-object/from16 v9, v16

    move-wide/from16 v18, v13

    move-object v13, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v4

    .line 268
    iget-boolean v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    if-eqz v5, :cond_1

    .line 269
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-wide v6, v11

    move-object v8, v1

    move-object/from16 v9, v16

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperationForCms(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 271
    :goto_0
    iget-boolean v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v15, v11, v12, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-lez v2, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide v2, v11

    move/from16 v6, p3

    move-object/from16 v7, v17

    .line 278
    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_3
    return-void
.end method

.method private onNmsEventDeletedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_bufferdbid"

    .line 285
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v11, v3

    const-string v3, "_id"

    .line 286
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v13, v3

    const-string v3, "linenum"

    .line 287
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "syncaction"

    .line 289
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 288
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v9

    const-string/jumbo v10, "syncdirection"

    .line 291
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 290
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v8

    .line 292
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 293
    iget-wide v4, v2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->lastModSeq:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "lastmodseq"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_0

    .line 295
    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 296
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "res_url"

    .line 295
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v6, v11

    move-object/from16 v16, v15

    move-object v15, v10

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    .line 300
    iget-boolean v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v4, :cond_1

    .line 301
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v1, v11, v12, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v3, 0x0

    cmp-long v1, v13, v3

    if-lez v1, :cond_2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v11

    move/from16 v6, p3

    move-object/from16 v7, v16

    .line 307
    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addMmsPartDownloadList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V
    .locals 8

    .line 196
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryOneMmsUndownloadedParts(J)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 197
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const-string p3, "_bufferdbid"

    .line 200
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    .line 199
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 201
    iget-object p3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, v7

    move v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 196
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
    if-eqz p2, :cond_2

    .line 206
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public addMmsPartDownloadListForFtUri(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V
    .locals 10

    .line 210
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryOneMmsUndownloadedParts(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMmsPartDownloadListForFtUri pduid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "_bufferdbid"

    .line 215
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 214
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    const-string v1, "ct"

    .line 217
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 216
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/smil"

    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "text/plain"

    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v3, 0x4

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v9

    move-wide v4, p2

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 210
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

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 226
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public cleanAllBufferDB()V
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->cleanAllBufferDB()V

    return-void
.end method

.method public deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public handleCrossSearchObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Z
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCrossSearchObj():  line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " objt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCrossObjectSearchMmsAvailableUsingCorrelationId(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 792
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

    .line 798
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public handleExistingBufferForDeviceLegacyUpdate(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 462
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleExistingBufferForDeviceLegacyUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "syncaction"

    .line 465
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 464
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v11

    const-string/jumbo v5, "syncdirection"

    .line 467
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 466
    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v10

    const-string v6, "linenum"

    .line 468
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "_bufferdbid"

    .line 469
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 470
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v7, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v12, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    move-wide v8, v14

    invoke-virtual/range {v6 .. v12}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForMsgOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v6

    .line 472
    iget-boolean v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v7, :cond_0

    .line 473
    iget-object v7, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    iget-object v5, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    :cond_0
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 477
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "read"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    :cond_1
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id"

    .line 481
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 482
    iget-wide v7, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    int-to-long v9, v1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_2

    .line 483
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget v5, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const-string v7, "_bufferdbid=?"

    invoke-virtual {v1, v5, v3, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 486
    iget-boolean v1, v6, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_3

    .line 487
    iget v4, v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v14

    move/from16 v6, p3

    move-object v7, v13

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    :cond_3
    return-void
.end method

.method public handleNonExistingBufferForDeviceLegacyUpdate(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;)V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNonExistingBufferForDeviceLegacyUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 495
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    const-string v2, "linenum"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 499
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    .line 500
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 499
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 501
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 499
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

    .line 504
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public handleNormalSyncObjectMmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J
    .locals 23

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string/jumbo v1, "syncdirection"

    const-string/jumbo v2, "syncaction"

    .line 132
    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNormalSyncObjectMmsDownload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, -0x1

    .line 134
    :try_start_0
    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :try_start_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v14, :cond_2

    .line 136
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "_bufferdbid"

    .line 138
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 137
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v12, v3

    const-string v3, "_id"

    .line 139
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    .line 141
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 140
    invoke-static {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v5

    .line 143
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 142
    invoke-static {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v6

    .line 144
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "lastmodseq"

    .line 145
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v7, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "res_url"

    .line 146
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 147
    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "parentfolder"

    .line 148
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 149
    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 148
    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "path"

    .line 150
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "read"

    .line 151
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 153
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 154
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    :cond_0
    move-object/from16 v20, v5

    move-object/from16 v19, v6

    .line 156
    iget-object v15, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v5, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move/from16 v16, v5

    move-wide/from16 v17, v12

    move-object/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v0

    .line 158
    iget-boolean v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v5, :cond_1

    .line 159
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    :cond_1
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v11, v7, v12, v13, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    move-wide v3, v12

    move/from16 v7, p2

    .line 164
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    goto/16 :goto_0

    .line 169
    :cond_2
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "handleNormalSyncObjectMmsDownload: MMS not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertMMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJZ)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v2

    const-string v1, "OUT"

    .line 171
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "IN"

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v3, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 v4, 0x4

    .line 173
    invoke-static {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->isDownloadObject(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v0, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    if-nez v0, :cond_5

    .line 176
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 177
    iget-object v0, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/16 v16, 0x4

    iget-wide v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v6, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v15, v1

    move-wide/from16 v17, v3

    move/from16 v19, p2

    move-object/from16 v20, v8

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-direct/range {v15 .. v22}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-wide v0, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_5

    iget-object v0, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    iget-boolean v0, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->isCmsEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 183
    :cond_4
    iget-wide v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz v14, :cond_7

    .line 189
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_6

    .line 134
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 190
    iget-object v1, v11, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-wide v12
.end method

.method public handleObjectMMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string/jumbo v1, "read"

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v3, "syncaction"

    .line 72
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleObjectMMSCloudSearch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    .line 74
    :try_start_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget-object v5, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-eqz v11, :cond_4

    .line 75
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "_bufferdbid"

    .line 76
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-long v8, v4

    .line 78
    :try_start_2
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 77
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v17

    .line 80
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 79
    invoke-static {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-result-object v16

    .line 81
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "lastmodseq"

    .line 82
    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "res_url"

    .line 83
    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 84
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parentfolder"

    .line 85
    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 86
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "path"

    .line 87
    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v5, v6, v12}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const/4 v6, 0x0

    .line 90
    iput-boolean v6, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    .line 92
    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6, v12}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v13, 0x1

    if-eqz v6, :cond_0

    .line 93
    :try_start_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v5, v13, v12, v1}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->setIsChangedActionAndDirection(ZLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 95
    :cond_0
    :try_start_4
    iget-object v5, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_2

    .line 96
    :try_start_5
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 98
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    :cond_1
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v13, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    move-wide v14, v8

    move-object/from16 v18, v6

    invoke-virtual/range {v12 .. v18}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 103
    :cond_2
    :try_start_6
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    iget v13, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-wide v14, v8

    invoke-virtual/range {v12 .. v18}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;->getSetFlagsForCldOperation(IJLcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    move-result-object v1

    :goto_0
    move-object v5, v1

    .line 107
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1, v7, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 109
    iget-boolean v1, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mIsChanged:Z

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object v1, v5, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v4, v8, v9, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    const/4 v6, 0x4

    const/4 v10, 0x0

    .line 113
    iget-boolean v12, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    iget-object v13, v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object v2, v5

    move-wide v3, v8

    move v5, v6

    move v6, v10

    move v7, v12

    move-wide v9, v8

    move-object v8, v13

    move-wide v12, v9

    move-object v9, v14

    move v10, v15

    :try_start_7
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    goto :goto_2

    :cond_3
    move-wide v12, v8

    .line 117
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v0, v4, v12, v13, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    move-wide v8, v12

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-wide v8, v12

    goto :goto_5

    :catchall_1
    move-exception v0

    move-wide v12, v8

    goto :goto_4

    .line 120
    :cond_4
    :try_start_8
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "handleObjectMMSCloudSearch: MMS not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertMMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJZ)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    .line 122
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mSummaryDB:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, v7, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz v11, :cond_6

    .line 125
    :try_start_9
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    :catchall_2
    move-exception v0

    :goto_4
    move-object v1, v0

    :goto_5
    if-eqz v11, :cond_5

    .line 74
    :try_start_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_6
    throw v1
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_6
    :goto_7
    return-wide v8
.end method

.method public insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    .locals 1

    .line 659
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J

    return-void
.end method

.method public notifyMsgAppDeleteFail(IJLjava/lang/String;)V
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

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

    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x4

    if-ne p1, p4, :cond_0

    .line 860
    new-instance p1, Lcom/google/gson/JsonArray;

    invoke-direct {p1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 861
    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "id"

    .line 862
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-virtual {p1, p4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 864
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    const-string p2, "MMS"

    .line 866
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MessageApp"

    .line 864
    invoke-interface {p0, p3, p2, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    .locals 7

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyMsgAppFetchBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 511
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    :cond_0
    const-string v0, "_bufferdbid"

    .line 514
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 513
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 515
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "id"

    .line 516
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 518
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mMaxNumMsgsNotifyAppInIntent:I

    const/4 v2, 0x0

    const-string v3, "MMS"

    const-string v4, "MessageApp"

    const-string v5, "notify message app: MMS: "

    if-ne v0, v1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 523
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 520
    invoke-interface {v0, v4, v3, p2, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 524
    new-instance p2, Lcom/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 526
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 528
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 534
    invoke-virtual {p2}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 531
    invoke-interface {p0, v4, v3, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppOperationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 766
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;

    iget v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    const/4 v6, 0x0

    iget-object v8, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void

    .line 772
    :cond_0
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 773
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "tr_id"

    .line 775
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 774
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 776
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mCorrelationId:Ljava/lang/String;

    .line 777
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "m_id"

    .line 778
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v8, v2

    .line 780
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;

    iget v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    iget v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    const/4 v7, 0x0

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-direct {p0, v2, v1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleDeviceLegacyUpdateParam(Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;ZLcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 784
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string p1, "onAppOperationReceived: no mms pdu exists"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 772
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

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 786
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 2

    .line 753
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;I)V

    return-void
.end method

.method public onMmsAllPayloadsDownloadFromMcs(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 12

    const-string v0, "Content-ID"

    const-string v1, ";"

    .line 319
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 323
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_6

    const/4 v3, 0x0

    move v5, v3

    .line 324
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 326
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getAllPayloads()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/BodyPart;

    .line 327
    invoke-interface {v6}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    const-string v8, "multipart/related"

    .line 329
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "multipart/mixed"

    .line 330
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 356
    :cond_0
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignore Content type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 331
    :cond_1
    :goto_1
    new-instance v8, Ljavax/mail/internet/MimeMultipart;

    new-instance v9, Ljavax/mail/util/ByteArrayDataSource;

    invoke-interface {v6}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v9, v6, v7}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    move v6, v3

    .line 332
    :goto_2
    invoke-virtual {v8}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 333
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 335
    invoke-virtual {v8, v6}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v7

    .line 336
    invoke-interface {v7}, Ljavax/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    const-string v10, "ct"

    .line 337
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "text/plain"

    .line 338
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "application/smil"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    const-string v9, ""

    .line 342
    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v11}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v11

    invoke-static {v10, v9, v4, v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    .line 344
    invoke-interface {v7}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveInputStreamtoPath(Ljava/io/InputStream;Ljava/lang/String;)J

    const-string v10, "_data"

    .line 345
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 339
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljavax/mail/Part;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "text"

    .line 340
    invoke-virtual {v2, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v9, "mid"

    .line 347
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v10

    iget-wide v10, v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    invoke-interface {v7, v0}, Ljavax/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 350
    invoke-interface {v7, v0}, Ljavax/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    const-string v9, "cid"

    .line 351
    invoke-virtual {v2, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_4
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v9, 0x6

    invoke-virtual {v7, v9, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 361
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method public onMmsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 14

    move-object v0, p0

    .line 413
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS PayLoad downloaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :try_start_0
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    .line 416
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v4, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/4 v2, 0x6

    .line 414
    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_4

    .line 418
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "content_uri"

    .line 420
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 419
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ct"

    .line 422
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 421
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mid"

    .line 423
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 424
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v6

    iget-object v8, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 425
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_bufferdbid= ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v10

    iget-wide v12, v10, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 427
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v9, v12

    const-string v10, "application/smil"

    .line 429
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "text/plain"

    .line 430
    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string/jumbo v10, "xml"

    .line 431
    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "copy data to app uri "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " dataSize: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v3

    invoke-static {v4, v3, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z

    const-string v3, "_data"

    .line 442
    invoke-virtual {v6, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 432
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v4, "part UTF8 text data"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v4, "text"

    if-eqz v1, :cond_3

    .line 434
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getData()[B

    move-result-object v3

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 435
    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, ""

    .line 437
    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1, v2, v6, v7, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 446
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    int-to-long v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryIfMmsPartsDownloadComplete(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 447
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v1, v5}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 448
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->updateMMSUpdateingDevice(J)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v7, p2

    .line 449
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 414
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    :cond_4
    :goto_4
    if-eqz v11, :cond_5

    .line 455
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    return-void
.end method

.method public onMmsPayloadUpdateWithDB(JLjava/lang/String;)V
    .locals 12

    const-string v3, "_data"

    .line 366
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS PayLoad onMmsPayloadUpdateWithDB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v5, 0x6

    invoke-virtual {v4, v5, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_3

    .line 370
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "content_uri"

    .line 372
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 371
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "ct"

    .line 374
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 373
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mid"

    .line 375
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 377
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "_bufferdbid= ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    .line 379
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v10, v2

    const-string v1, "application/smil"

    .line 380
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "text/plain"

    .line 381
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "xml"

    .line 382
    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copy data to app uri "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dataSize: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    .line 390
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFileToAppUri(Landroid/content/Context;[BLjava/lang/String;)Z

    .line 391
    invoke-virtual {v8, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 393
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "no need update the text data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1, v5, v8, v9, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    int-to-long v3, v7

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryIfMmsPartsDownloadComplete(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 399
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->UpdatePayload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v2, v1, v5}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 400
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->updateMMSUpdateingDevice(J)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v8, p3

    .line 401
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->handleOutPutParamSyncFlagSet(Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;JIZZLjava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 367
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_3
    :goto_3
    if-eqz v11, :cond_4

    .line 407
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 408
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method public onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventChangedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    return-void
.end method

.method public onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    return-void
.end method

.method public onNmsEventDeletedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMMSBufferDbAvailable(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;ZZ)V

    return-void
.end method

.method public onUpdateCmsConfig()V
    .locals 0

    .line 871
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->onUpdateCmsConfigInitSyncDataTtl()V

    return-void
.end method

.method public onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;)Z
    .locals 4

    const/4 v0, 0x6

    .line 712
    iput v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceFtUriFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    .line 715
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryAllPartIsUpdated(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    const-string v2, "onUpdateFromDeviceFtUriFetch: All parts downloaded, set state as Download"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 720
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncaction"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "syncdirection"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->updateQueryTable(Landroid/content/ContentValues;JLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    :cond_0
    return v0
.end method

.method public onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;ZLcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;)V

    return-void
.end method

.method public onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 3

    .line 745
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mBufferRowId:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateAppFetchingFailed(IJ)V

    return-void
.end method

.method public queryAllPartIsUpdated(J)Z
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPartRowIdWithoutAppId(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 580
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 584
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 578
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
    if-eqz p0, :cond_1

    .line 584
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSMessagesToUpload()Landroid/database/Cursor;
    .locals 0

    .line 597
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPDUActionStatus(J)I
    .locals 1

    .line 731
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 732
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "syncaction"

    .line 733
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 731
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

    .line 735
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1
.end method

.method public queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryAllMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryOneMmsUndownloadedParts(J)Landroid/database/Cursor;
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryOneMmsUndownloadedParts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryUndownloadedPart(J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryPartType(J)Z
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " queryPartType partId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 568
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "payloadurl"

    .line 569
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 566
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
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 571
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " queryPartType "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public queryPendingFetchForce()I
    .locals 2

    .line 554
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchForce:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 555
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    const/4 v1, 0x4

    .line 554
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncAction(II)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 557
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 554
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

    .line 559
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryPendingUrlFetch()I
    .locals 2

    .line 544
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 545
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v0

    const/4 v1, 0x4

    .line 544
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->queryMessageBySyncAction(II)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 547
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 544
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

    .line 549
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public queryToCloudUnsyncedMms()Landroid/database/Cursor;
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryToCloudUnsyncedMms()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedMms()Landroid/database/Cursor;
    .locals 0

    .line 593
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryToDeviceUnsyncedMms()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public syncReadMmsFromTelephony()V
    .locals 8

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;->queryReadMmsfromTelephony()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 635
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    .line 636
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 634
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 638
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 639
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v1, 0x0

    move v2, v1

    .line 641
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 642
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 643
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "syncdirection"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "syncaction"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "read"

    const/4 v5, 0x1

    .line 645
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 650
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 651
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 652
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 653
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/MmsQueryBuilder;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->mDbTableContractIndex:I

    const-string v7, "_id=? AND read=? AND syncaction<>? AND syncaction<>?"

    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    return-void
.end method

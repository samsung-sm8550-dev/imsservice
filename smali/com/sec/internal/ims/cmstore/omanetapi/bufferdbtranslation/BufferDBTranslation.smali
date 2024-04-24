.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
.source "BufferDBTranslation.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 54
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private encodeResURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":+"

    .line 939
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 v1, p1, 0x2

    const-string v2, "%3a%2b"

    .line 941
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    const-string v3, "%3a"

    .line 945
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoded startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endIndex: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newResUrl: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 949
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public getAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 497
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 501
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 503
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "payloadpartFull"

    .line 505
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 504
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "payloadurl"

    .line 507
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 506
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "payloadpartThumb"

    .line 509
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 508
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    const-string v2, "payloadpartThumb_filename"

    .line 511
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 510
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mFTThumbnailFileName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 501
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
    const-string v0, ""

    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_1

    .line 514
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_1
    iget-object p0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 516
    iput-boolean p0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    .line 519
    :cond_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x3

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 150
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 152
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 154
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    .line 156
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_a

    .line 164
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "res_url"

    .line 166
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 165
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "syncaction"

    .line 168
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 167
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 169
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resUrl : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 171
    iget p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "\\Seen"

    if-ne p1, v2, :cond_8

    :try_start_1
    const-string p1, "flagRead"

    .line 173
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 172
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "\\Flagged"

    move-object v5, p1

    goto :goto_1

    .line 182
    :cond_5
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p1

    if-ne v5, p1, :cond_6

    const-string v5, "\\Deleted"

    goto :goto_1

    .line 184
    :cond_6
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Cancel:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p1

    if-ne v5, p1, :cond_7

    const-string v5, "\\Canceled"

    goto :goto_1

    :cond_7
    move-object v5, v1

    .line 187
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlagNames: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_9

    move-object v4, v1

    :cond_9
    if-nez p2, :cond_b

    const/16 p0, 0x2f

    .line 194
    invoke-virtual {v4, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 163
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_a
    move-object v4, v1

    move-object v5, v4

    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz p2, :cond_d

    .line 200
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 202
    :cond_d
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getGroupSMSForSteadyUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImdnObjectPair(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 825
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 829
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-string v2, "imdn-message"

    .line 831
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 836
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSNotificationDB(J)Landroid/database/Cursor;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 838
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "imdn_id"

    .line 840
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 839
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 841
    iput-object v3, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 843
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionOriginalMessageID([Ljava/lang/String;)V

    const-string/jumbo v4, "sender_uri"

    .line 848
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 847
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 849
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 850
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImdnObjectPairFromCursor :: ImdnID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " parsed opUri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 850
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 836
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
    move-object v3, v2

    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_1

    .line 854
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 856
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 858
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "notification_status"

    .line 861
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 860
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 863
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v5, :cond_2

    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "delivery"

    aput-object v8, v6, v3

    .line 864
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionType([Ljava/lang/String;)V

    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "delivered"

    aput-object v8, v6, v3

    .line 867
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionStatus([Ljava/lang/String;)V

    goto :goto_2

    .line 870
    :cond_2
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v6

    if-ne v6, v5, :cond_3

    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "display"

    aput-object v8, v6, v3

    .line 871
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionType([Ljava/lang/String;)V

    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "displayed"

    aput-object v8, v6, v3

    .line 874
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionStatus([Ljava/lang/String;)V

    :goto_2
    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v7

    .line 881
    :goto_3
    new-instance v8, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v8}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v8, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "\\Flagged"

    aput-object v10, v9, v3

    const-string v10, "\\Seen"

    aput-object v10, v9, v7

    .line 883
    iput-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    const-string v8, "direction"

    .line 888
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 887
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    .line 889
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getImdnObjectPairFromCursor :: direction : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " notificationStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    int-to-long v10, p0

    cmp-long p0, v8, v10

    if-nez p0, :cond_4

    move v3, v7

    goto :goto_5

    .line 893
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    int-to-long v10, p0

    cmp-long p0, v8, v10

    if-nez p0, :cond_5

    new-array p0, v7, [Ljava/lang/String;

    const-string v5, "IN"

    aput-object v5, p0, v3

    .line 894
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 898
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDispositionOriginalTo([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_5
    move v3, v6

    goto :goto_5

    :catchall_2
    move-exception p0

    .line 856
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 904
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 907
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    if-eqz v3, :cond_8

    return-object v2

    .line 912
    :cond_8
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getImdnResUrl(J)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInitialSyncStatusByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInitialSyncStatusByLine: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " column:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "multilinestatus"

    const-string v3, "/"

    if-ne v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/slot2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 112
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "messagetype"

    .line 115
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 116
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "initsync_status"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveInitialSyncStatus(I)V

    .line 123
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-object p0
.end method

.method public getLocalFileData(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/file/FileData;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getMmsObjectFromPduAndAddress(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v0

    .line 806
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 807
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    .line 806
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    .line 808
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getObjectIdFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getObjectIdPartIdFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 534
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    const/16 v3, 0x2f

    const-string v4, ""

    if-eqz p1, :cond_2

    .line 536
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "res_url"

    .line 538
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 537
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 539
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resUrl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 534
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    :cond_2
    :goto_1
    move-object v5, v4

    :goto_2
    if-eqz p1, :cond_3

    .line 549
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 553
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_4
    const-string v1, "payloadurl"

    .line 557
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 556
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v4

    goto :goto_3

    .line 561
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    :goto_3
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "payLoadurl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "partId: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 567
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_4

    goto :goto_6

    :catchall_2
    move-exception p0

    .line 551
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_7
    :goto_6
    if-eqz p1, :cond_8

    .line 571
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_8
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getObjectIdPartIdFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 450
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_2

    .line 452
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "res_url"

    .line 454
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 453
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x2f

    if-nez v2, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "payloadpartFull"

    .line 463
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 462
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 465
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 466
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    .line 450
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 472
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_3
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getPayloadPartUrlFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 582
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 584
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "payloadurl"

    .line 587
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 586
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 588
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payLoadurl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 592
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 582
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 596
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public getPayloadPartUrlFromMmsPartUsingPartBufferId(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 3

    .line 617
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 619
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPartBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 621
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "payloadurl"

    .line 623
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 622
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payLoadurl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 619
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
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 627
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getPayloadPartandAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 478
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 482
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 484
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "payloadpartFull"

    .line 486
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 485
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "payloadurl"

    .line 488
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 487
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 482
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
    const-string p1, ""

    move-object v0, p1

    :goto_1
    if-eqz p0, :cond_1

    .line 491
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getPayloadUrlfromMmsPduBufferId(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 3

    .line 602
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 604
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 606
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ct_l"

    .line 607
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Payload URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 604
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
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 611
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getRCSFtPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRCSObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Ljava/util/List;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget p2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 665
    iget-wide p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 667
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "message_isslm"

    .line 669
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 668
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const-string v0, "is_filetransfer"

    .line 671
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 670
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 672
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCSObjectPairFromCursor :: isSlm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isFt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v1, :cond_0

    .line 675
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getSlmObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_2

    :cond_0
    if-ne v0, v1, :cond_1

    .line 678
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFtObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    .line 681
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 665
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 685
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public getRcsSessionFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsSessionFromCursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 695
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryGroupSessionDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 697
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getConferenceInfoObjectPair(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 695
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

    .line 701
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2
.end method

.method public getResourceUrlFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getSearchCursorByLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Ljava/lang/String;
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSearchCursorByLine: line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "multilinestatus"

    const-string v3, "/"

    if-ne v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/slot2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->CONTENT_URI_BUFFERDB:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 79
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "initsync_cusor"

    .line 82
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "messagetype"

    .line 84
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 83
    invoke-static {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveObjectSearchCursor(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 92
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 77
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 95
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method public getSmsObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 235
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 237
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_1

    .line 239
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "res_url"

    .line 241
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 240
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    const/16 p1, 0x2f

    .line 247
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 237
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 250
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getSmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 715
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 717
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 718
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 720
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string/jumbo v1, "read"

    .line 723
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 722
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "type"

    .line 725
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 724
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "\\Flagged"

    const-wide/16 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_1

    cmp-long v1, v2, v5

    if-nez v1, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    new-array v9, v8, [Ljava/lang/String;

    aput-object v4, v9, v7

    iput-object v9, v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 728
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    aput-object v4, v9, v7

    const-string v4, "\\Seen"

    aput-object v4, v9, v8

    iput-object v9, v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 738
    :goto_1
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 740
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    const-string v10, "date"

    .line 741
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 740
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 742
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    const-string v4, "address"

    .line 747
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 746
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v9, 0x1

    cmp-long v9, v2, v9

    if-nez v9, :cond_2

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IN"

    aput-object v3, v2, v7

    .line 750
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    .line 754
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 753
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    .line 757
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 759
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    .line 757
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "OUT"

    aput-object v3, v2, v7

    .line 762
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    .line 766
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 765
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    new-array v2, v8, [Ljava/lang/String;

    .line 769
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 771
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    .line 769
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_3
    :goto_2
    new-array p0, v8, [Ljava/lang/String;

    const-string v2, "no"

    aput-object v2, p0, v7

    .line 775
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    new-array p0, v8, [Ljava/lang/String;

    const-string v2, "pager-message"

    aput-object v2, p0, v7

    .line 779
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 783
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 784
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 786
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v1, "form-data;name=\"attachments\";filename=\"sms.txt\""

    const-string/jumbo v2, "text/plain"

    const-string v3, "body"

    .line 789
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 788
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 715
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz p1, :cond_5

    .line 795
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1
.end method

.method public getSummaryObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 211
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySummaryDB(J)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_1

    .line 215
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "res_url"

    .line 217
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 216
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 226
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    const/16 p1, 0x2f

    .line 223
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 213
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 226
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getThumbnailPart(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVVMGreetingObjectPairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getVvmObjectFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v0

    .line 438
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getVvmGreetingBodyFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    .line 439
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getVVMGreetingTypeFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    .locals 3

    .line 634
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 636
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "greetingtype"

    .line 639
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 638
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 640
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVVMGreetingTypeFromBufDb : type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->valueOf(I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 634
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
    if-eqz p1, :cond_1

    .line 644
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 645
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    return-object p0
.end method

.method public getVVMGreetingpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 298
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 303
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "payloadurl"

    .line 305
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 304
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 301
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
    const/4 p1, 0x0

    :cond_1
    if-eqz p0, :cond_2

    .line 312
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getVVMObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 257
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_1

    .line 261
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "res_url"

    .line 263
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 262
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 272
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    const/16 p1, 0x2f

    .line 269
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 259
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    if-eqz p0, :cond_2

    .line 272
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getVVMServiceProfileFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    if-nez p2, :cond_0

    goto/16 :goto_9

    .line 323
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 324
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    const/16 p1, 0x11

    const-string/jumbo v4, "v2t_language"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, p1, :cond_12

    const/16 p1, 0x13

    if-eq v1, p1, :cond_10

    const/16 p1, 0x14

    if-eq v1, p1, :cond_1

    goto/16 :goto_9

    .line 349
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmProfileBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 351
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "profile_changetype"

    .line 353
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 352
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 354
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 355
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_5

    const-string v1, "email_addr1"

    .line 357
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 356
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "email_addr2"

    .line 359
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 358
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 362
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 364
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 366
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    .line 369
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setEmailAddress([Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_5
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v7, "true"

    if-ne v3, v1, :cond_7

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    aput-object v7, v0, v5

    .line 372
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setVVMOn([Ljava/lang/String;)V

    :cond_6
    :goto_1
    move-object v0, p0

    goto/16 :goto_2

    .line 376
    :cond_7
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "false"

    if-ne v3, v1, :cond_8

    :try_start_2
    new-array v0, v6, [Ljava/lang/String;

    aput-object v8, v0, v5

    .line 377
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setVVMOn([Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_9

    goto :goto_1

    .line 383
    :cond_9
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_a

    new-array v0, v6, [Ljava/lang/String;

    aput-object v8, v0, v5

    .line 384
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setNUT([Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :cond_a
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_b

    new-array v0, v6, [Ljava/lang/String;

    aput-object v7, v0, v5

    .line 389
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setNUT([Ljava/lang/String;)V

    goto :goto_1

    .line 393
    :cond_b
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_c

    .line 395
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 394
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setV2tLanguage([Ljava/lang/String;)V

    goto :goto_1

    .line 398
    :cond_c
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_SMS:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_d

    const-string/jumbo v0, "v2t_sms"

    .line 400
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 399
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setV2tSMS([Ljava/lang/String;)V

    goto :goto_1

    .line 403
    :cond_d
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2T_EMAIL:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v3

    if-ne v3, v1, :cond_e

    const-string/jumbo v0, "v2t_email"

    .line 405
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 404
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setV2tEmail([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    :cond_e
    :goto_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    iput-object p0, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 349
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_f
    :goto_4
    if-eqz p1, :cond_14

    .line 412
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 327
    :cond_10
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmPinBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 329
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "oldpwd"

    .line 331
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 330
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "newpwd"

    .line 334
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 333
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 337
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOldPwd([Ljava/lang/String;)V

    .line 340
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setPwd([Ljava/lang/String;)V

    .line 343
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    iput-object p0, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    .line 327
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_11
    :goto_6
    if-eqz p1, :cond_14

    .line 346
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 415
    :cond_12
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 416
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v0, "res_url"

    .line 417
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 419
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 422
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setV2tLanguage([Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/String;

    .line 423
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->encodeResURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setV2tResourceURL([Ljava/lang/String;)V

    .line 424
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ADHOC_V2T:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 425
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v0, p0

    goto :goto_8

    :catchall_4
    move-exception p0

    .line 415
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p0

    :cond_13
    :goto_8
    if-eqz p1, :cond_14

    .line 427
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_14
    :goto_9
    return-object v0
.end method

.method public getVVMpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;
    .locals 2

    .line 278
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 281
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmDataBufferDB(J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 283
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "payloadurl"

    .line 285
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 284
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 281
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
    const/4 p1, 0x0

    :cond_1
    if-eqz p0, :cond_2

    .line 292
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public isMessageStatusCancelled(J)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public needToSkipDownloadLargeFileAndUpdateDB(JIILjava/lang/String;Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public resetDateFormat()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetDateFormat sFormatOfName is null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

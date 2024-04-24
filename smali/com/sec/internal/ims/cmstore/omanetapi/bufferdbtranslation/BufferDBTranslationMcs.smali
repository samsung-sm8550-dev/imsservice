.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;
.source "BufferDBTranslationMcs.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 55
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private getAllToAddress(JZ)[Ljava/lang/String;
    .locals 6

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryGroupSMS(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 478
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_1

    .line 479
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 480
    new-array v0, p2, [Ljava/lang/String;

    .line 482
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllToAddress added address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 483
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "address"

    .line 484
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "KR"

    if-eqz p3, :cond_0

    add-int/lit8 v3, p2, 0x1

    .line 486
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    :goto_1
    move p2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p2, 0x1

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 477
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz p1, :cond_3

    .line 492
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private getTelAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 792
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSParticipantDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 794
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "uri"

    .line 797
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 796
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 801
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 803
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 792
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

    .line 806
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 807
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAddrFromParticipantTable : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private updatePayloadInfo(Lcom/sec/internal/omanetapi/nms/data/Object;Ljava/util/List;ILcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;I",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            ")V"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePayloadInfo "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "empty response data"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 382
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 385
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 386
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;

    :cond_2
    if-lez p3, :cond_3

    const-string/jumbo p2, "render"

    goto :goto_1

    :cond_3
    const-string p2, "attachment"

    :goto_1
    if-eqz v1, :cond_4

    .line 391
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "updatePayloadInfo fullpart updation"

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    invoke-direct {v3}, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;-><init>()V

    .line 394
    iget-object v5, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->contentType:Ljava/lang/String;

    iput-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    .line 395
    iget-object v5, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->fileName:Ljava/lang/String;

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;filename="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentDisposition:Ljava/lang/String;

    .line 397
    iput-object p2, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->disposition:Ljava/lang/String;

    .line 398
    iput p3, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->playingLength:I

    .line 399
    iget p3, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->size:I

    int-to-long v5, p3

    iput-wide v5, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->size:J

    .line 401
    :try_start_0
    iget-object p3, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->href:Ljava/net/URL;

    iput-object p3, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    .line 402
    new-instance p3, Ljava/net/URI;

    const-string v5, "cid:thumbnail_1"

    invoke-direct {p3, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object p3, v3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->fileIcon:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 404
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File URL or URI exception, msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object p3, v1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->contentType:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 411
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p4, "updatePayloadInfo thumbPart updation"

    invoke-static {p3, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    invoke-direct {p3}, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;-><init>()V

    .line 414
    iget-object p4, v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->contentType:Ljava/lang/String;

    iput-object p4, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    const-string p4, "icon"

    .line 415
    iput-object p4, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentDisposition:Ljava/lang/String;

    .line 416
    iput-object p2, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->disposition:Ljava/lang/String;

    const-string/jumbo p2, "thumbnail_1"

    .line 417
    iput-object p2, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentId:Ljava/lang/String;

    .line 418
    iget p2, v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->size:I

    int-to-long v5, p2

    iput-wide v5, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->size:J

    .line 420
    :try_start_1
    iget-object p2, v2, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->href:Ljava/net/URL;

    iput-object p2, p3, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbs URL or URI exception, msg: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_3
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    iput-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 428
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v4, p0, :cond_6

    .line 429
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    aput-object p2, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public getGroupSMSForSteadyUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 6
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

    .line 935
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 936
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 937
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    const-string v2, "group_id"

    .line 940
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-string v4, "hidden"

    .line 942
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 944
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSmsObjectPairFromCursor hidden msg - shouldn\'t have been added for upload"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 947
    :cond_0
    :try_start_1
    invoke-direct {p0, v2, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getAllToAddress(JZ)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 951
    :goto_0
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 953
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    const-string p0, "body"

    .line 955
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 956
    invoke-virtual {v3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 959
    iput-object p0, v1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 960
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 935
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

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 962
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method public getImdnResUrl(J)Ljava/lang/String;
    .locals 2

    .line 904
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 905
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p2, "res_url"

    .line 907
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 906
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 908
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImdnResUrl resUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 910
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/imdns"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p0

    .line 904
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
    if-eqz p1, :cond_2

    .line 914
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalFileData(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/file/FileData;
    .locals 8

    .line 102
    new-instance v0, Lcom/sec/internal/omanetapi/file/FileData;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/file/FileData;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getLocalFileData  "

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 105
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 107
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "imdn_message_id"

    .line 109
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rowId received for imdn id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 115
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "row id : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " for imdn id:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "content://im/ft_original/"

    .line 117
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "file_name"

    .line 120
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "form-data; name=\"file-part\"; filename=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content_type"

    .line 124
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "file_path"

    .line 127
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 126
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    :cond_1
    iput-object v2, v0, Lcom/sec/internal/omanetapi/file/FileData;->fileName:Ljava/lang/String;

    .line 130
    iput-object p0, v0, Lcom/sec/internal/omanetapi/file/FileData;->filePath:Ljava/lang/String;

    .line 131
    iput-object v3, v0, Lcom/sec/internal/omanetapi/file/FileData;->contentType:Ljava/lang/String;

    .line 132
    iput-object v1, v0, Lcom/sec/internal/omanetapi/file/FileData;->contentDisposition:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 105
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 136
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v3
.end method

.method protected getLocalFilePathForFtthumb(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "imdn_message_id"

    .line 849
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 848
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 852
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLocalFilePathForFtthumb Invalid rowId received for imdn id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 855
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "row id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for imdn id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "content://im/ft_thumbnail/"

    .line 857
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 858
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 860
    invoke-static {p2}, Lcom/sec/internal/helper/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 862
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p1}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMcsThumbBody(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getLocalFilePathForFtthumb(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p3, "thumbnail_path"

    .line 68
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 70
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 71
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMcsThumbBody filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " localThumbPath: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " thumbfile:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 77
    invoke-static {p3}, Lcom/sec/internal/helper/FileUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, "jpg"

    .line 79
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 81
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "form-data; name=\"file\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-static {p1}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "image/jpeg"

    .line 87
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 88
    array-length v2, v1

    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 89
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v2, p2, p1, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " ThumbnailFile payload size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    const-string p0, "content:"

    .line 94
    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 95
    invoke-static {p3}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    :cond_5
    return-object v0
.end method

.method protected getMmsObjectFromPduAndAddress(Landroid/database/Cursor;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 12

    .line 596
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    if-eqz p1, :cond_f

    .line 600
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 601
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string/jumbo v1, "read"

    .line 603
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 602
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "msg_box"

    .line 605
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 604
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 608
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v7, "\\Seen"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "tr_id"

    .line 614
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 613
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 617
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTrIdCorrelationId()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v1, :cond_2

    .line 618
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    .line 619
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "m_id"

    .line 622
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 621
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 625
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 627
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    const-string v9, "date"

    .line 628
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 627
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 629
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    const-string/jumbo v7, "sub"

    .line 631
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 632
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 633
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 634
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSubject([Ljava/lang/String;)V

    :cond_3
    const-string v7, "_bufferdbid"

    .line 637
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 638
    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    move-result-object v9

    const-wide/16 v10, 0x1

    cmp-long v10, v2, v10

    const-string v11, "KR"

    if-nez v10, :cond_5

    const-string v2, "IN"

    .line 641
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 642
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "unknown_address"

    .line 643
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    goto :goto_1

    .line 645
    :cond_4
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 648
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getTelE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    const-string v2, "OUT"

    .line 650
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 652
    iget-object v2, v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_7

    .line 653
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 654
    iget-object v3, v9, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 655
    invoke-virtual {p0, v4, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getTelE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 657
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 659
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getTelE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_8
    :goto_3
    const-string v2, "multimedia-message"

    .line 661
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    const-string/jumbo v2, "text_only"

    .line 663
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 664
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 665
    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 667
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    const-string v4, "ct"

    .line 669
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text/plain"

    .line 670
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "text"

    .line 671
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_9

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 665
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    .line 676
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 679
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    :cond_d
    const-string/jumbo v2, "safe_message"

    .line 682
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v6, :cond_e

    const-string/jumbo p1, "true"

    .line 684
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSafetyMessage([Ljava/lang/String;)V

    .line 687
    :cond_e
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p1

    .line 688
    iput-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 692
    :cond_f
    iget-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 693
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getMmsObjectFromPduAndAddress: correlation id is empty!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_10
    return-object v0
.end method

.method public getMmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
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

    .line 708
    iget-wide v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v0

    .line 709
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getMmsObjectFromPduAndAddress(Landroid/database/Cursor;)Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v1

    const-string/jumbo v2, "text_only"

    .line 711
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    .line 713
    iget-wide v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryPartsBufferDBUsingPduBufferId(J)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 716
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 708
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
.end method

.method protected getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 9

    const-string v0, "."

    .line 723
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    .line 727
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_0
    const-string v3, "_id"

    .line 732
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 731
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ct"

    .line 734
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 733
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v5, "cl"

    .line 740
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 739
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 741
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "name"

    .line 742
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 743
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 744
    invoke-static {v4}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 747
    :cond_2
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v5, v6

    .line 749
    :cond_3
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 750
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/helper/translate/FileExtensionTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 753
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cid"

    .line 754
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 755
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 756
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v6, v7

    :cond_5
    const-string v7, "application/smil"

    .line 760
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "text/plain"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 764
    :cond_6
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getDataFromPartFile(J)[B

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 768
    :cond_7
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v5, v4, v3, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    const-string v3, "binary"

    .line 769
    invoke-virtual {v7, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->setContentTransferEncoding(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :goto_1
    const-string/jumbo v3, "text"

    .line 761
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 762
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v5, v4, v3, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :goto_2
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_9
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 776
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_a

    .line 785
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 780
    :cond_a
    :try_start_1
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v0, "form-data;name=\"attachments\""

    const-string v2, "multipart/mixed"

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 785
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 726
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_c
    :goto_5
    return-object v2
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/util/List;)Landroid/util/Pair;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string/jumbo v3, "status"

    const-string/jumbo v4, "timestamp"

    .line 177
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getObjectPairFromCursor type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-nez v2, :cond_0

    return-object v5

    .line 183
    :cond_0
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 186
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v7, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    const-wide/16 v8, 0x0

    .line 194
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1c

    if-nez v14, :cond_1

    .line 298
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    move-object v10, v5

    move-object v11, v10

    move-object v13, v11

    move-wide/from16 v16, v8

    move-wide/from16 v22, v16

    const-wide/16 v8, -0x1

    :goto_0
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1c

    :cond_1
    :try_start_2
    const-string v14, "delivered_timestamp"

    .line 197
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1c

    cmp-long v16, v14, v8

    if-nez v16, :cond_2

    :try_start_3
    const-string/jumbo v12, "sent_timestamp"

    .line 199
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v10, v5

    move-object v11, v10

    move-object v13, v11

    move-wide/from16 v16, v8

    move-wide/from16 v22, v14

    const-wide/16 v8, -0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v5, v0

    goto/16 :goto_1a

    :cond_2
    :goto_1
    :try_start_4
    const-string v12, "chat_id"

    .line 202
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 201
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "res_url"

    .line 205
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 204
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1b

    :try_start_5
    const-string v8, "direction"

    .line 207
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 206
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1a

    int-to-long v8, v8

    :try_start_6
    const-string v5, "lastmodseq"

    .line 209
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 208
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_19

    move-object/from16 v19, v12

    int-to-long v11, v5

    .line 211
    :try_start_7
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v5, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 212
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v10, "ft_status"

    .line 213
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_18

    move-wide/from16 v16, v11

    .line 215
    :try_start_8
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_17

    move-object/from16 v20, v13

    :try_start_9
    const-string v13, " status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " direction: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " readFt: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_16

    const-string v13, "\\Seen"

    const-string v21, "\\Canceled"

    if-ne v5, v12, :cond_3

    :try_start_a
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-wide/from16 v22, v14

    int-to-long v14, v12

    cmp-long v12, v8, v14

    if-nez v12, :cond_4

    .line 217
    :try_start_b
    iget-object v5, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v11, 0x0

    :try_start_c
    aput-object v21, v10, v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v11, 0x1

    :try_start_d
    aput-object v13, v10, v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    iput-object v10, v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v5, v0

    move v12, v11

    :goto_2
    move-object/from16 v13, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v5, v0

    move v14, v11

    :goto_3
    move-object/from16 v13, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_1a

    :catchall_3
    move-exception v0

    move-wide/from16 v22, v14

    :goto_5
    move-object v5, v0

    move-object/from16 v13, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    const/4 v12, 0x1

    :goto_7
    const/4 v14, 0x0

    goto/16 :goto_1a

    :cond_3
    move-wide/from16 v22, v14

    .line 218
    :cond_4
    :try_start_f
    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_15

    if-eq v5, v11, :cond_7

    :try_start_10
    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v11

    if-ne v5, v11, :cond_5

    goto :goto_8

    .line 220
    :cond_5
    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v12

    if-eq v5, v12, :cond_6

    .line 221
    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v5

    if-eq v10, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 222
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-nez v5, :cond_8

    .line 223
    :cond_6
    iget-object v5, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const/4 v10, 0x1

    :try_start_11
    new-array v11, v10, [Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    const/4 v10, 0x0

    :try_start_12
    aput-object v13, v11, v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    iput-object v11, v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v5, v0

    move v14, v10

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v5, v0

    move v12, v10

    goto :goto_2

    :catchall_6
    move-exception v0

    goto :goto_5

    .line 219
    :cond_7
    :goto_8
    :try_start_14
    iget-object v5, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15

    const/4 v10, 0x1

    :try_start_15
    new-array v11, v10, [Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    const/4 v10, 0x0

    :try_start_16
    aput-object v21, v11, v10
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_13

    :try_start_17
    iput-object v11, v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 226
    :cond_8
    :goto_9
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v10, Ljava/util/Date;

    const-string v11, "inserted_timestamp"

    .line 227
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 226
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 228
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 229
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getObjectPairFromCursor :: direction : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " messagetype : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " date : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "content_type"

    .line 231
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, v19

    .line 232
    invoke-direct {v1, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getTelAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_15

    .line 233
    :try_start_18
    invoke-virtual {v1, v7, v11, v0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Z

    .line 234
    invoke-virtual {v1, v7, v10, v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->setInformationFromSession(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;J)Z

    move-result v10

    .line 236
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v12
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_12

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-nez v12, :cond_a

    :try_start_19
    const-string/jumbo v10, "remote_uri"

    .line 238
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 237
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_9

    .line 239
    sget-object v12, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    if-ne v0, v12, :cond_9

    .line 298
    :try_start_1a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v0

    move-object/from16 v13, v20

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 242
    :cond_9
    :try_start_1b
    invoke-virtual {v1, v7, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->setTransToFrom(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v5, v0

    move-object/from16 v13, v20

    const/4 v10, 0x0

    goto/16 :goto_6

    .line 243
    :cond_a
    :try_start_1c
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    int-to-long v12, v12

    cmp-long v12, v8, v12

    if-nez v12, :cond_14

    const/4 v12, 0x1

    :try_start_1d
    new-array v13, v12, [Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    :try_start_1e
    const-string v12, "Out"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_12

    const/4 v14, 0x0

    :try_start_1f
    aput-object v12, v13, v14
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    .line 244
    :try_start_20
    invoke-virtual {v7, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    if-nez v10, :cond_b

    .line 246
    :try_start_21
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :cond_b
    const/4 v10, 0x1

    :try_start_22
    new-array v12, v10, [Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 248
    :try_start_23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "tel:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v13}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v13

    const-string v14, "KR"

    invoke-virtual {v1, v13, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    const/4 v13, 0x0

    :try_start_24
    aput-object v10, v12, v13
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    :try_start_25
    invoke-virtual {v7, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :goto_a
    const-string/jumbo v10, "reference_type"

    .line 252
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 253
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    if-nez v12, :cond_c

    :try_start_26
    const-string v12, "0"

    invoke-static {v10, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 254
    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;-><init>()V

    .line 255
    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    const-string/jumbo v14, "reference_id"

    .line 256
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceId:Ljava/lang/String;

    .line 257
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v12, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceType:I

    const-string/jumbo v10, "reference_value"

    .line 258
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v12, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceValue:Ljava/lang/String;

    .line 260
    invoke-virtual {v13, v12}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 261
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setExtendedRCS([Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :cond_c
    :try_start_27
    const-string/jumbo v10, "suggestion"

    .line 263
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 264
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    if-nez v12, :cond_d

    .line 265
    :try_start_28
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setChipList([Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    :cond_d
    :try_start_29
    const-string v10, "maap_traffic_type"

    .line 267
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 268
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    if-nez v12, :cond_e

    .line 269
    :try_start_2a
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTrafficType([Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    :cond_e
    :try_start_2b
    const-string v10, "imdn_message_id"

    .line 272
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 271
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    .line 274
    :try_start_2c
    iput-object v10, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 276
    sget-object v12, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_d

    if-ne v0, v12, :cond_10

    :try_start_2d
    const-string v0, "playing_length"

    .line 277
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move-object/from16 v5, p3

    .line 278
    invoke-direct {v1, v6, v5, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->updatePayloadInfo(Lcom/sec/internal/omanetapi/nms/data/Object;Ljava/util/List;ILcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_8

    :cond_f
    :goto_b
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_d

    :catchall_8
    move-exception v0

    move-object v5, v0

    move-object/from16 v13, v20

    goto/16 :goto_6

    :cond_10
    :try_start_2e
    const-string v0, "body"

    .line 280
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->isLocationPushContentType(Ljava/lang/String;)Z

    move-result v12
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_d

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    :try_start_2f
    new-array v5, v12, [Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_a

    :try_start_30
    const-string v12, "application/vnd.gsma.rcspushlocation+xml"
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_8

    const/4 v13, 0x0

    :try_start_31
    aput-object v12, v5, v13
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_9

    .line 283
    :try_start_32
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 284
    new-instance v5, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 287
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGeoJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageBody([Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object v5, v0

    move v14, v13

    move-object/from16 v13, v20

    goto/16 :goto_4

    :catchall_a
    move-exception v0

    move-object v5, v0

    move-object/from16 v13, v20

    goto/16 :goto_7

    .line 290
    :cond_11
    :try_start_33
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotMessageContentType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_13

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotResponseMessageContentType(Ljava/lang/String;)Z

    move-result v12
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_d

    if-eqz v12, :cond_12

    goto :goto_c

    :cond_12
    const/4 v12, 0x1

    :try_start_34
    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v13, "text/plain"
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_b

    const/4 v14, 0x0

    :try_start_35
    aput-object v13, v5, v14

    .line 294
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 295
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    goto :goto_d

    :catchall_b
    move-exception v0

    goto :goto_e

    :cond_13
    :goto_c
    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 291
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 292
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageBody([Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_c

    .line 298
    :goto_d
    :try_start_36
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_2

    move-wide/from16 v12, v16

    move-object/from16 v0, v20

    goto/16 :goto_1d

    :catch_2
    move-exception v0

    move-object/from16 v13, v20

    goto/16 :goto_1c

    :catchall_c
    move-exception v0

    goto :goto_f

    :catchall_d
    move-exception v0

    const/4 v12, 0x1

    :goto_e
    const/4 v14, 0x0

    :goto_f
    move-object v5, v0

    move-object/from16 v13, v20

    goto/16 :goto_1a

    :catchall_e
    move-exception v0

    move v14, v13

    goto :goto_10

    :catchall_f
    move-exception v0

    move v12, v10

    goto :goto_11

    :catchall_10
    move-exception v0

    :goto_10
    const/4 v12, 0x1

    goto :goto_12

    :catchall_11
    move-exception v0

    goto :goto_11

    :cond_14
    const/4 v12, 0x1

    const/4 v14, 0x0

    :try_start_37
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_3

    const/4 v1, 0x0

    return-object v1

    :catch_3
    move-exception v0

    move-object/from16 v13, v20

    const/4 v10, 0x0

    goto/16 :goto_1c

    :catchall_12
    move-exception v0

    const/4 v12, 0x1

    :goto_11
    const/4 v14, 0x0

    :goto_12
    move-object v5, v0

    move-object/from16 v13, v20

    const/4 v10, 0x0

    goto/16 :goto_1a

    :catchall_13
    move-exception v0

    move v14, v10

    const/4 v12, 0x1

    goto :goto_15

    :catchall_14
    move-exception v0

    move v12, v10

    goto :goto_14

    :catchall_15
    move-exception v0

    goto :goto_13

    :catchall_16
    move-exception v0

    move-wide/from16 v22, v14

    :goto_13
    const/4 v12, 0x1

    :goto_14
    const/4 v14, 0x0

    :goto_15
    move-object v5, v0

    move-object/from16 v13, v20

    goto :goto_17

    :catchall_17
    move-exception v0

    goto :goto_16

    :catchall_18
    move-exception v0

    move-wide/from16 v16, v11

    :goto_16
    move-object/from16 v20, v13

    move-wide/from16 v22, v14

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v5, v0

    :goto_17
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1a

    :catchall_19
    move-exception v0

    move-object/from16 v20, v13

    move-wide/from16 v22, v14

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v5, v0

    goto :goto_18

    :catchall_1a
    move-exception v0

    move-object/from16 v20, v13

    move-wide/from16 v22, v14

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v5, v0

    const-wide/16 v8, -0x1

    :goto_18
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_19

    :catchall_1b
    move-exception v0

    move-wide/from16 v22, v14

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v5, v0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_19
    const-wide/16 v16, 0x0

    goto :goto_1a

    :catchall_1c
    move-exception v0

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object v5, v0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v22, 0x0

    .line 193
    :goto_1a
    :try_start_38
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    goto :goto_1b

    :catchall_1d
    move-exception v0

    move-object v2, v0

    :try_start_39
    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_4

    :catch_4
    move-exception v0

    .line 299
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v13

    move-wide/from16 v12, v16

    :goto_1d
    if-eqz v11, :cond_1f

    .line 303
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    int-to-long v14, v2

    cmp-long v2, v8, v14

    if-nez v2, :cond_1f

    .line 304
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/ImdnList;-><init>()V

    .line 306
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v5

    .line 307
    new-array v8, v5, [Ljava/lang/String;

    invoke-interface {v11, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 308
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v5, :cond_1b

    .line 311
    aget-object v14, v8, v11

    invoke-virtual {v1, v10, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSNotificationDBUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_18

    .line 312
    :try_start_3a
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 313
    new-instance v15, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    invoke-direct {v15}, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;-><init>()V

    move/from16 p1, v5

    .line 314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v10

    .line 316
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 315
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-wide/16 v17, 0x0

    cmp-long v10, v20, v17

    if-eqz v10, :cond_16

    .line 319
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 318
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v17, v3

    .line 320
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    move-object/from16 v19, v7

    .line 321
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 320
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 322
    new-instance v7, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    invoke-direct {v7}, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;-><init>()V

    .line 323
    sget-object v20, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-object/from16 v21, v4

    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1e

    move-object/from16 v20, v6

    const-string v6, "delivered"

    if-ne v4, v10, :cond_15

    .line 324
    :try_start_3b
    iput-object v3, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    .line 325
    iput-object v6, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    .line 326
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    const/4 v3, 0x1

    goto :goto_20

    .line 328
    :cond_15
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    if-ne v4, v10, :cond_17

    .line 329
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    .line 330
    iput-object v6, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    .line 331
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v4, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    invoke-direct {v4}, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;-><init>()V

    .line 334
    iput-object v3, v4, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    const-string v3, "displayed"

    .line 335
    iput-object v3, v4, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    .line 336
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_16
    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    :cond_17
    const/4 v3, 0x0

    :goto_20
    if-lez v3, :cond_19

    .line 341
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    iput-object v3, v15, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    .line 342
    aget-object v3, v8, v11

    iput-object v3, v15, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    .line 343
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    move-object v1, v0

    .line 311
    :try_start_3c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1

    :cond_18
    move-object/from16 v17, v3

    move-object/from16 v21, v4

    move/from16 p1, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v16, v10

    :cond_19
    :goto_22
    if-eqz v14, :cond_1a

    .line 346
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, p1

    move-object/from16 v10, v16

    move-object/from16 v3, v17

    move-object/from16 v7, v19

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    goto/16 :goto_1e

    :cond_1b
    move-object/from16 v20, v6

    move-object/from16 v19, v7

    .line 348
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/imdns"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    iput-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->resourceURL:Ljava/lang/String;

    :cond_1c
    const-wide/16 v3, 0x0

    cmp-long v0, v12, v3

    if-lez v0, :cond_1d

    .line 355
    iput-wide v12, v2, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->lastModSeq:J

    .line 357
    :cond_1d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    iput-object v0, v2, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    move-object/from16 v3, v20

    .line 358
    iput-object v2, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    goto :goto_23

    :cond_1e
    move-object/from16 v3, v20

    .line 360
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getObjectPairFromCursor ImdnObjectList.isEmpty() and not added to object"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_1f
    move-object v3, v6

    move-object/from16 v19, v7

    .line 363
    :goto_23
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 364
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 365
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
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

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRCSObjectPairFromCursor ::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_3

    .line 151
    :cond_0
    iget-wide v3, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 153
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "is_filetransfer"

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRCSObjectPairFromCursor :: isFt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFtObjectPairFromCursor(Landroid/database/Cursor;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p0

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 151
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

    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1
.end method

.method public getSmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 16
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

    move-object/from16 v0, p0

    const-string v1, "KR"

    const-string/jumbo v2, "tel:"

    move-object/from16 v3, p1

    .line 502
    iget-wide v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querySMSBufferDB(J)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 504
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 505
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    const-string v6, "correlation_tag"

    .line 508
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationTag:Ljava/lang/String;

    .line 509
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string/jumbo v6, "read"

    .line 512
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 511
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string/jumbo v7, "type"

    .line 514
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 513
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v6, v12, :cond_0

    cmp-long v6, v7, v9

    if-nez v6, :cond_1

    .line 517
    :cond_0
    iget-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    new-array v13, v12, [Ljava/lang/String;

    const-string v14, "\\Seen"

    aput-object v14, v13, v11

    iput-object v13, v6, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    :cond_1
    const-string v6, "address"

    .line 521
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v13, v12, [Ljava/lang/String;

    .line 522
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "@"

    .line 523
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 524
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v13

    :cond_2
    const-string v14, "group_id"

    .line 527
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_4

    const-string v13, "hidden"

    .line 529
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-ne v13, v12, :cond_3

    .line 531
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSmsObjectPairFromCursor hidden msg - shouldn\'t have been added for upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_3
    int-to-long v13, v14

    .line 534
    :try_start_1
    invoke-direct {v0, v13, v14, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getAllToAddress(JZ)[Ljava/lang/String;

    move-result-object v13

    .line 538
    :cond_4
    new-instance v14, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v14, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 540
    iget-object v15, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    const-string v9, "date"

    .line 541
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 540
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v15, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 542
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    const-wide/16 v9, 0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_6

    new-array v4, v12, [Ljava/lang/String;

    const-string v7, "In"

    aput-object v7, v4, v11

    .line 547
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 550
    array-length v4, v13

    if-ne v4, v12, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v6, "unknown_address"

    aput-object v6, v4, v11

    .line 551
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_5
    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :goto_0
    new-array v4, v12, [Ljava/lang/String;

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 557
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 556
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-wide/16 v9, 0x2

    cmp-long v4, v7, v9

    if-nez v4, :cond_7

    new-array v4, v12, [Ljava/lang/String;

    const-string v6, "Out"

    aput-object v6, v4, v11

    .line 560
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 563
    invoke-virtual {v14, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    new-array v4, v12, [Ljava/lang/String;

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 567
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 565
    invoke-virtual {v14, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_7
    :goto_1
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "pager-message"

    aput-object v1, v0, v11

    .line 571
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    new-array v0, v12, [Ljava/lang/String;

    const-string/jumbo v1, "text/plain"

    aput-object v1, v0, v11

    .line 572
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    const-string v0, "body"

    .line 574
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTextContent(Ljava/lang/String;)V

    const-string/jumbo v0, "safe_message"

    .line 577
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_8

    new-array v0, v12, [Ljava/lang/String;

    const-string/jumbo v1, "true"

    aput-object v1, v0, v11

    .line 579
    invoke-virtual {v14, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSafetyMessage([Ljava/lang/String;)V

    .line 582
    :cond_8
    invoke-virtual {v14}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 583
    iput-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 585
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 502
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_9
    move-object v1, v4

    move-object v4, v1

    :goto_3
    if-eqz v3, :cond_a

    .line 589
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v4
.end method

.method public getThumbnailPart(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    .locals 7

    .line 813
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThumbNailPart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 816
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 818
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getAllParts cursor is null, shouldn\'t occur"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_0
    :try_start_1
    const-string v2, "imdn_message_id"

    .line 823
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 824
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const-string v5, "file_path"

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtFileDataFromTelephony(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 825
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const-string/jumbo v6, "thumbnail_path"

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtFileDataFromTelephony(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 828
    invoke-virtual {p0, v1, v4, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->getMcsThumbBody(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 831
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 832
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v2, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/List;)V

    .line 833
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 834
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 835
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "thumb body is added!!!!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 816
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    if-eqz v1, :cond_3

    .line 839
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v3
.end method

.method public isMessageStatusCancelled(J)Z
    .locals 2

    .line 920
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSMessageDBUsingRowId(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 921
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string/jumbo p2, "status"

    .line 922
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 923
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMessageStatus resUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p0, :cond_0

    .line 928
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 920
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

    .line 928
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public needToSkipDownloadLargeFileAndUpdateDB(JIILjava/lang/String;Z)Z
    .locals 13

    move-object v0, p0

    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryrcsMessageBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 869
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "is_filetransfer"

    .line 870
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 872
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    const-string v3, "needToSkipDownloadLargeFileAndUpdateDB isFt false"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_1
    :try_start_1
    const-string/jumbo v3, "status"

    .line 875
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v5, "file_size"

    .line 876
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v7, "direction"

    .line 877
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 878
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->isPayloadExpired(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "payloadpartThumb"

    .line 880
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 879
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 881
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "needToSkipDownloadLargeFileAndUpdateDB fileSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", isExpired: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isThumbnailNotPresent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", msgStatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_2

    .line 885
    invoke-virtual/range {p0 .. p4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->updateRcsMessageBufferDB(JII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    .line 887
    :cond_2
    :try_start_2
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v8, :cond_3

    .line 898
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :cond_3
    if-eqz p6, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    .line 891
    :cond_4
    :try_start_3
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    if-ne v7, v3, :cond_6

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v3, v5, v6}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isLargeSizeFile(Lcom/sec/internal/ims/cmstore/MessageStoreClient;J)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v9, :cond_5

    .line 893
    invoke-virtual/range {p0 .. p4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->updateRcsMessageBufferDB(JII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 898
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 868
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    :cond_6
    if-eqz v1, :cond_7

    .line 898
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return v2
.end method

.method protected setInformationFromSession(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;J)Z
    .locals 7

    .line 442
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 443
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 445
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "is_group_chat"

    .line 447
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 446
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "conversation_id"

    .line 449
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 448
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 450
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getObjectPairFromCursor :: conversationId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setConversationId([Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string/jumbo v3, "session_uri"

    .line 455
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 454
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslationMcs;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGroupSessionURItoTO :: session_uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    int-to-long v4, p0

    cmp-long p0, p3, v4

    if-nez p0, :cond_1

    .line 459
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    const-string/jumbo p3, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group"

    aput-object p3, p0, v1

    .line 463
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setPAssertedService([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    const-string/jumbo p3, "urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session"

    aput-object p3, p0, v1

    .line 465
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setPAssertedService([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move v1, v0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 443
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    .line 469
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return v1
.end method

.method protected setTransToFrom(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V
    .locals 1

    const-string v0, "In"

    .line 435
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 436
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 437
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    return-void
.end method

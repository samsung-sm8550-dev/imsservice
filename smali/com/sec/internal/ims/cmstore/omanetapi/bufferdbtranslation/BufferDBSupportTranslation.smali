.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;
.source "BufferDBSupportTranslation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MessageStatus;,
        Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field protected final mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

.field protected sFormatOfName:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 72
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    .line 81
    new-instance p1, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    .line 82
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private getAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;
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

    .line 568
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 569
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSParticipantDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 571
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "uri"

    .line 575
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 574
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 579
    :cond_1
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 569
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

    .line 585
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

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

.method private getFileContentInBytes(Landroid/net/Uri;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 980
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_2

    .line 983
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI open failed!!!! Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 1003
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 986
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileUri  ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 988
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    if-ltz v4, :cond_3

    .line 991
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 992
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_0

    .line 995
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileContentInBytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bytes "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getVVMGreetingPayloadFromPath, all bytes: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 995
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 998
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1003
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p1

    .line 1000
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1003
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    .line 980
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_e
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p1

    .line 1004
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVVMGreetingPayloadFromPath :: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private setSubjectAndGroup(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V
    .locals 4

    .line 591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 594
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "subject"

    .line 597
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 596
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 601
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSubject([Ljava/lang/String;)V

    const-string v1, "chat_type"

    .line 605
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 604
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    .line 606
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChatObjectPairFromCursor :: subject : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " chatType : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne v1, p0, :cond_1

    new-array p0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "yes"

    aput-object v1, p0, v0

    .line 608
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOpenGroup([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array p0, v2, [Ljava/lang/String;

    const-string v1, "no"

    aput-object v1, p0, v0

    .line 610
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOpenGroup([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 592
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

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 614
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private setTransToFrom(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1038
    invoke-static {p3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p3

    const-string v0, "IN"

    .line 1039
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 1042
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsed address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " participants size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1047
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 1049
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1051
    :goto_0
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    .locals 8

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddrFromPduId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 908
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 909
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 910
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 911
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryAddrBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 913
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_0
    const-string p2, "address"

    .line 915
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "type"

    .line 916
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 917
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " direction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "address is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x89

    if-ne v4, v5, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    const/16 v5, 0x97

    if-ne v4, v5, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    const/16 v5, 0x81

    if-ne v4, v5, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    const/16 v5, 0x82

    if-ne v4, v5, :cond_6

    move-object v4, v3

    .line 931
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "insert-address-token"

    .line 934
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 935
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mPhoneId:I

    invoke-static {v5, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 937
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mPhoneId:I

    invoke-static {v5, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 939
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 911
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 942
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 943
    :cond_8
    new-instance p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object p0
.end method

.method protected getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 452
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getChatSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChatSlmMultiBody localFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p4, p5

    .line 344
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string p1, "form-data;name=\"attachments\";filename=\"sms.txt\""

    const-string/jumbo p3, "text/plain"

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 351
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "file_name"

    .line 354
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 353
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment;name=file;filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, v3, :cond_2

    .line 359
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachment;filename=\""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p2, "content_type"

    .line 364
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 363
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 365
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p0, p4, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object p0

    if-eqz p0, :cond_4

    .line 366
    array-length p2, p0

    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 369
    :cond_3
    new-instance p2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {p2, v1, p1, p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 370
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    return-object v0

    .line 373
    :cond_5
    :goto_1
    invoke-static {p5}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    return-object v0
.end method

.method public getConferenceInfoObjectPair(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "connected"

    const-string v4, "full"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    return-object v5

    .line 781
    :cond_0
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 784
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 785
    new-instance v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;

    invoke-direct {v8}, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;-><init>()V

    .line 788
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    .line 894
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v5

    .line 791
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v9

    const-string v0, "inserted_time_stamp"

    .line 792
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mTimestamp:Ljava/lang/String;

    const-string/jumbo v0, "session_uri"

    .line 793
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mEntity:Ljava/lang/String;

    .line 794
    iput-object v4, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mState:Ljava/lang/String;

    .line 796
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;-><init>()V

    iput-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    const-string v0, "icon_path"

    .line 797
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v11, 0x2

    if-nez v10, :cond_3

    .line 800
    :try_start_2
    iget-object v10, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;-><init>()V

    iput-object v12, v10, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mIcon:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;

    .line 801
    iget-object v10, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v10, v10, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mIcon:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;

    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;-><init>()V

    iput-object v12, v10, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;->mFileInfo:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;

    .line 802
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-static {v10}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "application/octet-stream"

    .line 804
    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v0, "image/jpeg"

    .line 807
    :cond_2
    iget-object v12, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mIcon:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;

    iget-object v12, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;->mFileInfo:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;

    iput-object v0, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;->mContentType:Ljava/lang/String;

    .line 808
    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;->mData:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 810
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 813
    :cond_3
    :goto_0
    iget-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    const-string/jumbo v10, "subject"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubject:Ljava/lang/String;

    const-string/jumbo v0, "subject_timestamp"

    .line 815
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-lez v0, :cond_5

    .line 817
    iget-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v10, v0, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubjectExt:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;

    if-nez v10, :cond_4

    .line 818
    new-instance v10, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;

    invoke-direct {v10}, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;-><init>()V

    iput-object v10, v0, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubjectExt:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;

    .line 820
    :cond_4
    iget-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mSubjectExt:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;->mTimestamp:Ljava/lang/String;

    .line 822
    :cond_5
    iget-object v0, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;

    const-string v10, "max_participants_count"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v0, Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;->mMaxCount:I

    const-string v0, "chat_id"

    .line 824
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    iget-object v10, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mEntity:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 826
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session URI is null with chatId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 894
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v5

    .line 829
    :cond_6
    :try_start_4
    new-instance v10, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;

    invoke-direct {v10}, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;-><init>()V

    iput-object v10, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceState:Lcom/sec/internal/omanetapi/nms/data/ConferenceState;

    const-string/jumbo v10, "status"

    .line 830
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 831
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v12

    if-ne v10, v12, :cond_7

    const/4 v10, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    .line 832
    :goto_1
    iget-object v12, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceState:Lcom/sec/internal/omanetapi/nms/data/ConferenceState;

    if-nez v10, :cond_8

    const/4 v15, 0x1

    goto :goto_2

    :cond_8
    const/4 v15, 0x0

    :goto_2
    iput-boolean v15, v12, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;->mActivation:Z

    .line 833
    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/Users;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/Users;-><init>()V

    iput-object v12, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    .line 837
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSParticipantDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v12, :cond_e

    .line 839
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 840
    iget-object v5, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    add-int/lit8 v14, v15, 0x1

    new-array v14, v14, [Lcom/sec/internal/omanetapi/nms/data/Users$User;

    iput-object v14, v5, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    .line 841
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    :goto_3
    const-string/jumbo v14, "uri"

    .line 844
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 843
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 845
    iget-object v13, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v13, v13, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    new-instance v17, Lcom/sec/internal/omanetapi/nms/data/Users$User;

    invoke-direct/range {v17 .. v17}, Lcom/sec/internal/omanetapi/nms/data/Users$User;-><init>()V

    aput-object v17, v13, v5

    .line 846
    iget-object v13, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v13, v13, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v13, v13, v5

    iput-object v14, v13, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEntity:Ljava/lang/String;

    .line 847
    iput-object v4, v13, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mState:Ljava/lang/String;

    const-string v13, "alias"

    .line 848
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 849
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 850
    iget-object v11, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v11, v11, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v11, v11, v5

    iput-object v13, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mDisplayText:Ljava/lang/String;

    :cond_9
    const-string/jumbo v11, "type"

    .line 852
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v13, "participant"

    const/4 v2, 0x2

    if-ne v11, v2, :cond_a

    .line 854
    :try_start_6
    iget-object v11, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v11, v11, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v11, v11, v5

    move/from16 v18, v15

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/String;

    const-string v2, "Administrator"

    const/16 v16, 0x0

    aput-object v2, v15, v16

    iput-object v15, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mRole:[Ljava/lang/String;

    goto :goto_4

    :cond_a
    move/from16 v18, v15

    .line 856
    iget-object v2, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v2, v2, v5

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v13, v15, v11

    iput-object v15, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mRole:[Ljava/lang/String;

    .line 858
    :goto_4
    iget-object v2, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v2, v2, v5

    const/4 v11, 0x1

    new-array v15, v11, [Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    iput-object v15, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    .line 859
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;-><init>()V

    const/4 v11, 0x0

    aput-object v2, v15, v11

    .line 860
    iget-object v2, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    aget-object v2, v2, v11

    iput-object v14, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mEntity:Ljava/lang/String;

    .line 861
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mState:Ljava/lang/String;

    .line 862
    iput-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mStatus:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    .line 865
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 867
    iget-object v2, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    new-instance v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;

    invoke-direct {v11}, Lcom/sec/internal/omanetapi/nms/data/Users$User;-><init>()V

    aput-object v11, v2, v5

    .line 868
    iget-object v2, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v11, v2, v5

    iput-object v9, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEntity:Ljava/lang/String;

    .line 869
    iput-object v4, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mState:Ljava/lang/String;

    const/4 v14, 0x1

    .line 870
    iput-boolean v14, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mOwn:Z

    new-array v15, v14, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    .line 871
    iput-object v15, v11, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mRole:[Ljava/lang/String;

    .line 872
    aget-object v2, v2, v5

    new-array v11, v14, [Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    iput-object v11, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    .line 873
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;-><init>()V

    const/4 v13, 0x0

    aput-object v2, v11, v13

    .line 874
    iget-object v2, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users;->mUser:[Lcom/sec/internal/omanetapi/nms/data/Users$User;

    aget-object v2, v2, v5

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User;->mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;

    aget-object v2, v2, v13

    iput-object v9, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mEntity:Ljava/lang/String;

    .line 875
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mState:Ljava/lang/String;

    if-eqz v10, :cond_b

    const-string v3, "disconnected"

    .line 876
    :cond_b
    iput-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;->mStatus:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v15, v18

    goto :goto_6

    :cond_c
    move-object/from16 v2, p1

    move/from16 v15, v18

    const/4 v11, 0x2

    goto/16 :goto_3

    :cond_d
    move/from16 v18, v15

    const/4 v5, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 837
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    :cond_e
    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_6
    if-eqz v12, :cond_f

    .line 879
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_f
    if-gtz v15, :cond_10

    .line 894
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    return-object v1

    .line 883
    :cond_10
    :try_start_9
    iget-object v2, v8, Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;->mConferenceState:Lcom/sec/internal/omanetapi/nms/data/ConferenceState;

    const/4 v3, 0x1

    add-int/2addr v5, v3

    iput v5, v2, Lcom/sec/internal/omanetapi/nms/data/ConferenceState;->mUserCount:I

    new-array v2, v3, [Ljava/lang/String;

    const-string v4, "conference-message"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 885
    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "application/conference-info+json"

    aput-object v3, v2, v5

    .line 887
    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentType([Ljava/lang/String;)V

    .line 888
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 889
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 891
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 892
    invoke-virtual {v2, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 893
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageBody([Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 894
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 895
    invoke-virtual {v1, v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setConversationId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 898
    iput-object v0, v6, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 900
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 787
    :try_start_a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1
.end method

.method protected getDataFromPartFile(J)[B
    .locals 5

    const-string v0, "getDataFromPartFile is.close() error: "

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/part/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 949
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 952
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/16 v2, 0x100

    :try_start_1
    new-array v2, v2, [B

    .line 955
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 957
    invoke-virtual {p2, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 958
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 966
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 968
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p2

    :goto_2
    if-eqz v1, :cond_2

    .line 966
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 968
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_2
    :goto_3
    throw p2

    :catch_2
    move-object p1, v1

    :catch_3
    if-eqz p1, :cond_3

    .line 966
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 968
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    return-object v1
.end method

.method protected getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "US"

    .line 1057
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1061
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getE164FormatNumber: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1064
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    const-string v3, "KR"

    .line 1065
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 1069
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p2

    .line 1070
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getE164FormatNumber: E164["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 1074
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberParseException was thrown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method protected getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B
    .locals 7

    .line 1012
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x100

    :try_start_2
    new-array v2, v2, [B

    .line 1016
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1017
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFileContentInBytes: read:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 1019
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1020
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

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

    .line 1024
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1023
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1026
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1030
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    .line 1028
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1030
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

    .line 1012
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

    .line 1031
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

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

    .line 1032
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getFilePayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 8

    if-eqz p2, :cond_2

    .line 225
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "file_name"

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment;filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "content_type"

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 230
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {p2}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v4, p1

    .line 235
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p0, p4, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 236
    array-length p0, v5

    if-eqz p0, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_1

    .line 237
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v6, "cid:thumbnail"

    .line 239
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getFtMultiBody(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getLocalFilePathForFt(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFtMultiBody localFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "thumbnail_path"

    .line 274
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 278
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    goto :goto_0

    :cond_1
    move-object v2, p2

    move-object p2, v3

    .line 285
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 286
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 292
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFilePayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 294
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_3
    invoke-virtual {p0, p1, v3, p2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getThumbnailPayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 298
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filepath: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " File payload size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " thumbnailpath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Thumbnail payload size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_8

    .line 303
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "file_name"

    .line 305
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 304
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment;filename=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "content_type"

    .line 309
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 308
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 310
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v2

    if-eqz v2, :cond_7

    .line 311
    array-length v3, v2

    if-eqz v3, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 314
    :cond_6
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v3, p2, p1, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 315
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_1
    return-object v4

    .line 317
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "thumbnail filepath : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,body size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_3
    invoke-static {v0}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    return-object v4
.end method

.method protected getFtObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getFtObjectPairFromCursor(Landroid/database/Cursor;Ljava/util/List;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;)",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/util/List;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getLocalFilePathForFt(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6

    const-string v0, "imdn_message_id"

    .line 253
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 252
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rowId received for imdn id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "row id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " for imdn id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://im/ft_original/"

    .line 261
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 262
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "file_name"

    .line 264
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMmsObjectFromPduAndAddress(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 14

    .line 677
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 680
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 682
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 684
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string/jumbo v2, "read"

    .line 687
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 686
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "msg_box"

    .line 689
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 688
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "\\Flagged"

    const-wide/16 v6, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    cmp-long v2, v3, v6

    if-nez v2, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    new-array v11, v10, [Ljava/lang/String;

    aput-object v5, v11, v9

    iput-object v11, v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 692
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    new-array v11, v8, [Ljava/lang/String;

    aput-object v5, v11, v9

    const-string v5, "\\Seen"

    aput-object v5, v11, v10

    iput-object v11, v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    :goto_1
    const-string/jumbo v2, "tr_id"

    .line 703
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 702
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 704
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getMmsObjectFromPduAndAddress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", trid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTrIdCorrelationId()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 708
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 709
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v2, "m_id"

    .line 712
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 711
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 715
    :goto_2
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 717
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    const-string v11, "date"

    .line 718
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 717
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-direct {v8, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 719
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 723
    iget-wide v11, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v11, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    move-result-object p1

    const-wide/16 v11, 0x1

    cmp-long v5, v3, v11

    if-nez v5, :cond_3

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "IN"

    aput-object v4, v3, v9

    .line 726
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 730
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    .line 731
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 730
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 733
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    cmp-long v3, v3, v6

    if-nez v3, :cond_7

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "OUT"

    aput-object v4, v3, v9

    .line 737
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 741
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 742
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 744
    :cond_4
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mBcc:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 745
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mBcc:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setBCC([Ljava/lang/String;)V

    .line 747
    :cond_5
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mCc:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 748
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mCc:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCC([Ljava/lang/String;)V

    :cond_6
    new-array p1, v10, [Ljava/lang/String;

    .line 750
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v9

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_7
    :goto_3
    new-array p1, v10, [Ljava/lang/String;

    const-string v3, "no"

    aput-object v3, p1, v9

    .line 753
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    new-array p1, v10, [Ljava/lang/String;

    const-string v3, "multimedia-message"

    aput-object v3, p1, v9

    .line 757
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 761
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p1

    .line 762
    iput-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 680
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    .line 765
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 767
    :cond_9
    iget-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getMmsObjectFromPduAndAddress: correlation id is empty!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_a
    return-object v0
.end method

.method protected getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 10

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 623
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const-string v2, "_id"

    .line 626
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 625
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ct"

    .line 628
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 627
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v4, "_data"

    .line 633
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 632
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "text"

    .line 637
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 636
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 639
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    goto :goto_0

    .line 642
    :cond_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getDataFromPartFile(J)[B

    move-result-object v4

    :goto_0
    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "cl"

    .line 650
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 649
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 654
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v6, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 655
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMmsPartHttpPayloadFromCursor id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contentType: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data size: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filename: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    .line 670
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 665
    :cond_5
    :try_start_1
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v1, "form-data;name=\"attachments\""

    const-string v2, "multipart/mixed"

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 622
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

    :cond_7
    :goto_3
    return-object v1
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    .line 469
    :cond_0
    new-instance v9, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v9}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 472
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v10, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 550
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_1
    :try_start_1
    const-string v2, "chat_id"

    .line 481
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 480
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "direction"

    .line 483
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 482
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 485
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v5, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string/jumbo v5, "status"

    .line 487
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 486
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "ft_status"

    .line 489
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 488
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 490
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "\\Flagged"

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eq v5, v13, :cond_3

    .line 491
    :try_start_2
    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v5

    if-eq v6, v5, :cond_3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 492
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 497
    :cond_2
    iget-object v5, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    new-array v6, v15, [Ljava/lang/String;

    aput-object v14, v6, v16

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 493
    :cond_3
    :goto_0
    iget-object v5, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v14, v6, v16

    const-string v12, "\\Seen"

    aput-object v12, v6, v15

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 502
    :goto_1
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    const-string v12, "inserted_timestamp"

    .line 503
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 502
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 504
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 507
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getObjectPairFromCursor :: direction : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " messagetype : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " date : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {v0, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 510
    invoke-virtual {v0, v10, v5, v4, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Z

    move-result v12

    .line 512
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v6

    int-to-long v13, v6

    cmp-long v6, v2, v13

    if-nez v6, :cond_5

    const-string/jumbo v2, "remote_uri"

    .line 514
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 513
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 515
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v3, :cond_4

    .line 550
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    .line 518
    :cond_4
    :try_start_3
    invoke-direct {v0, v10, v5, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setTransToFrom(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    .line 519
    :cond_5
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v6

    int-to-long v13, v6

    cmp-long v2, v2, v13

    if-nez v2, :cond_b

    new-array v2, v15, [Ljava/lang/String;

    const-string v3, "OUT"

    aput-object v3, v2, v16

    .line 520
    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 523
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    .line 524
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :goto_2
    const-string v2, "imdn_message_id"

    .line 530
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 529
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 531
    iput-object v2, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    const-string v3, "file_path"

    .line 534
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 533
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 536
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, " body : "

    const-string v13, " correlationId : "

    const-string v14, "getObjectPairFromCursor :: filepath : "

    const-string v15, "body"

    if-ne v4, v3, :cond_6

    .line 537
    :try_start_4
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 538
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 539
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 540
    :cond_6
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne v4, v3, :cond_7

    .line 541
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 542
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v0, v7, v1, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 544
    :cond_7
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne v4, v2, :cond_8

    .line 545
    invoke-virtual {v0, v7, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFtMultiBody(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 547
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_9

    .line 550
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 552
    invoke-virtual {v0, v10, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setConversationId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V

    if-eqz v12, :cond_a

    .line 554
    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setSubjectAndGroup(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V

    .line 557
    :cond_a
    invoke-virtual {v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 558
    iput-object v0, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 560
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v2, "form-data;name=\"attachments\""

    const-string v3, "multipart/mixed"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 563
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v9, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 550
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 476
    :try_start_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/util/List;)Landroid/util/Pair;
    .locals 0
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

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 328
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getLocalFilePathForFt(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 331
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getSlmObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getTelE164FormatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1080
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTelE164FormatNumber: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 1083
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    const-string v3, "KR"

    .line 1084
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "tel:"

    if-eqz p2, :cond_1

    :try_start_1
    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1085
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    .line 1088
    sget-object p2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p2

    .line 1089
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTelE164FormatNumber: E164["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1093
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberParseException was thrown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method protected getThumbnailPayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 9

    if-eqz p2, :cond_4

    .line 191
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "file_name"

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 192
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "jpg"

    .line 195
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment;filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content_type"

    .line 200
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 199
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 202
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    invoke-static {p3}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    move-object v5, p1

    .line 208
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p0, p4, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v6

    if-eqz v6, :cond_4

    .line 209
    array-length p0, v6

    if-eqz p0, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz p3, :cond_3

    .line 210
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo v8, "thumbnail"

    .line 212
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "icon;filename=\"thumbnail_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 214
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_3
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {p0, v1, v5, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method protected getVvmGreetingBodyFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 8

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 140
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const-string v1, "filepath"

    .line 144
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 143
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 149
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Landroid/net/Uri;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "fileName"

    .line 158
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 157
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v3, 0x2f

    .line 160
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v1, "mimeType"

    .line 163
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 167
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment;filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    new-instance v5, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v5, v4, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    const-string v4, "base64"

    .line 171
    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 173
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVvmGreetingBodyFromDB data size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filename: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentType: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v1, "form-data;name=\"attachments\""

    const-string v2, "multipart/mixed"

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 138
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

    :cond_5
    if-eqz p1, :cond_6

    .line 185
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getVvmObjectFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 8

    .line 87
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 90
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "$CNS-Greeting-On"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 96
    iput-object v3, v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 101
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 103
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 104
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateHash()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 108
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageId([Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "1.0"

    aput-object v4, v3, v5

    .line 112
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMimeVersion([Ljava/lang/String;)V

    const-string v3, "greetingtype"

    .line 116
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 115
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVvmObjectFromDB greetingType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v2, [Ljava/lang/String;

    .line 119
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->valueOf(I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v5

    .line 118
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    const-string p0, "duration"

    .line 122
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 121
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    new-array v2, v2, [Ljava/lang/String;

    .line 124
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    .line 123
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentDuration([Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 127
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 90
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

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method protected setConversationId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V
    .locals 3

    .line 426
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 429
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "conversation_id"

    .line 431
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 430
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getObjectPairFromCursor :: conversationId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setConversationId([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 427
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

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 439
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method protected setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 380
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const-string/jumbo p2, "yes"

    .line 381
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "no"

    .line 386
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 390
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCpmTransMessage  type"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, p0, :cond_4

    .line 392
    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->isLocationPushContentType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "geolocation-message"

    .line 393
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :cond_1
    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotMessageContentType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "bot-message"

    .line 397
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 400
    :cond_2
    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotResponseMessageContentType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "response-message"

    .line 401
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p0, "chat-message"

    .line 405
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_4
    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, p0, :cond_5

    const-string/jumbo p0, "standalone-message"

    .line 411
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_5
    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, p0, :cond_6

    const-string p0, "file-message"

    .line 416
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    :cond_6
    :goto_1
    return v0
.end method

.class public Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;
.super Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;
.source "RcsQueryBuilder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mCountryCode:Ljava/lang/String;

.field private final mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

.field private final mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    .line 68
    const-class p2, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

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

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    .line 74
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    .line 75
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    .line 76
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method private addCVValuesFromSessionCursor(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1

    .line 1740
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 1741
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "syncdirection"

    .line 1740
    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1742
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 1743
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "syncaction"

    .line 1742
    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "chat_id"

    .line 1744
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "conversation_id"

    .line 1746
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1745
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "contribution_id"

    .line 1748
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1747
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "linenum"

    .line 1749
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "sim_imsi"

    .line 1750
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private copyParticipantsToBuffer(Ljava/lang/String;)V
    .locals 10

    const-string v0, "_id"

    .line 1816
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatIdFromTP(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1817
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "recipient_ids"

    .line 1818
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    .line 1819
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1820
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1821
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "chat_id"

    .line 1822
    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsInfoFromTP(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_0

    .line 1824
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "address"

    .line 1825
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1826
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "uri"

    .line 1827
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mCountryCode:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "sim_imsi"

    .line 1828
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 1829
    invoke-virtual {p0, v7, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1823
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 1831
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_2
    move-exception p0

    .line 1816
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_2
    if-eqz v1, :cond_3

    .line 1834
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private insertToImdnNotificationBufferDBFromTP(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "notification_status"

    .line 1703
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1705
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertToImdnNotificationBufferDBFromTP recipients isempty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "delivered_timestamp"

    .line 1706
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "direction"

    .line 1707
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1708
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1709
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, ";"

    .line 1710
    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const-string v3, "_id"

    .line 1711
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "id"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "imdn_id"

    .line 1712
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 1714
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "syncdirection"

    .line 1713
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1715
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 1716
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "syncaction"

    .line 1715
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "status"

    .line 1717
    invoke-virtual {v2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1718
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v3, p3, p2

    .line 1719
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToImdnNotificationBufferDBHelper(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Long;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private insertToImdnNotificationBufferDBHelper(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mCountryCode:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "sender_uri"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p2

    const-string/jumbo v0, "timestamp"

    if-ne p4, p2, :cond_0

    const/4 p2, 0x0

    .line 1728
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1729
    :cond_0
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p2

    if-ne p4, p2, :cond_1

    .line 1730
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1731
    :cond_1
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p2

    if-ne p4, p2, :cond_2

    .line 1732
    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    :goto_0
    const-string/jumbo p2, "sim_imsi"

    .line 1734
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 p2, 0xd

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    return-void
.end method

.method private isUpdateRequired(I)Z
    .locals 0

    .line 1698
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->MULTIMEDIA:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->TEXT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SINGLE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    .line 1699
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->GROUP:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private queryParticipantCount(Ljava/lang/String;)I
    .locals 3

    .line 780
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 781
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 783
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryParticipantCount participantCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 780
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

    .line 785
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method private removeExtensionColumns(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;
    .locals 0

    const-string p0, "correlation_id"

    .line 1509
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "correlation_tag"

    .line 1510
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo p0, "res_url"

    .line 1511
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "parentfolder"

    .line 1512
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "payloadurl"

    .line 1513
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "payloadpartThumb"

    .line 1514
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "payloadpartThumb_filename"

    .line 1515
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "payloadpartFull"

    .line 1516
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "payloadencoding"

    .line 1517
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "flagresourceurl"

    .line 1518
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "path"

    .line 1519
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "parentfolderpath"

    .line 1520
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "lastmodseq"

    .line 1521
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo p0, "syncaction"

    .line 1522
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo p0, "syncdirection"

    .line 1523
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p0, "linenum"

    .line 1524
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string/jumbo p0, "sim_imsi"

    .line 1526
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private updateChatId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " chatid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "chat_id"

    .line 709
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 712
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string v4, "chat_id=?"

    invoke-virtual {v3, v0, v4, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSSessionTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 714
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 715
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 718
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, v0, v4, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSParticipantsTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateIdFromRcsDb(ILjava/lang/String;)V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateIdFromRcsDb id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    .line 700
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    .line 703
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string p2, "chat_id=?"

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSSessionTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkIfSessionPresentInBufferDB(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1843
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1844
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_id"

    .line 1845
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1843
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
    const-wide/16 v0, -0x1

    :goto_1
    if-eqz p0, :cond_1

    .line 1847
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1848
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public deleteParticipantsFromBufferDb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 354
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 355
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x2

    const-string/jumbo v0, "uri=? AND chat_id=?"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteParticipantsUsingRowId(J)I
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->deleteParticipantsUsingRowId(J)I

    move-result p0

    return p0
.end method

.method public deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 3

    .line 1612
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRCSBufferDBwithResUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTablewithResUrl(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteRCSMessageDb(I)I
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->deleteRCSDBmessageUsingId(I)I

    move-result p0

    return p0
.end method

.method protected getValidPayload([Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1364
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    .line 1366
    iget-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    .line 1367
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1368
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public handlePayloadParts([Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 13

    .line 1375
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "start"

    .line 1380
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "payloadpartFull"

    const-string v3, "payloadencoding"

    const-string v4, "file_name"

    const-string v5, "content_type"

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    .line 1382
    array-length v1, p1

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_7

    aget-object v8, p1, v7

    .line 1383
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentId:Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    iget-object v11, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentEncoding:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 1385
    invoke-virtual {p2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "base64"

    iget-object v11, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentEncoding:Ljava/lang/String;

    .line 1386
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :try_start_0
    const-string v9, "payloadpartThumb"

    .line 1389
    iget-object v11, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1388
    :cond_1
    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->content:Ljava/lang/String;

    invoke-static {v9, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    .line 1391
    iget-object v10, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    .line 1392
    invoke-virtual {p0, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1391
    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1393
    iget-object v11, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v12

    invoke-static {v11, v10, v6, v12}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFilePath(Landroid/content/Context;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v11

    .line 1394
    invoke-static {v9, v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->saveFiletoPath([BLjava/lang/String;)V

    .line 1395
    iget-object v8, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "thumbnail_path"

    .line 1396
    invoke-virtual {v0, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1407
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nullpointer: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p1

    .line 1399
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    .line 1411
    :cond_2
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1412
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1413
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentEncoding:Ljava/lang/String;

    .line 1414
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->translatePayloadEncoding(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1413
    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1416
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1415
    :cond_3
    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v9, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1418
    iget-object v8, v8, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1423
    :cond_5
    array-length p2, p1

    :goto_2
    if-ge v6, p2, :cond_7

    aget-object v1, p1, v6

    .line 1424
    iget-object v7, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1425
    iget-object v7, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentEncoding:Ljava/lang/String;

    .line 1426
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->translatePayloadEncoding(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1425
    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    iget-object v7, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v7, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1429
    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method public handlePayloadWithThumbnail(Ljava/util/ArrayList;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Landroid/content/ContentValues;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 1438
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 1442
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "content_type"

    const-string v3, ";"

    const-string v4, "file_size"

    const-string v5, "payloadpartFull"

    const-string v6, "file_name"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-le v1, v7, :cond_7

    .line 1445
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v1, p2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 1446
    iget-object v10, v9, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->fileIcon:Ljava/net/URI;

    if-eqz v10, :cond_4

    .line 1449
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v10, ":"

    .line 1450
    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1451
    array-length v11, v10

    if-le v11, v7, :cond_2

    .line 1452
    aget-object v1, v10, v7

    .line 1454
    :cond_2
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileIconCId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v10, v9, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1459
    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFileName(Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;)Ljava/lang/String;

    move-result-object v10

    .line 1458
    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1462
    :cond_3
    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateLocation(Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;)Ljava/lang/String;

    move-result-object v10

    .line 1461
    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :goto_1
    iget-wide v10, v9, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->size:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1465
    iget-object v9, v9, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1466
    aget-object v9, v9, v8

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1469
    :cond_4
    iget-object v10, v9, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentId:Ljava/lang/String;

    if-eqz v10, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1471
    iget-object v10, v9, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object v10, p2

    :goto_2
    const-string v11, "payloadpartThumb"

    .line 1470
    invoke-virtual {v0, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v10

    const-string v11, "payloadpartThumb_filename"

    if-eqz v10, :cond_6

    .line 1474
    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateUniqueFileName(Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;)Ljava/lang/String;

    move-result-object v9

    .line 1473
    invoke-virtual {v0, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1477
    :cond_6
    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateLocation(Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;)Ljava/lang/String;

    move-result-object v9

    .line 1476
    invoke-virtual {v0, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1483
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 1484
    iget-object v7, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->href:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateLocation(Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;)Ljava/lang/String;

    move-result-object v7

    .line 1486
    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-wide v9, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->size:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1489
    iget-object v7, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1490
    aget-object v9, v7, v8

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "render"

    .line 1492
    iget-object v10, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->disposition:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "file_disposition"

    .line 1493
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1494
    iget v1, v1, Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;->playingLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v9, "playing_length"

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1496
    iget v1, p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v9, 0xe

    if-ne v1, v9, :cond_8

    .line 1497
    aget-object v1, v7, v8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "text/plain"

    .line 1498
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1499
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "this message should be large message, not fileTransfer"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "is_filetransfer"

    .line 1500
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method public insertAllToRCSSessionBufferDB(Landroid/database/Cursor;)V
    .locals 10

    .line 426
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertRCSSessiontoCV(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertAllToRCSSessionBufferDB size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 431
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 432
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v3, "preferred_uri"

    .line 433
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "chat_id"

    .line 437
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "linenum"

    .line 438
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "own_sim_imsi"

    .line 439
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mCountryCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 440
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 441
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "conversation_id"

    .line 442
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new conv id===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "syncdirection"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "syncaction"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v8, 0xa

    .line 448
    invoke-virtual {p0, v8, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    .line 449
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 450
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 451
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSParticipantsBufferDB(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 449
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
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
    if-eqz v2, :cond_3

    .line 453
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 457
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 456
    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 459
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 458
    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryIMFTUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 461
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 462
    invoke-virtual {p0, v4, v3, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSMessagesBufferDB(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 460
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 464
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public insertNewParticipantToBufferDB(Ljava/util/Set;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 764
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "chat_id"

    .line 765
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 768
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "status"

    .line 767
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "uri"

    .line 769
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sim_imsi"

    .line 770
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 771
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    .line 772
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public insertOrUpdateToNotificationDB(Lcom/sec/internal/omanetapi/nms/data/ImdnList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 932
    invoke-virtual {p0, p3, p4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    const/16 p4, 0xd

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 933
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    if-eqz p1, :cond_3

    const-string/jumbo p1, "status"

    .line 934
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 935
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    if-ne p5, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 936
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne p5, p1, :cond_2

    .line 938
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "insertOrUpdateToNotificationDB delivered comes after displayed or same update, shouldn\'t update. cloudNotificationStatus: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", bufferDBNotificationStatus: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return v0

    :cond_2
    :try_start_1
    const-string p1, "_bufferdbid=?"

    const-string p5, "_bufferdbid"

    .line 944
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p5

    invoke-interface {p3, p5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 p5, 0x1

    new-array v3, p5, [Ljava/lang/String;

    .line 945
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 946
    invoke-virtual {p0, p4, p2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 958
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return p5

    .line 949
    :cond_3
    :try_start_2
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 950
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSNotificationDbfromBufferDB(Landroid/content/ContentValues;)I

    move-result p1

    if-lez p1, :cond_4

    const-string p5, "id"

    .line 952
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    const-string/jumbo p1, "sim_imsi"

    .line 954
    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {p2, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0, p4, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_5

    .line 958
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    return v0

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_6

    .line 932
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw p0
.end method

.method public insertRCSImdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 12

    .line 962
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertRCSImdnToBufferDBUsingObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string p1, "insertRCSImdnToBufferDBUsingObject skip for incoming"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 968
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 969
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 970
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "res_url"

    .line 969
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 972
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parentfolder"

    .line 971
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 974
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "imdn_id"

    .line 976
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mImdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    if-eqz v1, :cond_2

    .line 980
    iget-wide v1, v1, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->lastModSeq:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastmodseq"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 983
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 984
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 985
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "uri"

    .line 986
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 984
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_3
    if-eqz p2, :cond_4

    .line 988
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 989
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 990
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mImdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    if-eqz v2, :cond_6

    .line 991
    array-length v4, v2

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 992
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    if-nez v7, :cond_5

    goto :goto_3

    .line 995
    :cond_5
    iget-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 996
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 999
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1000
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;-><init>()V

    .line 1001
    iput-object v2, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    new-array v2, v4, [Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    .line 1002
    iput-object v2, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    .line 1003
    new-instance v4, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    invoke-direct {v4}, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;-><init>()V

    aput-object v4, v2, v3

    .line 1004
    iget-object v2, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    aget-object v2, v2, v3

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iput-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    .line 1005
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1008
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1009
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    .line 1010
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1012
    invoke-virtual {p0, v5, v8}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->setNotificationStatusAndTimestamp(Lcom/sec/internal/omanetapi/nms/data/ImdnObject;Landroid/content/ContentValues;)V

    const-string/jumbo v6, "status"

    .line 1013
    invoke-virtual {v8, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1015
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v9

    if-ne v7, v9, :cond_a

    :cond_9
    :goto_6
    move v3, v4

    goto :goto_7

    .line 1017
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v9

    if-ne v7, v9, :cond_b

    if-lez v1, :cond_9

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1023
    :cond_b
    :goto_7
    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mImdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    iget-object v10, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertOrUpdateToNotificationDB(Lcom/sec/internal/omanetapi/nms/data/ImdnList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_c
    const-string p1, "notification_status"

    const-string v0, "disposition_notification_status"

    if-nez v1, :cond_d

    .line 1028
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_8

    :cond_d
    if-eqz v3, :cond_e

    .line 1031
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    :cond_e
    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v1, p1, :cond_f

    .line 1035
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    :cond_f
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertRCSImdnToBufferDBUsingObject notDisplayedCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isDelivered: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " participants count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1037
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "not_displayed_counter"

    .line 1040
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public insertRCSMessageDbfromBufferDB(JLandroid/content/ContentValues;)V
    .locals 3

    const/4 v0, 0x1

    .line 1532
    invoke-direct {p0, p3, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->removeExtensionColumns(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object p3

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->insertMessageFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert RCS message into ImProvider result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1536
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    .line 1539
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1540
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_0

    const-string v1, "_id"

    .line 1542
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1545
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string p2, "_bufferdbid=?"

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public insertRCSMessageToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Z)Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1116
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertRCSMessageToBufferDBUsingObject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " chatid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isInitialSync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    const-wide/16 v7, -0x1

    .line 1122
    iput-wide v7, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 1123
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1124
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->P_ASSERTED_SERVICE:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    const-string v12, "group"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v11

    .line 1129
    :goto_0
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    if-eqz v12, :cond_2a

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2a

    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    if-nez v12, :cond_1

    goto/16 :goto_16

    .line 1134
    :cond_1
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-eqz v12, :cond_2

    array-length v12, v12

    if-gtz v12, :cond_2

    .line 1135
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v1, "insertRCSMessageToBufferDBUsingObject, invalid payloadPart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    const-string v4, "correlation_id"

    .line 1138
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v7, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "correlation_tag"

    .line 1139
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v7, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lastmodseq"

    .line 1140
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v7, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1141
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 1142
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "res_url"

    .line 1141
    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 1144
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "parentfolder"

    .line 1143
    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    if-eqz v4, :cond_3

    const-string v12, "payloadurl"

    .line 1146
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_3
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isNmsEventHasMessageDetail()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1149
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1150
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "path"

    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    :cond_4
    iget v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v12, 0xc

    if-ne v4, v12, :cond_5

    move v13, v10

    goto :goto_1

    :cond_5
    move v13, v11

    :goto_1
    const/16 v14, 0xe

    if-ne v4, v14, :cond_8

    .line 1155
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    if-nez v4, :cond_7

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-eqz v4, :cond_6

    array-length v4, v4

    if-lez v4, :cond_6

    goto :goto_2

    :cond_6
    move v13, v11

    goto :goto_3

    :cond_7
    :goto_2
    move v13, v10

    .line 1157
    :cond_8
    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v15, "is_filetransfer"

    invoke-virtual {v7, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    iget-boolean v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v4, :cond_9

    if-eqz v13, :cond_9

    const-string/jumbo v4, "transfer_mech"

    .line 1159
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1162
    :cond_9
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v15, "IN"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v4

    goto :goto_4

    .line 1163
    :cond_a
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v4

    .line 1162
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v14, "direction"

    .line 1161
    invoke-virtual {v7, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "chat_id"

    .line 1164
    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v14, "remote_uri"

    if-eqz v4, :cond_b

    .line 1166
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    invoke-virtual {v7, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1168
    :cond_b
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v10, :cond_c

    if-nez v9, :cond_c

    .line 1169
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-nez v3, :cond_d

    const-string v4, "creator"

    const-string v9, "SD"

    .line 1172
    invoke-virtual {v7, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :cond_d
    :goto_5
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v9, "content_type"

    if-nez v4, :cond_e

    .line 1176
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 1177
    :cond_e
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1178
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_f
    :goto_6
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 1182
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 1183
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_11

    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 1184
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isContentTypeDefined(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1185
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v11, "txt"

    .line 1186
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1187
    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v14, "no change, just save as txt"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    move v11, v10

    goto :goto_9

    .line 1191
    :cond_11
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->isLocationPushContentType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1192
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 1193
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGEBODY:Ljava/lang/String;

    const-class v14, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;

    invoke-virtual {v4, v11, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;

    .line 1194
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    invoke-static {v11, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/internal/omanetapi/nms/data/GeoLocation;)Ljava/lang/String;

    move-result-object v4

    .line 1196
    new-instance v11, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v11}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v11, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "ext_info"

    invoke-virtual {v7, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move v14, v10

    const/4 v11, 0x0

    goto :goto_a

    .line 1197
    :cond_12
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotMessageContentType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotResponseMessageContentType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 1198
    :cond_13
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGEBODY:Ljava/lang/String;

    goto :goto_7

    :cond_14
    :goto_8
    const/4 v11, 0x0

    :goto_9
    const/4 v14, 0x0

    .line 1203
    :goto_a
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "inserted_timestamp"

    invoke-virtual {v7, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "body"

    .line 1204
    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->encode(Ljava/util/Set;)I

    move-result v4

    const-string v10, "notification_disposition_mask"

    .line 1207
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1208
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "notification_status"

    invoke-virtual {v7, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1209
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "disposition_notification_status"

    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "not_displayed_counter"

    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1211
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v10, "sent_timestamp"

    invoke-virtual {v7, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1213
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1214
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "delivered_timestamp"

    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_b

    .line 1216
    :cond_15
    iget-boolean v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v4, :cond_16

    .line 1217
    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSImdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1220
    :cond_16
    :goto_b
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateMessageStatus(Lcom/sec/internal/omanetapi/nms/data/FlagList;Ljava/lang/String;)I

    move-result v2

    .line 1221
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msgStatus: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "status"

    .line 1222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "ft_status"

    .line 1223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getIfCancelUsingFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Z

    move-result v2

    .line 1225
    iget v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v10, 0x3

    const-string/jumbo v12, "state"

    const-string v15, "message_type"

    move-object/from16 v19, v8

    const/16 v8, 0xc

    if-ne v4, v8, :cond_17

    .line 1226
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1227
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1228
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1227
    invoke-virtual {v7, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c

    .line 1230
    :cond_17
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1232
    :goto_c
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDRCS:Ljava/lang/String;

    if-eqz v4, :cond_18

    .line 1233
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 1234
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDRCS:Ljava/lang/String;

    const-class v10, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;

    invoke-virtual {v4, v8, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;

    .line 1235
    iget-object v8, v4, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceId:Ljava/lang/String;

    const-string/jumbo v10, "reference_id"

    invoke-virtual {v7, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget v8, v4, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v10, "reference_type"

    invoke-virtual {v7, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v8, "reference_value"

    .line 1237
    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :cond_18
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CHIPLIST:Ljava/lang/String;

    if-eqz v4, :cond_19

    const-string/jumbo v8, "suggestion"

    .line 1240
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :cond_19
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TRAFFICTYPE:Ljava/lang/String;

    if-eqz v4, :cond_1a

    const-string v8, "maap_traffic_type"

    .line 1243
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_1a
    iget v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 v8, 0xe

    if-ne v4, v8, :cond_1b

    const/4 v4, 0x1

    goto :goto_d

    :cond_1b
    const/4 v4, 0x0

    :goto_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "message_isslm"

    .line 1245
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "imdn_message_id"

    .line 1247
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "imdn_original_to"

    .line 1248
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "conversation_id"

    .line 1249
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "contribution_id"

    .line 1250
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    if-eqz v4, :cond_1e

    array-length v4, v4

    if-lez v4, :cond_1e

    .line 1252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1253
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    array-length v10, v8

    move-object/from16 v16, v4

    const/4 v4, 0x1

    if-le v10, v4, :cond_1c

    const-string v4, "application/vnd.gsma.botsuggestion.v1.0+json"

    .line 1254
    invoke-virtual {v0, v8, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->getValidPayload([Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_e

    :cond_1c
    move-object/from16 v4, v16

    .line 1256
    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1d

    .line 1257
    iget-object v8, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v10, "no visible payload!"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    const/4 v10, 0x0

    .line 1260
    :goto_f
    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->handlePayloadWithThumbnail(Ljava/util/ArrayList;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Landroid/content/ContentValues;

    move-result-object v8

    goto :goto_10

    :cond_1e
    const/4 v10, 0x0

    move-object/from16 v8, v19

    .line 1262
    :goto_10
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    move-object/from16 v16, v15

    sget-object v15, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-direct {v4, v10, v15}, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;-><init>(Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;)V

    .line 1264
    iget-boolean v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    if-eqz v10, :cond_20

    .line 1265
    iget-boolean v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    if-nez v2, :cond_1f

    .line 1266
    iput-object v6, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 1267
    iput-object v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    :cond_1f
    :goto_11
    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto/16 :goto_13

    :cond_20
    const-string/jumbo v10, "thumbnail_path"

    .line 1270
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 1271
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saves valid thumbnail: from downloaded object: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1271
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1274
    :cond_21
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v15, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v10, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1275
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iput-object v2, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 1276
    iput-object v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    goto :goto_11

    .line 1278
    :cond_22
    iget-object v10, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v5

    const-string v5, "isCancelStatus: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", read flag present: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v19, v6

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 1279
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", nonTextChatType: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1278
    invoke-static {v10, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_26

    if-nez v14, :cond_26

    if-nez v2, :cond_26

    .line 1283
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1284
    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1285
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", isFT: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_24

    if-nez v13, :cond_24

    const-string/jumbo v5, "xml"

    .line 1286
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    const-string/jumbo v5, "text/plain"

    .line 1287
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    const-string v5, "json"

    .line 1288
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1289
    :cond_23
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iput-object v2, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 1290
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Downloading:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    iput-object v2, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    const/16 v17, 0x1

    goto :goto_12

    :cond_24
    const/16 v17, 0x0

    :goto_12
    if-nez v17, :cond_26

    if-eqz v3, :cond_25

    .line 1296
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iput-object v2, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_13

    .line 1298
    :cond_25
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchIndividualUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iput-object v2, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    :cond_26
    :goto_13
    if-eqz v11, :cond_27

    const/4 v2, 0x3

    .line 1306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1307
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1308
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v16

    .line 1307
    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1310
    :cond_27
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "linenum"

    .line 1311
    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1315
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1316
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1317
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sim imsi : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "sim_imsi"

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "syncdirection"

    const-string/jumbo v5, "syncaction"

    if-nez v3, :cond_29

    .line 1320
    iget-boolean v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    if-nez v3, :cond_29

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 v6, 0x1

    .line 1321
    invoke-static {v1, v3, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->isDownloadObject(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_14

    .line 1330
    :cond_28
    invoke-virtual/range {v19 .. v19}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v1, v19

    .line 1332
    iput-object v1, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-object/from16 v1, v18

    .line 1333
    iput-object v1, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 1334
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normal sync insert RCS db: set action as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1335
    invoke-virtual {v0, v1, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    goto :goto_15

    .line 1322
    :cond_29
    :goto_14
    iget-object v1, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    iget-object v1, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mDirection:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1324
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initial sync insert RCS db or normal sync from extended changed object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1326
    invoke-virtual {v0, v1, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide v1

    iput-wide v1, v4, Lcom/sec/internal/ims/cmstore/params/ParamSyncFlagsSet;->mBufferId:J

    .line 1328
    invoke-virtual {v0, v1, v2, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSMessageDbfromBufferDB(JLandroid/content/ContentValues;)V

    :goto_15
    return-object v4

    .line 1131
    :cond_2a
    :goto_16
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v1, "insertRCSMessageToBufferDBUsingObject, invalid OMA param issue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public insertRCSNotificationDbfromBufferDB(Landroid/content/ContentValues;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1568
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string p1, "insertRCSNotificationDbfromBufferDB null input"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1571
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->removeExtensionColumns(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1573
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->insertNotificationFromBufferDb(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1575
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert RCS notification into ImProvider result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1575
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 1578
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method public insertRCSParticipantToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 726
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertParticipant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupchat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "chat_id"

    .line 731
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 734
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "status"

    .line 733
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "uri"

    .line 735
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sim_imsi"

    .line 736
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 737
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    .line 738
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public insertRCSParticipantToBufferDBUsingObject(Ljava/util/Set;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 747
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "chat_id"

    .line 748
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 751
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "status"

    .line 750
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "uri"

    .line 752
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sim_imsi"

    .line 753
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 754
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    .line 755
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public insertRCSParticipantsDb(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 378
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->insertParticipantsFromBufferDbToRCSDb(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertRCSParticipantsDb(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 387
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->insertParticipantsFromBufferDbToRCSDb(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert RCS participant into ImProvider result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "chat_id"

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uri"

    .line 396
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_id"

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string v2, "chat_id=? AND uri=?"

    invoke-virtual {v1, v3, v2, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSParticipantsTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public insertRCSimdnToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J
    .locals 3

    .line 1070
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertRCSimdnToBufferDBUsingObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1072
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    const-string v2, "lastmodseq"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1073
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 1074
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "res_url"

    .line 1073
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 1076
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parentfolder"

    .line 1075
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "imdn_id"

    .line 1080
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "IN"

    .line 1083
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getPhoneNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sender_uri"

    .line 1085
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "displayed"

    .line 1087
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v1, "status"

    if-eqz p1, :cond_2

    .line 1088
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1090
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1092
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isStoreImdnEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1094
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1095
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSNotificationDbfromBufferDB(Landroid/content/ContentValues;)I

    move-result p1

    if-lez p1, :cond_3

    const-string v1, "id"

    .line 1097
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string/jumbo p1, "sim_imsi"

    .line 1100
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xd

    .line 1101
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public insertSessionFromTPDBToRCSSessionBufferDB(Landroid/database/Cursor;)V
    .locals 10

    .line 1770
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1771
    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertTPRCSSessionToCV(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1772
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSessionFromTPDBToRCSSessionBufferDB size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1775
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1776
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "preferred_uri"

    .line 1777
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1779
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v5, "chat_id"

    .line 1781
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1782
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1783
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v4, "insertSessionFromTPDBToRCSSessionBufferDB chatId is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1
    const-string v6, "linenum"

    .line 1786
    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "own_sim_imsi"

    .line 1787
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mCountryCode:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1788
    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1789
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "conversation_id"

    .line 1790
    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new conv id===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->checkIfSessionPresentInBufferDB(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1795
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "syncdirection"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1796
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "syncaction"

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v6, 0xa

    .line 1797
    invoke-virtual {p0, v6, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    .line 1798
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->copyParticipantsToBuffer(Ljava/lang/String;)V

    .line 1801
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllRCSChatFromTP(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1802
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1803
    invoke-virtual {p0, v6, v4, v3, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSMessagesBufferDBFromTP(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1801
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 1805
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1807
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryAllFtRCSFromTelephony(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1808
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    .line 1809
    invoke-virtual {p0, v5, v4, v3, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToRCSMessagesBufferDBFromTP(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 1807
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 1811
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public insertSingleSessionToRcsBuffer(Landroid/database/Cursor;)V
    .locals 4

    .line 470
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertRCSSessiontoCV(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 471
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 472
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string/jumbo v2, "preferred_uri"

    .line 473
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v3, "linenum"

    .line 477
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "sim_imsi"

    .line 478
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 479
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public insertToImdnNotificationBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;)J
    .locals 5

    .line 262
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertImdnNotificationtoCV(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertToImdnNotificationBufferDB size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 268
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 269
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v1, "syncdirection"

    .line 271
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 270
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "syncaction"

    .line 273
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 272
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "sim_imsi"

    .line 274
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    move-result-wide v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToImdnNotificationBufferDB row: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    return-wide v0
.end method

.method public insertToRCSMessagesBufferDB(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 7

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToRCSMessagesBufferDB(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "we do get something from RCS messages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 224
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertRCSimfttoCV(Landroid/database/Cursor;Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToRCSMessagesBufferDB() size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 226
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 227
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string/jumbo v4, "remote_uri"

    .line 228
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isNeedCheckBlockedNumberBeforeCopyRcsDb()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    .line 231
    invoke-static {v5, v4}, Landroid/provider/BlockedNumberContract;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The number ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] has been add to block list. This message should avoid to save to BuffedDB!"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    const-string/jumbo v0, "syncdirection"

    .line 237
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 236
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "syncaction"

    .line 239
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 238
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "linenum"

    .line 240
    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sim_imsi"

    .line 241
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    move-result-wide v0

    const-string v4, "imdn_message_id"

    .line 246
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 248
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 249
    invoke-virtual {p0, v3, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToImdnNotificationBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 247
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
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
    if-eqz v3, :cond_3

    .line 251
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 253
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    return-wide v0
.end method

.method public insertToRCSMessagesBufferDBFromTP(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 8

    .line 1651
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToRCSMessagesBufferDBFromTP(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "we do get something from RCS messages: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1651
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    invoke-static {p1, p4}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertRCSIMFTFromTPtoCV(Landroid/database/Cursor;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 1655
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertToRCSMessagesBufferDBFromTP() size: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 1656
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_6

    .line 1657
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ContentValues;

    const-string/jumbo v0, "remote_uri"

    .line 1658
    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1659
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isNeedCheckBlockedNumberBeforeCopyRcsDb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    .line 1661
    invoke-static {v1, v0}, Landroid/provider/BlockedNumberContract;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1662
    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] has been add to block list. This message should avoid to save to BuffedDB!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    const-string/jumbo v0, "sim_imsi"

    .line 1667
    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1668
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1669
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "imdn_message_id"

    .line 1670
    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_3

    .line 1674
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1675
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "_id"

    .line 1676
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1674
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    move-wide v4, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 1678
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_3
    move-wide v4, v2

    .line 1681
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertToRCSMessagesBufferDBFromTP() rowId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " imdnID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v4, v2

    if-nez v1, :cond_5

    const-string/jumbo v1, "recipients"

    .line 1684
    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1685
    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1686
    invoke-direct {p0, p4, p3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->addCVValuesFromSessionCursor(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 1687
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    const-string v1, "message_type"

    .line 1689
    invoke-virtual {p4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1690
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->isUpdateRequired(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1691
    invoke-direct {p0, p4, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertToImdnNotificationBufferDBFromTP(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public insertToRCSParticipantsBufferDB(Landroid/database/Cursor;)V
    .locals 6

    .line 287
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertRCSparticipantstoCV(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToRCSParticipantsBufferDB size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 292
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 293
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v2, "chat_id"

    .line 294
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uri"

    .line 295
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantFromBufferDb(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 297
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " participant "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exist in buffer db"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 296
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    if-eqz v2, :cond_2

    .line 301
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string/jumbo v2, "sim_imsi"

    .line 302
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 303
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public queryAllFtRCSFromTelephony(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryAllFtRCSFromTelephony(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllRCSChatFromTP(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1762
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryAllRCSChatFromTP(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSession()Landroid/database/Cursor;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryAllSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryBufferDBSessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryBufferDbandUpdateRcsMessageDb(Ljava/lang/String;)I
    .locals 8

    const-string v0, "not_displayed_counter"

    const-string v1, "displayed_timestamp"

    const-string v2, "delivered_timestamp"

    const-string v3, "disposition_notification_status"

    const-string v4, "notification_status"

    .line 1044
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryBufferDbandUpdateRcsMessageDb: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1049
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v6, 0x0

    const-string v7, "imdn_message_id=?"

    invoke-virtual {v5, v6, v7, p1, v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1050
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1051
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1053
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1052
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1054
    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1056
    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1059
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1058
    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1061
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1060
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "_id"

    .line 1062
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1063
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, v0, v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateMessageFromBufferDb(ILandroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1049
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
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_1

    .line 1065
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return p0
.end method

.method public queryGroupSession()Landroid/database/Cursor;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryGroupSession(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIMFTUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryIMFTUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryIMFTUsingRowId(J)Landroid/database/Cursor;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryIMFTUsingRowId(J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryImdnBufferDBandUpdateRcsMessageBufferDb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    .line 791
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantCount(Ljava/lang/String;)I

    move-result p2

    .line 792
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryImdnBufferDBandUpdateRcsMessageBufferDb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", notDisplayedCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSImdnUseImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 796
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 799
    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v2, :cond_0

    .line 800
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 801
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updated notDisplayedCnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move v3, v1

    move v4, v3

    :cond_1
    const-string/jumbo v5, "status"

    .line 806
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 805
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 807
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v8, "timestamp"

    const-string v9, "notification_status"

    const-string v10, "disposition_notification_status"

    if-ne v5, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 810
    :try_start_1
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 809
    invoke-virtual {v2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "displayed_timestamp"

    .line 812
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 811
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 813
    :cond_2
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v11

    if-ne v5, v11, :cond_3

    .line 814
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v4, v4, 0x1

    .line 817
    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 818
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "queryImdnBufferDBandUpdateRcsMessageBufferDb: displayedCnt="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", deliveredCnt="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_4

    if-lez v4, :cond_4

    .line 822
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 823
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 824
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 823
    invoke-virtual {v2, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "delivered_timestamp"

    .line 826
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 825
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    if-lez v3, :cond_6

    sub-int v4, p2, v3

    const-string v5, "not_displayed_counter"

    if-ltz v4, :cond_5

    goto :goto_1

    :cond_5
    move v4, v1

    .line 831
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    if-ne v3, p2, :cond_7

    .line 835
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    :cond_7
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_8

    const-string p2, "imdn_message_id=?"

    .line 839
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 840
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, v2, p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 795
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

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 843
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return v1
.end method

.method public queryImdnMessagesToUpload()Landroid/database/Cursor;
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryImdnMessagesToUpload()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 212
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    int-to-long v4, v4

    .line 214
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 213
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND (res_url IS NULL OR res_url = \'\') AND timestamp > ?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSImdnMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryImdnUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryLargestLastModSeqRow(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1852
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryLargestLastModSeqRow imdnID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1856
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x0

    const-string v1, "imdn_id=?"

    const-string v2, "lastmodseq DESC LIMIT 1"

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSImdnMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryOneToOneSession()Landroid/database/Cursor;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryOneToOneSession(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantFromBufferDb(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryParticipant(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsFromBufferDb(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryParticipant(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsInfoFromTP(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1758
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryParticipantsInfoFromTP(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipantsUsingChatIdFromTP(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1754
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->queryParticipantsUsingChatIdFromTP(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1607
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryRCSBufferDBwithResUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithResUrl(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSFtMessagesToUpload(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryRCSFtMessagesToUpload()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 191
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    int-to-long v4, v4

    .line 193
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 192
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    const-string v3, "1"

    filled-new-array {v0, v1, v2, v3, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 194
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x0

    const-string/jumbo v1, "syncdirection=? AND (res_url IS NULL OR res_url = \'\') AND inserted_timestamp > ? AND sim_imsi=? AND is_filetransfer=? AND chat_id=?"

    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesByChatId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 200
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x0

    const-string v1, "chat_id=?"

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesToUpload()Landroid/database/Cursor;
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryRCSMessagesToUpload()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 175
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    int-to-long v4, v4

    .line 177
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 176
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND (res_url IS NULL OR res_url = \'\') AND inserted_timestamp > ? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessagesToUploadByMessageType(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryRCSMessagesToUploadByMessageType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND (message_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->MULTIMEDIA:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    .line 135
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "message_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->TEXT:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    .line 139
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->LOCATION:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    .line 143
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->SINGLE:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    .line 147
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->GROUP:Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;

    .line 151
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/McsConstants$RCSMessageType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncdirection=? AND (res_url IS NULL OR res_url = \'\') AND inserted_timestamp > ? AND sim_imsi=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is_filetransfer"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=? AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "chat_id"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 160
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    int-to-long v5, v5

    .line 162
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 161
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    const-string v4, "0"

    filled-new-array {v1, v2, v3, v4, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSNotificationStatus(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 918
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryImdnUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 919
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryRCSNotificationStatus notificationCursor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo p0, "sender_uri"

    .line 922
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "status"

    .line 923
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 922
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 918
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
    if-eqz p1, :cond_2

    .line 926
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryRcsDBMessageUsingImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1838
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionByConversationId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByConversationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1647
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToCloudUnsyncedRcs()Landroid/database/Cursor;
    .locals 6

    .line 1630
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 1631
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    .line 1633
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1632
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1634
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND res_url IS NOT NULL AND inserted_timestamp > ? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1

    .line 1620
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {p2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 1621
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string/jumbo v0, "syncaction=? AND linenum=? AND sim_imsi=?"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedRcs()Landroid/database/Cursor;
    .locals 3

    .line 1641
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1642
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchBufferNotificationUsingImdn(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchBufferNotificationUsingImdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSImdnUseImdnId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchBufferNotificationUsingImdnAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchBufferNotificationUsingImdnAndTelUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", telUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSImdnUseImdnIdAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchIMFTBufferUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 123
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x0

    const-string v1, "chat_id=?"

    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchIMFTBufferUsingImdn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " line:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string p2, "imdn_message_id=? AND linenum=?"

    invoke-virtual {p0, v1, p2, p1, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string p2, "imdn_message_id=?"

    invoke-virtual {p0, v1, p2, p1, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchIMFTBufferUsingRowId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 114
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x0

    const-string v1, "_id=?"

    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchOrCreateSession(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Ljava/lang/String;
    .locals 13

    const-string v0, "participant = "

    .line 485
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 486
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_14

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 494
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 499
    :goto_0
    :try_start_0
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->P_ASSERTED_SERVICE:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const-string v6, "group"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    .line 502
    :goto_1
    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-ne v6, v5, :cond_4

    if-eqz v3, :cond_3

    .line 503
    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v6, :cond_3

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByConversationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3

    .line 506
    :cond_3
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v6, v7, v8, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/ims/util/ImsUri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3

    .line 510
    :cond_4
    iget-boolean v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    if-nez v6, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    .line 514
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    iget-object v7, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-virtual {v6, v7, v2, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/ims/util/ImsUri;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_3

    .line 512
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByConversationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_3
    const-string v6, "chat_id"

    const-string/jumbo v7, "sim_imsi"

    const-string/jumbo v8, "subject"

    if-eqz v1, :cond_12

    .line 520
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 522
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 521
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 523
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "searchOrCreateSession, chatId found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "inserted_timestamp DESC"

    .line 526
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryRCSMessagesByChatId(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v3, :cond_7

    .line 528
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "inserted_timestamp"

    .line 529
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_4

    :cond_7
    const-wide/16 v4, 0x0

    .line 531
    :goto_4
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDateFromDateString(objt.DATE)="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", timeStamp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "objt.IS_CPM_GROUP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 537
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v9

    .line 538
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " | update session sim imsi : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 540
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 541
    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 543
    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSSessionDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 546
    :cond_8
    iget-boolean v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldCareGroupChatAttribute()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_10

    .line 549
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 548
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 551
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-eqz v4, :cond_9

    .line 552
    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 553
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "subject has been changed, update it"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_9
    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 558
    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 559
    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateRCSSessionDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 563
    :cond_a
    new-instance v4, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 564
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_5
    if-eqz p1, :cond_d

    .line 565
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "uri"

    .line 567
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 566
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 568
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mCountryCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 569
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", telUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_b

    goto :goto_5

    :cond_b
    const-string v7, " is deleted from DB."

    .line 575
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 578
    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v7, " contains."

    goto :goto_6

    :cond_c
    const-string v6, "_id"

    .line 584
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 583
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 585
    invoke-virtual {p0, v5, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsFromBufferDb(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->deleteParticipantsUsingRowId(J)I

    .line 588
    :goto_6
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 591
    :cond_d
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 593
    invoke-virtual {p0, v4, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertNewParticipantToBufferDB(Ljava/util/Set;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSParticipantsDb(Ljava/util/ArrayList;)V

    .line 596
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "participants = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " are added into DB"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    if-eqz p1, :cond_10

    .line 598
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_f

    .line 564
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_7
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_10
    :goto_8
    if-eqz v3, :cond_1d

    .line 600
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_10

    :catchall_2
    move-exception p1

    if-eqz v3, :cond_11

    .line 526
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_9
    throw p1

    .line 602
    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 604
    iget-object v9, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v10

    invoke-static {v9, v5, v10}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;ZI)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "own_sim_imsi"

    .line 606
    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 607
    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v9

    .line 606
    invoke-virtual {v0, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const-string v9, "is_group_chat"

    if-eqz v6, :cond_14

    if-eqz v3, :cond_13

    move v6, v5

    goto :goto_a

    :cond_13
    move v6, v4

    .line 609
    :goto_a
    :try_start_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c

    .line 611
    :cond_14
    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-le v6, v5, :cond_15

    move v6, v5

    goto :goto_b

    :cond_15
    move v6, v4

    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_c
    const-string v6, "is_ft_group_chat"

    .line 614
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 613
    invoke-virtual {v0, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "status"

    .line 615
    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->INACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 616
    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const-string v8, "chat_type"

    if-le v6, v5, :cond_19

    .line 618
    :try_start_b
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldCareGroupChatAttribute()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 619
    iget-boolean v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    if-eqz v3, :cond_16

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_d

    .line 620
    :cond_16
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 621
    :goto_d
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e

    :cond_17
    if-eqz v3, :cond_18

    .line 623
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e

    .line 626
    :cond_18
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e

    :cond_19
    if-eqz v3, :cond_1a

    .line 630
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_e

    .line 632
    :cond_1a
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_e
    const-string v3, "is_muted"

    .line 635
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "max_participants_count"

    const/16 v4, 0x64

    .line 637
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 636
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "imdn_notifications_availability"

    .line 639
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 638
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "direction"

    const-string v4, "IN"

    .line 641
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v4

    goto :goto_f

    .line 642
    :cond_1b
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v4

    .line 641
    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 640
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "conversation_id"

    .line 643
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "contribution_id"

    .line 644
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "syncaction"

    .line 645
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "syncdirection"

    .line 646
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    if-eqz v3, :cond_1c

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 648
    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v4

    .line 647
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string/jumbo v3, "preferred_uri"

    .line 649
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const-string v3, "linenum"

    .line 651
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "session sim imsi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 659
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    .line 660
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->insertRCSParticipantToBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 662
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {v3, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->insertSessionFromBufferDbToRCSDb(Landroid/content/ContentValues;Ljava/util/ArrayList;)I

    move-result p1

    .line 663
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateBufferDbChatIdFromRcsDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateParticipantsIdFromRcsDb(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_1d
    :goto_10
    if-eqz v1, :cond_1f

    .line 670
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :catchall_4
    move-exception p0

    move-object v2, v1

    goto :goto_13

    :catch_0
    move-exception p1

    move-object v0, v2

    move-object v2, v1

    goto :goto_11

    :catchall_5
    move-exception p0

    goto :goto_13

    :catch_1
    move-exception p1

    move-object v0, v2

    .line 667
    :goto_11
    :try_start_c
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nullpointer exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v2, :cond_1e

    .line 670
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1e
    move-object v2, v0

    :cond_1f
    :goto_12
    return-object v2

    :goto_13
    if-eqz v2, :cond_20

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 672
    :cond_20
    throw p0

    .line 487
    :cond_21
    :goto_14
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "searchOrCreateSession, invalid OMA param issue"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public setNotificationStatusAndTimestamp(Lcom/sec/internal/omanetapi/nms/data/ImdnObject;Landroid/content/ContentValues;)V
    .locals 8

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setNotificationStatusAndTimestamp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    const-string/jumbo v1, "sender_uri"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v5, p1, v2

    .line 895
    iget-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    const-string v7, "displayed"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 896
    iget-object v1, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    goto :goto_2

    :cond_0
    const-string v6, "delivered"

    .line 898
    iget-object v7, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 899
    iget-object v3, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    goto :goto_1

    .line 901
    :cond_1
    iget-object v4, v5, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->date:Ljava/lang/String;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 904
    :cond_2
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string/jumbo v0, "status"

    const-string/jumbo v2, "timestamp"

    if-nez p1, :cond_3

    .line 905
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 907
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 908
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 909
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 911
    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 912
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    return-void
.end method

.method public updateBufferDbChatIdFromRcsDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    return-object p1

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->querySessionUsingId(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "chat_id"

    .line 684
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 683
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 681
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
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 686
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 688
    invoke-direct {p0, p2, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateIdFromRcsDb(ILjava/lang/String;)V

    .line 689
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 690
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateChatId(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    return-object p1
.end method

.method public updateParticipantsBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 1

    .line 368
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string/jumbo v0, "uri=?"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSParticipantsTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateParticipantsIdFromRcsDb(Ljava/lang/String;)V
    .locals 6

    const-string v0, "_id"

    .line 1861
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateParticipantsIdFromRcsDb chatId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->queryParticipantsUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1864
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1865
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "uri"

    .line 1866
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "chat_id=? AND uri=?"

    .line 1868
    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1869
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1870
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1871
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v2, v5, v4, v3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSParticipantsTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1862
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_0
    if-eqz v1, :cond_1

    .line 1874
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public updateRCSMessageDb(ILandroid/content/ContentValues;)I
    .locals 3

    .line 1555
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRCSMessageDb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1556
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->removeExtensionColumns(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object p2

    .line 1558
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1559
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateMessageFromBufferDb(ILandroid/content/ContentValues;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public updateRCSMessageInBufferDBUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 1343
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 1345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    array-length v3, v1

    if-le v3, v2, :cond_0

    const-string v0, "application/vnd.gsma.botsuggestion.v1.0+json"

    .line 1347
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->getValidPayload([Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 1349
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1350
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    const-string v3, "no visible payload!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->handlePayloadWithThumbnail(Ljava/util/ArrayList;Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1356
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1357
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateRCSNotificationUsingImdnId(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1105
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->removeExtensionColumns(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object p2

    .line 1107
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1108
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateRCSNotificationUsingImdnId(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public updateRCSParticipantsDb(JLandroid/content/ContentValues;)I
    .locals 1

    .line 359
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateParticipantsFromBufferDbToRCSDb(JLandroid/content/ContentValues;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateRCSSessionDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2

    const/4 v0, 0x0

    .line 1584
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->removeExtensionColumns(Landroid/content/ContentValues;Z)Landroid/content/ContentValues;

    move-result-object p2

    .line 1586
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1587
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->mRCSStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateSessionFromBufferDbToRCSDb(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public updateRcsMessageBufferDbIfNewIMDNReceived(Ljava/lang/String;IILjava/lang/String;)I
    .locals 6

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRcsMessageBufferDbIfNewIMDNReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", notDisplayedCnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rcsMsgDisplayStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "displayed"

    .line 855
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 856
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p4

    goto :goto_0

    .line 858
    :cond_0
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p4

    .line 861
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 862
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v2

    const-string v3, "disposition_notification_status"

    const-string v4, "notification_status"

    const/4 v5, 0x0

    if-ne p4, v2, :cond_4

    .line 863
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p4

    if-eq p3, p4, :cond_1

    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 864
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p4

    if-ne p3, p4, :cond_2

    .line 865
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 866
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    move p3, p2

    goto :goto_1

    :cond_3
    move p3, v5

    .line 871
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "not_displayed_counter"

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 872
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v2

    if-ne p4, v2, :cond_5

    .line 873
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p4

    if-ne p3, p4, :cond_5

    .line 874
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 875
    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRcsMessageBufferDbIfNewIMDNReceived: newNotDisplayedCnt = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 883
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string p2, "imdn_message_id=?"

    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    :cond_6
    return v5
.end method

.method public updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    .line 1594
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSessionBufferDb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 1599
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1600
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string v0, "chat_id=?"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateRCSSessionTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

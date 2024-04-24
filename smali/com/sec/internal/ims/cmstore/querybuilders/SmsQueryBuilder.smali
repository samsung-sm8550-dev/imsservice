.class public Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;
.super Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;
.source "SmsQueryBuilder.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;


# direct methods
.method public static synthetic $r8$lambda$0YluRTvZC0Al67ur3xWkwhgzrbQ(Landroid/content/ContentValues;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->lambda$insertToSMSBufferDB$0(Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Yn34Q9ZcfEP3kZSFpdfoEafmg6k(Landroid/content/ContentValues;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->lambda$insertToSMSBufferDB$1(Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    .line 39
    const-class p2, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

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

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    .line 45
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    return-void
.end method

.method private getGroupSMSCV(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linenum"

    .line 447
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    const/4 v1, 0x2

    .line 450
    invoke-interface {v0, p2, v1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "correlation_tag"

    .line 451
    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 456
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correlationTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " address:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "address"

    .line 457
    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "body"

    .line 458
    invoke-virtual {p1, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "type"

    .line 459
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private insertHiddenSMS(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;JLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;",
            "Landroid/content/ContentValues;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertHiddenSMS ToSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rowId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Out"

    .line 124
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 125
    :goto_1
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 126
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v4

    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "correlation_tag"

    .line 128
    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "group_cotag"

    .line 129
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "group_id"

    .line 131
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez v3, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    .line 132
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "hidden"

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string/jumbo v5, "tel:"

    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    .line 135
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "address"

    .line 137
    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    if-nez v3, :cond_3

    const-string v6, "_bufferdbid=?"

    .line 142
    invoke-virtual {p0, v5, p2, v6, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide v4, p3

    goto :goto_3

    .line 144
    :cond_3
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide v4

    .line 146
    :goto_3
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertHiddenSMS new inserted/updated row:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 149
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insertHiddenSMS rowIds inserted:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p5
.end method

.method private insertSmsUsingRcsBufferDbCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9

    .line 155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "correlation_tag"

    .line 157
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lastmodseq"

    .line 159
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "res_url"

    .line 161
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parentfolder"

    .line 163
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "path"

    .line 165
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "syncaction"

    .line 167
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 166
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "syncdirection"

    .line 169
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "linenum"

    .line 171
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    const-string v3, "direction"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "type"

    .line 172
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "remote_uri"

    .line 176
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "tel:"

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    .line 178
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "address"

    .line 180
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->VALUE_ID_UNFETCHED:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "inserted_timestamp"

    .line 182
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "body"

    .line 183
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v2

    const-string/jumbo v3, "status"

    .line 186
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 185
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "read"

    .line 184
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "sim_imsi"

    .line 188
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 189
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide v5

    const-string v0, "_bufferdbid"

    .line 190
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v0, v4, v7, v8}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTablewithBufferDbId(IJ)I

    .line 192
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateSummaryTableMsgType(Ljava/lang/String;I)V

    .line 194
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0, v2, v5, v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$insertToSMSBufferDB$0(Landroid/content/ContentValues;)I
    .locals 2

    const-string v0, "group_id"

    .line 370
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$insertToSMSBufferDB$1(Landroid/content/ContentValues;)I
    .locals 2

    const-string v0, "hidden"

    .line 372
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I
    .locals 1

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTablewithResUrl(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public handleCrossSearchRcs(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    const-string v3, "correlation_tag=? AND (_id IS NULL OR _id = \'\')"

    .line 220
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "inserted_timestamp DESC LIMIT 1"

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 224
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 225
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertSmsUsingRcsBufferDbCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 222
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
    if-eqz p2, :cond_1

    .line 229
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1
.end method

.method public handleGroupSMSUpload(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "group_id"

    const-string v3, "_id"

    const-string v4, "hidden"

    .line 465
    iget v5, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySMSUseRowId(J)Landroid/database/Cursor;

    move-result-object v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_2

    .line 466
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    .line 468
    invoke-static {v5, v8}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertSMStoCV(Landroid/database/Cursor;Z)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    .line 469
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 470
    new-instance v6, Landroid/content/ContentValues;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 472
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mToAddress:Ljava/lang/String;

    const-string v12, "\\|"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 473
    array-length v12, v7

    if-ge v12, v8, :cond_0

    .line 474
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unexpected To Address size"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 478
    :cond_0
    :try_start_1
    aget-object v12, v7, v10

    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mBody:Ljava/lang/String;

    invoke-direct {v0, v6, v12, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->getGroupSMSCV(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "syncdirection"

    .line 479
    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "syncaction"

    .line 480
    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 482
    iget v12, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mRowId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v12, 0x3

    .line 484
    invoke-virtual {v0, v12, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    move-result-wide v13

    .line 486
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v6, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v15, "_bufferdbid=?"

    new-array v12, v8, [Ljava/lang/String;

    .line 488
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v12, v10

    const/4 v10, 0x3

    .line 489
    invoke-virtual {v0, v10, v6, v15, v12}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v10, v8

    .line 491
    :goto_1
    array-length v12, v7

    if-ge v10, v12, :cond_1

    .line 492
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 493
    new-instance v6, Landroid/content/ContentValues;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    invoke-direct {v6, v12}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 494
    aget-object v12, v7, v10

    iget-object v15, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mBody:Ljava/lang/String;

    invoke-direct {v0, v6, v12, v15}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->getGroupSMSCV(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    iget v12, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->VALUE_ID_UNFETCHED:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v16, v9

    const/4 v12, 0x3

    .line 498
    invoke-virtual {v0, v12, v6}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    move-result-wide v8

    .line 499
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleGroupSMSUpload insertedRowid:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " address:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v7, v10

    .line 500
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rowId: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v12, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v9, v16

    goto :goto_1

    :cond_1
    move-object/from16 v16, v9

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide v6, v13

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 465
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_2
    if-eqz v5, :cond_3

    .line 504
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v6
.end method

.method public insertSMSUsingObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;ZJ)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;",
            "ZJ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 49
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertSMSUsingObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " bufferId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 54
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "correlation_tag"

    .line 55
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "lastmodseq"

    .line 56
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 58
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "res_url"

    .line 57
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 60
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "parentfolder"

    .line 59
    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->decodeUrlFromServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "path"

    invoke-virtual {v4, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "syncaction"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "syncdirection"

    invoke-virtual {v4, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 65
    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "linenum"

    .line 64
    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    const-string v13, "IN"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/4 v14, 0x1

    if-eqz v11, :cond_0

    move v11, v14

    goto :goto_0

    :cond_0
    const/4 v11, 0x2

    :goto_0
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v15, "type"

    .line 66
    invoke-virtual {v4, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 70
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string/jumbo v15, "tel:"

    .line 71
    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    const-string v13, ""

    if-eqz v16, :cond_3

    .line 72
    invoke-virtual {v11, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 73
    :cond_3
    iget-boolean v15, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v15, :cond_4

    const-string/jumbo v15, "unknown_address"

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v11, v13

    :cond_4
    :goto_2
    const-string v13, "address"

    .line 77
    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v11, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->VALUE_ID_UNFETCHED:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "_id"

    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->getDateFromDateString(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "date"

    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "body"

    .line 80
    iget-object v13, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-virtual {v4, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-boolean v11, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v11, :cond_5

    .line 82
    iget v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SAFE_MESSAGE:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v13, "safe_message"

    invoke-virtual {v4, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    :cond_5
    iget-boolean v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    if-eqz v11, :cond_6

    .line 85
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 88
    :cond_6
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v11, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 89
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 91
    :cond_7
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v11, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string/jumbo v13, "read"

    if-eqz v11, :cond_8

    .line 92
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 96
    :cond_8
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v8, 0x0

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_3
    const-string/jumbo v8, "sim_imsi"

    .line 102
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x3

    if-eqz v2, :cond_9

    .line 105
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_bufferdbid=?"

    .line 106
    invoke-virtual {v0, v8, v4, v3, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    goto :goto_4

    .line 109
    :cond_9
    invoke-virtual {v0, v8, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertTable(ILandroid/content/ContentValues;)J

    move-result-wide v5

    if-le v3, v14, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-wide v3, v5

    move-object v5, v7

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->insertHiddenSMS(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Landroid/content/ContentValues;JLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_a
    move-wide v2, v5

    .line 115
    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert SMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " body: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " res url: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 117
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lastmdf: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;ZZ)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    move-object/from16 v5, p1

    .line 362
    invoke-static {v5, v4}, Lcom/sec/internal/ims/cmstore/utils/CursorContentValueTranslator;->convertSMStoCV(Landroid/database/Cursor;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 363
    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v6

    .line 364
    iget-object v7, v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertToSMSBufferDB size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isGoForwardSync: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isImsiUpdateReq "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 364
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v7, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 369
    invoke-static {v7}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder$$ExternalSyntheticLambda1;-><init>()V

    .line 371
    invoke-interface {v7, v8}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v7

    .line 368
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 373
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v10, v4

    const-wide/16 v11, 0x0

    .line 374
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v10, v13, :cond_9

    .line 375
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    const-string/jumbo v15, "type"

    .line 376
    invoke-virtual {v13, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    if-nez v15, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v8, "address"

    .line 382
    invoke-virtual {v13, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 383
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v9

    invoke-interface {v9, v8}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldSkipCmasSMS(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_5

    .line 387
    :cond_1
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v9

    .line 389
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "body"

    .line 390
    invoke-virtual {v13, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 387
    invoke-interface {v9, v8, v11, v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "correlation_tag"

    .line 392
    invoke-virtual {v13, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "read"

    .line 393
    invoke-virtual {v13, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_2

    move v8, v4

    goto :goto_1

    .line 395
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_1
    const-string/jumbo v9, "syncaction"

    const-string/jumbo v11, "syncdirection"

    if-eqz v2, :cond_3

    if-ne v8, v14, :cond_3

    .line 397
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 401
    :cond_3
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 400
    invoke-virtual {v13, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 402
    invoke-virtual {v13, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const-string v8, "lastmodseq"

    .line 405
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "linenum"

    .line 406
    invoke-virtual {v13, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    const-string/jumbo v8, "sim_imsi"

    .line 409
    iget-object v9, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-virtual {v13, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v8, "group_id"

    .line 412
    invoke-virtual {v13, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v13, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v11, v9

    goto :goto_3

    :cond_5
    const-wide/16 v11, 0x0

    :goto_3
    const-string v9, "hidden"

    .line 413
    invoke-virtual {v13, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v13, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_4

    :cond_6
    move v9, v4

    .line 414
    :goto_4
    iget-boolean v15, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v15, :cond_7

    const-wide/16 v15, 0x0

    cmp-long v17, v11, v15

    if-lez v17, :cond_7

    if-ne v9, v14, :cond_7

    .line 415
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 416
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 417
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "group sms hidden row update group id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    const/4 v1, 0x3

    .line 421
    invoke-virtual {v0, v1, v13}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J

    move-result-wide v1

    .line 424
    iget-boolean v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v4, :cond_8

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-lez v4, :cond_8

    if-nez v9, :cond_8

    .line 425
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " map appGroupID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " buffer group Id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->updateGroupId(J)V

    :cond_8
    move-wide v11, v1

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 430
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_a

    return-wide v11

    :cond_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public queryAllSMSfromTelephony()Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x1

    .line 278
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 279
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v1, 0x0

    const-string/jumbo v2, "type=? OR type=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaSMSfromTelephony()Landroid/database/Cursor;
    .locals 8

    .line 315
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySmsBufferDBLargestTelephonyId()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryDeltaSMSfromTelephony largest SMS _id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    const-string v2, "_id > ? AND sim_imsi=?"

    if-eqz v1, :cond_0

    .line 321
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

    .line 323
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v6, v6, 0x18

    int-to-long v6, v6

    .line 324
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 323
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryDeltaSMSfromTelephonyWoImsi()Landroid/database/Cursor;
    .locals 7

    .line 333
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->querySmsBufferDBLargestTelephonyIdWoImsi()I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryDeltaSMSfromTelephonyWoImsi largest SMS _id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    const-string v2, "_id > ? AND (sim_imsi IS NULL OR sim_imsi = \'\')"

    if-eqz v1, :cond_0

    .line 339
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

    .line 341
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v5, v5, 0x18

    int-to-long v5, v5

    .line 342
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 341
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryNonHiddenSMSwithGroupId(J)Landroid/database/Cursor;
    .locals 3

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryNonHiddenSMSwithGroupId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 589
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 590
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string v0, "group_id= ? AND hidden=?"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryReadSMSfromTelephony()Landroid/database/Cursor;
    .locals 4

    const-string v0, "_id"

    .line 352
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 355
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 356
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v2, 0x0

    const-string/jumbo v3, "read=? AND sim_imsi=?"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 510
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithResUrl(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSMessagesToUpload()Landroid/database/Cursor;
    .locals 8

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "querySMSMessagesToUpload()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " AND ((group_id !=0 AND hidden =0) OR group_id =0 OR group_id IS NULL)"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 259
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncdirection=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND (type = 2 OR type = 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sim_imsi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=? AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "res_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IS NULL OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'\') AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 265
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    int-to-long v6, v6

    .line 267
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 266
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSUseRowId(J)Landroid/database/Cursor;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->querySMSUseRowId(J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSfromTelephonyWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "querySMSfromTelephonyWithIMSI: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v3, v3, 0x18

    int-to-long v3, v3

    .line 291
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 290
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sim_imsi=? AND date > ?"

    goto :goto_0

    .line 294
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sim_imsi=?"

    .line 296
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSfromTelephonyWoIMSI()Landroid/database/Cursor;
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "querySMSfromTelephonyWoIMSI()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->isCmsEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mHoursToUploadMessageInitSync:I

    add-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    .line 307
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 306
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "(sim_imsi IS NULL OR sim_imsi = \'\' ) AND date > ?"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "sim_imsi IS NULL OR sim_imsi = \'\'"

    move-object v0, v1

    .line 311
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->mTelephonyStorage:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSwithGroupId(J)Landroid/database/Cursor;
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySMSwithGroupId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 581
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string v0, "group_id= ?"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySmsBufferDBLargestTelephonyId()I
    .locals 5

    const-string v0, "MAX(_id)"

    const-string v1, "_id"

    .line 538
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 542
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v3, 0x0

    const-string/jumbo v4, "sim_imsi=?"

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 543
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 542
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

    .line 546
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method public querySmsBufferDBLargestTelephonyIdWoImsi()I
    .locals 4

    const-string v0, "MAX(_id)"

    const-string v1, "_id"

    .line 551
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 555
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x0

    const-string/jumbo v3, "sim_imsi IS NULL OR sim_imsi = \'\'"

    invoke-virtual {p0, v0, v3, v2, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 556
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 555
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

    .line 559
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method public queryToCloudUnsyncedSms()Landroid/database/Cursor;
    .locals 6

    .line 521
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 522
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    .line 524
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 523
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND res_url IS NOT NULL AND date > ? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryToDeviceUnsyncedSms()Landroid/database/Cursor;
    .locals 3

    .line 532
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->IMSI:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncdirection=? AND sim_imsi=?"

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchSMSBufferUsingCorrelationTagForEarlierNmsEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchSMSBufferUsingCorrelationTagForEarlierNmsEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget v0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->VALUE_ID_UNFETCHED:I

    .line 203
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v2, 0x0

    const-string v3, "correlation_tag=? AND _id=?"

    const-string v4, "date DESC LIMIT 1"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresInterworkingCrossSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->handleCrossSearchRcs(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public searchSMSBufferUsingRowId(J)Landroid/database/Cursor;
    .locals 1

    .line 234
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p2, 0x0

    const-string v0, "_id=?"

    invoke-virtual {p0, p2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 571
    :cond_0
    filled-new-array {p1, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "date DESC LIMIT 1"

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const-string v2, "( group_cotag=? OR correlation_tag=? ) AND (res_url IS NULL OR res_url = \'\')"

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public updateGroupId(J)V
    .locals 3

    .line 439
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 440
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "group_id"

    .line 441
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x3

    const-string p2, "_bufferdbid=?"

    .line 442
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/sec/internal/ims/cmstore/querybuilders/QueryBuilderBase;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

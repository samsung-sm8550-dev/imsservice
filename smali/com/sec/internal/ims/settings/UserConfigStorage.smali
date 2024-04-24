.class public Lcom/sec/internal/ims/settings/UserConfigStorage;
.super Ljava/lang/Object;
.source "UserConfigStorage.java"


# static fields
.field private static final KEY_LOADED:Ljava/lang/String; = "loaded"

.field private static final LOG_TAG:Ljava/lang/String; = "UserConfigStorage"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mLock:Ljava/lang/Object;

.field private mMnoname:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    const-string v0, "UserConfigStorage()"

    const-string v1, "UserConfigStorage"

    .line 40
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    .line 44
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v0, 0x64

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private initUserConfiguration()V
    .locals 12

    const-string/jumbo v0, "user_config"

    .line 113
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v2, "initUserConfiguration()"

    const-string v3, "UserConfigStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "DEFAULT"

    .line 115
    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 120
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 121
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v4, "configurations"

    .line 126
    invoke-static {v1, v4}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    .line 128
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "mnoname"

    const/4 v8, 0x1

    if-eq v6, v8, :cond_7

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_4

    const-string v10, "name"

    .line 134
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 136
    :cond_2
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 137
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 139
    :cond_3
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "default"

    .line 143
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    .line 145
    iget-object v6, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 146
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_4

    .line 149
    :cond_6
    :goto_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 152
    :cond_7
    :goto_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 155
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string v3, "loaded"

    invoke-static {v1, v2, v0, v3, v8}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-static {v1, v2, v0, v7, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v2, "initUserConfiguration Exception"

    invoke-virtual {v1, p0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 165
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v1, "Dump of UserConfigStorage:"

    const-string v2, "UserConfigStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 3

    .line 48
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v1, "insert()"

    const-string v2, "UserConfigStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user_config"

    invoke-static {v0, p0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public isLoaded()Z
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "loaded"

    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const-string v0, "UserConfigStorage"

    .line 53
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v2, "query()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v2, "initUserConfig"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->initUserConfiguration()V

    .line 58
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user_config"

    invoke-static {v0, p0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getStringArray(ILandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 65
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object p1
.end method

.method public reset(Ljava/lang/String;)V
    .locals 7

    const-string v0, "UserConfigStorage"

    .line 79
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "UserConfigStorage"

    .line 84
    iget p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v1, "reset() sim not available"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    monitor-exit v0

    return-void

    .line 88
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user_config"

    const-string v4, "mnoname"

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", prevMnoName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 91
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 92
    iget v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user_config"

    const-string v6, "loaded"

    invoke-static {v2, v4, v5, v6, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v3, "prevMnoName was empty, put it back again"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 95
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "mnoname"

    invoke-static {v1, p0, v2, v3, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    monitor-exit v0

    return-void

    .line 99
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "UserConfigStorage"

    .line 100
    iget p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset() same mnoname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    monitor-exit v0

    return-void

    .line 104
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user_config"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->clear(ILandroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user_config"

    const-string v5, "loaded"

    invoke-static {v1, v2, v4, v5, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iput-object p1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->initUserConfiguration()V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

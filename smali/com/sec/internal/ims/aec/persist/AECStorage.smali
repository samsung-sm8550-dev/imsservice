.class public Lcom/sec/internal/ims/aec/persist/AECStorage;
.super Ljava/lang/Object;
.source "AECStorage.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsPushMsgStatus:Z

.field private final mPhoneId:I

.field protected mProviderSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSharedPreference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mIsPushMsgStatus:Z

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mContext:Landroid/content/Context;

    .line 22
    iput p2, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mPhoneId:I

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "aec_result_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mSharedPreference:Ljava/lang/String;

    .line 24
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/aec/persist/ProviderSettings;->getSettingMap(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized getIntValue(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "0"

    .line 34
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 36
    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getServiceFlowURL()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/application/vowifi/serviceflow_url"

    .line 259
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getServiceFlowUserData()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/application/vowifi/serviceflow_userdata"

    .line 263
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mSharedPreference:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    .line 42
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getVoLTEMessageForIncompatible()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/application/volte/messageforincompatible"

    .line 203
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized setMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAkaToken()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/token/token"

    .line 163
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ap2003"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "ap2004"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForSMSoIp()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, "ap2005"

    .line 322
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultEntitlement()Ljava/lang/String;
    .locals 2

    .line 392
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, "incompatible"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "default_entitlement_status"

    .line 395
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDomainFromImpi()Z
    .locals 1

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "entitlement_domain_from_impi"

    .line 273
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementDomain()Ljava/lang/String;
    .locals 2

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "entitlement_domain"

    .line 294
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEntitlementForSMSoIp()Z
    .locals 1

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "entitlement_for_smsoip"

    .line 381
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoLte()Z
    .locals 1

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "entitlement_for_volte"

    .line 367
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoWiFi()Z
    .locals 1

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "entitlement_for_vowifi"

    .line 374
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementInitFromApp()Z
    .locals 1

    .line 357
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "entitlement_init_from_app"

    .line 360
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementPath()Ljava/lang/String;
    .locals 2

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "entitlement_path"

    .line 308
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEntitlementPort()Ljava/lang/String;
    .locals 2

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "entitlement_port"

    .line 301
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEntitlementVersion()Ljava/lang/String;
    .locals 2

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, "1.0"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "entitlement_version"

    .line 287
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHttpResponse()I
    .locals 1

    const-string/jumbo v0, "root/response"

    .line 167
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/imsi"

    .line 159
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotifAction()Ljava/lang/String;
    .locals 2

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "notif_action"

    .line 338
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "0"

    .line 339
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getNotifIgnoreTimestamp()Z
    .locals 1

    .line 343
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "notif_ignore_timestamp"

    .line 346
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getNotifSenderId()Ljava/lang/String;
    .locals 2

    .line 328
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "notif_senderid"

    .line 331
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNotifToken()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/push-notif-token"

    .line 183
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPsDataOffExempt()Z
    .locals 1

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "ps_data_off_exempt"

    .line 353
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSMSoIPEntitlementStatus()I
    .locals 1

    const-string/jumbo v0, "root/application/smsoip/entitlementstatus"

    .line 207
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSNIInHeader()Z
    .locals 1

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "sni_in_header"

    .line 280
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected getServerVendor()Ljava/lang/String;
    .locals 2

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "server_vendor"

    .line 416
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStoredConfiguration()Landroid/os/Bundle;
    .locals 3

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phoneId"

    .line 137
    iget v2, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "version"

    .line 139
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "http_response"

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "volteEntitlementstatus"

    .line 141
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "volteMessageForIncompatible"

    .line 142
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEMessageForIncompatible()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "vowifiActivationMode"

    .line 143
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "vowifiEntitlementstatus"

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "prov_status"

    .line 145
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiProvStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "tc_status"

    .line 146
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiTcStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "addr_status"

    .line 147
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAddrStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "serviceflow_url"

    .line 148
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getServiceFlowURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "serviceflow_userdata"

    .line 149
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getServiceFlowUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "vowifiMessageForIncompatible"

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiMessageForIncompatible()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "smsoipEntitlementstatus"

    .line 151
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSMSoIPEntitlementStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEAutoOn()Z

    move-result v1

    const-string/jumbo v2, "volteAutoOn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAutoOn()Z

    move-result p0

    const-string/jumbo v1, "vowifiAutoOn"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/timestamp"

    .line 187
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTokenValidity()I
    .locals 1

    const-string/jumbo v0, "root/token/validity"

    .line 195
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVersion()I
    .locals 1

    const-string/jumbo v0, "root/vers/version"

    .line 175
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    .line 179
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVersionValidity()I
    .locals 1

    const-string/jumbo v0, "root/vers/validity"

    .line 191
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoLTEAutoOn()Z
    .locals 1

    .line 399
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "volte_auto_on"

    .line 402
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getVoLTEEntitlementStatus()I
    .locals 1

    const-string/jumbo v0, "root/application/volte/entitlementstatus"

    .line 199
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVoWiFiActivationMode()I
    .locals 4

    .line 211
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiProvStatus()I

    move-result v1

    .line 212
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiTcStatus()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAddrStatus()I

    move-result v3

    .line 211
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode(IIII)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiActivationMode(IIII)I
    .locals 5

    .line 236
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementInitFromApp()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mIsPushMsgStatus:Z

    if-eqz v4, :cond_1

    .line 241
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setPushMsgStatus(Z)V

    return v1

    :cond_1
    if-eqz p3, :cond_4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    if-eq p3, v2, :cond_3

    if-eq p4, v2, :cond_3

    if-ne p2, v2, :cond_5

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v0

    :cond_5
    if-ne p1, v3, :cond_9

    if-eq p2, v3, :cond_6

    if-ne p2, v0, :cond_9

    :cond_6
    if-eq p3, v3, :cond_7

    if-ne p3, v0, :cond_9

    :cond_7
    if-eq p4, v3, :cond_8

    if-ne p4, v0, :cond_9

    :cond_8
    return v2

    :cond_9
    :goto_1
    return v1
.end method

.method protected getVoWiFiAddrStatus()I
    .locals 1

    const-string/jumbo v0, "root/application/vowifi/addrstatus"

    .line 232
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiAutoOn()Z
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "vowifi_auto_on"

    .line 409
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getVoWiFiEntitlementStatus()I
    .locals 1

    const-string/jumbo v0, "root/application/vowifi/entitlementstatus"

    .line 216
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiMessageForIncompatible()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "root/application/vowifi/messageforincompatible"

    .line 220
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVoWiFiProvStatus()I
    .locals 1

    const-string/jumbo v0, "root/application/vowifi/provstatus"

    .line 224
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiTcStatus()I
    .locals 1

    const-string/jumbo v0, "root/application/vowifi/tc_status"

    .line 228
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isSupportOnlyVoWiFibyUserAction()Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementInitFromApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAutoOn()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setAkaToken(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "root/token/token"

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConfiguration(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method public setDefaultValues(Ljava/lang/String;)V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getDefaultEntitlement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "root/vers/version"

    .line 70
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "root/vers/validity"

    const-string v1, "0"

    .line 71
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "root/token/token"

    const-string v2, ""

    .line 72
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "root/token/validity"

    .line 73
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "root/push-notif-token"

    .line 74
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string/jumbo v3, "root/application/volte/entitlementstatus"

    .line 75
    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string/jumbo v3, "root/application/vowifi/entitlementstatus"

    .line 76
    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string/jumbo v2, "root/application/vowifi/provstatus"

    const-string v3, "2"

    .line 78
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "root/application/vowifi/tc_status"

    .line 79
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "root/application/vowifi/addrstatus"

    .line 80
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, p1

    :cond_3
    const-string/jumbo p1, "root/application/smsoip/entitlementstatus"

    .line 82
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpResponse(I)V
    .locals 1

    const-string/jumbo v0, "root/response"

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "root/imsi"

    .line 86
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNotifToken(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "root/push-notif-token"

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPushMsgStatus(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mIsPushMsgStatus:Z

    return-void
.end method

.method public setSMSoIPEntitlementStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string/jumbo v0, "root/application/smsoip/entitlementstatus"

    .line 114
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "root/vers/version"

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVoLteEntitlementStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string/jumbo v0, "root/application/volte/entitlementstatus"

    .line 106
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVoWiFiEntitlementStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string/jumbo v0, "root/application/vowifi/entitlementstatus"

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

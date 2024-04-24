.class public abstract Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;
.super Ljava/lang/Object;
.source "DefaultMnoStrategy.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;


# static fields
.field protected static final MAX_RETRY_COUNT_AFTER_REGI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DefaultMnoStrategy"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mPhoneId:I

.field protected mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

.field protected mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mContext:Landroid/content/Context;

    .line 70
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    .line 71
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/settings/RcsPolicySettings;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    return-void
.end method


# virtual methods
.method public boolSetting(Ljava/lang/String;)Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readBool(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public calSubscribeDelayTime(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)J
    .locals 0

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public calThrottledPublishRetryDelayTime(JJ)J
    .locals 0

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public changeServiceDescription()V
    .locals 0

    .line 0
    return-void
.end method

.method public checkCapDiscoveryOption()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation
.end method

.method public abstract checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Z)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation
.end method

.method public checkChatbotMessagingTech(Lcom/sec/internal/ims/servicemodules/im/ImConfig;ZLjava/util/Set;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;"
        }
    .end annotation

    .line 529
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object p0
.end method

.method protected checkFtHttpCapability(Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)Z"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 356
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v0, "checkFtHttpCapability: capDiscModule is null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 359
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 360
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    .line 361
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkFtHttpCapability, capx: = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_3

    .line 362
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v2, v4}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p1, "No FT HTTP capability"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final checkImsiBasedRegi(Lcom/sec/ims/ImsRegistration;)Z
    .locals 4

    const-string v0, "check_imsibased_regi"

    .line 489
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 497
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 502
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    .line 503
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 504
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkImsiBasedRegi: impu "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 506
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public checkMainSwitchOff(Landroid/content/Context;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    return-object p1
.end method

.method public checkSlmFileType(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected checkUserAvailableOffline(Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)Z"
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 440
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v0, "checkUserAvailableOffline: capDiscModule is null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 443
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 444
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    .line 445
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUserAvailableOffline, capx: = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-eqz v5, :cond_4

    .line 447
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {v2, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    if-eqz v5, :cond_5

    .line 448
    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {v2, v7}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    goto :goto_3

    :cond_5
    move v7, v1

    :goto_3
    if-eqz v5, :cond_1

    .line 449
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    .line 450
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p1, "USER_AVAILABLE_OFFLINE..!!"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v4

    :cond_6
    return v1
.end method

.method public convertToImDirection(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 0

    .line 343
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method public forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .locals 2

    .line 106
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v1, "getCapDiscModule: getInstance is null"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesInitialInfo(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 7

    .line 544
    new-instance p0, Lcom/sec/ims/options/Capabilities;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->resetFeatures()V

    .line 546
    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    return-object p0
.end method

.method public getErrorReasonForStrategyResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_1

    .line 464
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p0, p1, :cond_0

    .line 465
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p0, p1, :cond_1

    .line 466
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFtHttpCsUri(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;ZZ)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZZ)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getFtHttpRetryInterval(II)I
    .locals 0

    .line 0
    return p1
.end method

.method public getFtHttpSessionRetryTimer(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;
    .locals 0

    .line 424
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 0

    .line 195
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method

.method protected getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .locals 2

    .line 114
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v1, "getImModule: getInstance is null"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    return-object p0
.end method

.method public getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 0

    .line 382
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object p0
.end method

.method public getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 459
    sget-object p0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, p0, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getNextFileTransferAutoResumeTimer(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getPolicyType()Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0
.end method

.method public getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 0

    .line 178
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    if-ge p1, p0, :cond_0

    .line 179
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getRetryStrategy FORBIDDEN_NO_WARNING_HEADER; currentRetryCount= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_REGI:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0

    .line 182
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object p0
.end method

.method public getSessionStopReason(Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    .locals 0

    if-eqz p1, :cond_0

    .line 483
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->CLOSE_1_TO_1_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    :goto_0
    return-object p0
.end method

.method protected getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 1

    .line 153
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->isSlmEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public abstract getThrottledDelay(J)J
.end method

.method public getUploadedFileFallbackSLMTech()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    .line 609
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    return-object p0
.end method

.method public getftResumableOption(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;ZLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 0

    .line 205
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->LOW_MEMORY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0

    .line 206
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0
.end method

.method public abstract handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public abstract handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public handleFtHttpDownloadError(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;
    .locals 5

    .line 392
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 395
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0x191

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x193

    if-eq v1, v2, :cond_1

    const/16 p0, 0x1f7

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Retry-After"

    .line 397
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/RetryTimerUtil;->getRetryAfter(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 402
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    goto :goto_0

    .line 407
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNAUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p0, p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 414
    :goto_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V

    return-object p0
.end method

.method public handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    .line 387
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public abstract handleFtMsrpInterruption(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public abstract handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public abstract handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
.end method

.method public handleSendingFtMsrpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 0

    .line 173
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object p0
.end method

.method public abstract handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p7

    .line 159
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    if-eqz p6, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p2, p3, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p2, p3, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, p2, :cond_1

    .line 165
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    :cond_1
    return-object p0
.end method

.method public handleSessionFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 0

    .line 641
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object p0
.end method

.method public abstract handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
.end method

.method hasOneOfFeatures(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    .line 126
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasOneOfFeatures:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getFeature()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", features="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", ret=false"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return v0
.end method

.method hasOneOfFeaturesAvailable(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v1

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    .line 139
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasOneOfFeaturesAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getFeature()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", features="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", ret=false"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    return v0
.end method

.method public intSetting(Ljava/lang/String;)I
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isBMode(Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
.end method

.method public abstract isCustomizedFeature(J)Z
.end method

.method public abstract isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z
.end method

.method public isDisplayBotError()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDisplayWarnText()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isFTHTTPAutoResumeAndCancelPerConnectionChange()Z
.end method

.method public isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")Z"
        }
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtDefaultMech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object p1

    .line 349
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->isFtHttpRegistered()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 350
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->checkFtHttpCapability(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract isFirstMsgInvite(Z)Z
.end method

.method public isFtHttpOnlySupported(Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected isFtHttpRegistered()Z
    .locals 2

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string v1, "ft_http"

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHTTPUsedForEmptyFtHttpPOST()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isLocalConfigUsed()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isNeedToReportToRegiGvn(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
.end method

.method public isPresenceReadyToRequest(ZZ)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isRemoteConfigNeeded(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isResendFTResume(Z)Z
.end method

.method public isRevocationAvailableMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected isSlmEnabled()Z
    .locals 3

    .line 147
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string/jumbo v2, "slm"

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->isServiceRegistered(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    .line 149
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->ENABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z
    .locals 6

    .line 223
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result p4

    const/4 p5, 0x5

    const/4 v0, 0x0

    if-ne p4, p5, :cond_0

    .line 224
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "isSubscribeThrottled: retried subscription"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 228
    :cond_0
    new-instance p4, Ljava/util/Date;

    invoke-direct {p4}, Ljava/util/Date;-><init>()V

    .line 229
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 231
    sget-object p5, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubscribeThrottled: interval from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", offset "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " sourceThrottlePublish "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p5, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long p0, v1, p2

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isTdelay(J)J
    .locals 0

    .line 0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final isWarnSizeFile(Landroid/net/Network;JJZ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    cmp-long p1, p2, p4

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ignore_wifi_warnsize"

    .line 519
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p6, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public loadRcsSettings(Z)Z
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->load(Z)Z

    move-result p0

    return p0
.end method

.method public abstract needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
.end method

.method public needPoll(Lcom/sec/ims/options/Capabilities;J)Z
    .locals 7

    .line 264
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result p0

    return p0
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z
    .locals 1

    .line 240
    sget-object p5, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 p6, 0x0

    if-ne p2, p5, :cond_0

    return p6

    :cond_0
    const/4 p5, 0x1

    if-nez p1, :cond_1

    .line 244
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "needRefresh: Capability is null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p5

    .line 246
    :cond_1
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPhoneId:I

    const-string p2, "needRefresh: fetch failed capabilities"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p5

    .line 249
    :cond_2
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_3

    return p5

    .line 251
    :cond_3
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_4

    return p5

    .line 253
    :cond_4
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_5

    return p5

    .line 255
    :cond_5
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_6

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result p0

    if-eqz p0, :cond_6

    return p5

    .line 258
    :cond_6
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, p0, :cond_7

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result p0

    if-eqz p0, :cond_7

    move p6, p5

    :cond_7
    return p6
.end method

.method public abstract needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
.end method

.method public abstract needStopAutoRejoin(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
.end method

.method public needToCapabilityCheckForImdn(Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public needUnpublish(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public needUnpublish(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setPolicyType(Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mRcsPolicyType:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-void
.end method

.method public shouldRestartSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 2

    .line 619
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "gone_should_endsession"

    .line 626
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public startServiceBasedOnOmaDmNodes(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public stringArraySetting(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readStringArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public stringSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultMnoStrategy;->mPolicySettings:Lcom/sec/internal/ims/settings/RcsPolicySettings;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract updateAvailableFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
.end method

.method public updateCapDiscoveryOption()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
.end method

.method public updateLocalConfigUsedState(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateOmaDmNodes(I)V
    .locals 0

    .line 0
    return-void
.end method

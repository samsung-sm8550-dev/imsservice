.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;
.super Ljava/lang/Object;
.source "CapabilityUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityUtil"


# instance fields
.field protected mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 68
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    .line 69
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private checkChatFeatures(Ljava/util/Set;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string p0, "chatbot-communication"

    .line 294
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 295
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    or-long/2addr v2, v4

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    :cond_0
    const-string p0, "ft_http"

    .line 299
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 300
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    or-int/2addr p0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    :cond_1
    const-string/jumbo p0, "slm"

    .line 303
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 304
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, p0

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    :cond_2
    const-string p0, "im"

    .line 307
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 308
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    or-int/2addr p0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    or-int/2addr p0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    or-int/2addr p0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    or-int/2addr p0, v2

    int-to-long v2, p0

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    or-long/2addr v2, v4

    or-long/2addr v0, v2

    :cond_3
    const-string p0, "ft"

    .line 313
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 314
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    or-int/2addr p0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    or-int/2addr p0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    or-int/2addr p0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    :cond_4
    const-string p0, "plug-in"

    .line 318
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 319
    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    or-long/2addr v0, p0

    :cond_5
    return-wide v0
.end method

.method private checkCshFeatures(Ljava/util/Set;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string p0, "is"

    .line 328
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 329
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    :cond_0
    const-string/jumbo p0, "vs"

    .line 332
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 333
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    :cond_1
    const-string p0, "gls"

    .line 336
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 337
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL_FT:I

    or-int/2addr p0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    or-int/2addr p0, v2

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    or-int/2addr p0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    :cond_2
    const-string p0, "ec"

    .line 341
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 342
    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    or-long/2addr p0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    or-long/2addr p0, v2

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    or-long/2addr p0, v2

    or-long/2addr v0, p0

    :cond_3
    return-wide v0
.end method

.method private checkRcsFeatures(Ljava/util/Set;II)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)J"
        }
    .end annotation

    const-string/jumbo v0, "presence"

    .line 351
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 352
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    or-int/2addr v0, v3

    int-to-long v3, v0

    or-long/2addr v1, v3

    :cond_0
    const-string v0, "lastseen"

    .line 355
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    or-long/2addr v1, v3

    :cond_1
    const-string v0, "mmtel"

    .line 359
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isMmtelServiceAvailable(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 360
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    or-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 363
    :cond_2
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    const-string v4, "mmtel-video"

    .line 364
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_3

    .line 365
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isMmtelServiceAvailable(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 366
    :cond_4
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    or-int/2addr v3, v4

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    or-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v1, v3

    .line 370
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isMmtelServiceAvailable(II)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "mmtel-call-composer"

    .line 371
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 372
    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    or-long/2addr v1, p0

    :cond_6
    return-wide v1
.end method

.method public static hasFeature(JJ)Z
    .locals 0

    .line 0
    and-long/2addr p0, p2

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static reportErrorToApp(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;I)V
    .locals 1

    .line 813
    :try_start_0
    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 815
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportErrorToApp: failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityUtil"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 660
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 661
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnList()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    .line 662
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 664
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "blockOptionsToOwnUri: Block for sending OPTIONS to own number "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityUtil"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method changeParalysed(ZI)V
    .locals 2

    const-string v0, "changeParalysed"

    const-string v1, "CapabilityUtil"

    .line 226
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getParalysed(I)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->setParalysed(ZI)V

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "call unpublish"

    .line 231
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->unpublish(I)V

    :cond_0
    if-nez p1, :cond_1

    .line 240
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCapabilityCacheEmpty(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 241
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    :cond_1
    return-void
.end method

.method checkModuleReady(I)Z
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CapabilityUtil"

    if-nez v0, :cond_0

    const-string p0, "checkModuleReady: module is disabled"

    .line 674
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "checkModuleReady: uriGenerator is null"

    .line 679
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 683
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "checkModuleReady: MnoStrategy is null"

    .line 684
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "checkModuleReady: config is null"

    .line 689
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 693
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "checkModuleReady: mConfig.isAvailable == false"

    .line 694
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method extractMsisdnFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CapabilityUtil"

    const-string p1, "extractMsisdnFromUri uri is empty"

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, ":"

    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    add-int/lit8 p0, p0, 0x1

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p0, "@"

    .line 104
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_2

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method filterEnrichedCallFeatures(J)J
    .locals 2

    const-string p0, "CapabilityUtil"

    const-string v0, "filterEnrichedCallFeatures: disable CallComposer, PostCall, ISH, VSH, ShareMap and ShareSketch"

    .line 389
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int p0, p0

    int-to-long v0, p0

    and-long p0, p1, v0

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int p2, p2

    int-to-long v0, p2

    and-long/2addr p0, v0

    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long v0, v0

    and-long/2addr p0, v0

    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long v0, v0

    and-long/2addr p0, v0

    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    not-long v0, v0

    and-long/2addr p0, v0

    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    not-long v0, v0

    and-long/2addr p0, v0

    return-wide p0
.end method

.method filterFeaturesWithCallState(JZLjava/lang/String;)J
    .locals 0

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    return-wide p1

    :cond_1
    :goto_0
    const-string p0, "CapabilityUtil"

    const-string p3, "filterFeaturesWithCallState: disable ISH, VSH, ShareMap and ShareSketch"

    .line 380
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int p0, p0

    int-to-long p3, p0

    and-long p0, p1, p3

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int p2, p2

    int-to-long p2, p2

    and-long/2addr p0, p2

    sget-wide p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long p2, p2

    and-long/2addr p0, p2

    sget-wide p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    not-long p2, p2

    and-long/2addr p0, p2

    return-wide p0
.end method

.method filterFeaturesWithService(JLjava/util/Set;II)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)J"
        }
    .end annotation

    if-nez p3, :cond_0

    return-wide p1

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterFeaturesWithService: features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUtil"

    invoke-static {v1, p5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkChatFeatures(Ljava/util/Set;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    .line 281
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkCshFeatures(Ljava/util/Set;)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 282
    invoke-direct {p0, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkRcsFeatures(Ljava/util/Set;II)J

    move-result-wide p3

    or-long/2addr p3, v0

    and-long p0, p1, p3

    return-wide p0
.end method

.method filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J
    .locals 5

    const-string v0, "CapabilityUtil"

    if-nez p3, :cond_0

    const-string p0, "Request URI is null, return existing availFeatures"

    .line 405
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    .line 408
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request uri["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] callNumber["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_1

    .line 413
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int p0, p0

    int-to-long p3, p0

    and-long p0, p1, p3

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int p2, p2

    int-to-long p2, p2

    and-long/2addr p0, p2

    sget-wide p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long p2, p2

    and-long/2addr p0, p2

    sget-wide p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    :goto_0
    not-long p2, p2

    and-long/2addr p0, p2

    return-wide p0

    .line 420
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    .line 422
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 423
    invoke-virtual {p0, p4, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move-object p0, v4

    :goto_1
    if-eqz v4, :cond_3

    move-object p3, v4

    .line 426
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizedReqUri["

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] normalizedCallNumber["

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 426
    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p3, p0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "we\'re not in call with "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", remove incall features"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    not-int p0, p0

    int-to-long p3, p0

    and-long p0, p1, p3

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    not-int p2, p2

    int-to-long p2, p2

    and-long/2addr p0, p2

    sget-wide p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    not-long p2, p2

    and-long/2addr p0, p2

    sget-wide p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    goto :goto_0

    .line 436
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "we\'re in call with "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", don\'t change incall features"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method filterServicesWithReg(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;II)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "II)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 441
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 442
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 443
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 444
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    .line 445
    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v0

    .line 446
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 447
    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/4 v0, 0x0

    .line 450
    invoke-interface {p2, p0, p3, v0, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object p0

    .line 451
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_2

    .line 453
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 454
    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 455
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I
    .locals 4

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 115
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getNonRCScapInfoExpiry()I

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCapInfoExpiry: capex.uri() ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is chatbot & offline "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityUtil"

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapInfoExpiry()I

    move-result p0

    :goto_0
    return p0
.end method

.method getDelayTimeToPoll(JI)J
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 165
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 166
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 167
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result p0

    int-to-long v4, p0

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getThrottledDelay(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 168
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, p1

    sub-long/2addr v3, v5

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDelayTimeToPoll: delay = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", lastListSubscribeStamp = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityUtil"

    invoke-static {p1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long p0, v3, v1

    if-lez p0, :cond_1

    move-wide v1, v3

    :cond_1
    return-wide v1
.end method

.method getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 204
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_1

    .line 205
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method getRandomizedDelayForPeriodicPolling(IJ)J
    .locals 2

    .line 771
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRandomizedDelayForPeriodicPolling: delay: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapabilityUtil"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 772
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    mul-double/2addr p0, v0

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    add-double/2addr p0, v0

    long-to-double p2, p2

    mul-double/2addr p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method handleRemovedNumbers(I)V
    .locals 6

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAndFlushRemovedNumbers()Ljava/util/List;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemovedNumbers: removed numbers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityUtil"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 254
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRemovedNumbers: updatePollList, removed uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->remove(Ljava/util/List;)V

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    invoke-interface {p0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->removePresenceCache(Ljava/util/List;I)V

    :cond_2
    return-void
.end method

.method isAllowedPrefixesUri(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 4

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 137
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p1

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p1, v3, :cond_1

    if-nez v1, :cond_1

    return v2

    .line 142
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const-string p1, "+82114"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapAllowedPrefixes()Ljava/util/Set;

    move-result-object p0

    .line 147
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    if-nez v1, :cond_3

    return v0

    .line 151
    :cond_3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Pattern;

    .line 152
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_5
    return v0

    :cond_6
    return v2
.end method

.method isCapabilityCacheEmpty(I)Z
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getCapabilitiesCache()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/options/Capabilities;

    .line 216
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method isCapabilityDiscoveryDisabled(Landroid/content/Context;I)Z
    .locals 3

    const-string p0, "options"

    .line 82
    invoke-static {p1, p0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string/jumbo v2, "presence"

    .line 84
    invoke-static {p1, v2, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method isCheckRcsSwitch(Landroid/content/Context;)Z
    .locals 4

    .line 74
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const-string/jumbo v3, "rcsswitch"

    .line 75
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-static {p1, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method isMmtelServiceAvailable(II)Z
    .locals 2

    .line 465
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 466
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    .line 468
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x12

    if-eq p1, p0, :cond_2

    .line 475
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 476
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 479
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method isPhoneLockState(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "ro.crypto.type"

    const-string v1, ""

    .line 485
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vold.decrypt"

    .line 486
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "block"

    .line 489
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "CapabilityUtil"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "trigger_restart_framework"

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "isPhoneLockState: not required sync contact in lock state"

    .line 492
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x1201000a

    const-string p1, "N,LOCKED"

    .line 493
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v2

    .line 498
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isPhoneLockState : rcs switch is disabled"

    .line 499
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isRegistrationSupported(Lcom/sec/ims/ImsRegistration;)Z
    .locals 2

    const-string/jumbo p0, "presence"

    .line 174
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "CapabilityUtil"

    if-nez p0, :cond_0

    const-string p0, "options"

    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "isRegistrationSupported: no presence and options in service list"

    .line 175
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "isRegistrationSupported: getRcsStrategy is null"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkImsiBasedRegi(Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "isRegistrationSupported: isImsiBasedRegi is true"

    .line 186
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method migrateSharedprefWithPhoneId(Landroid/content/Context;)V
    .locals 7

    const-string p0, "capdiscovery"

    const/4 v0, 0x0

    .line 777
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "CapabilityUtil"

    if-nez v1, :cond_0

    const-string p0, "migrateSharedprefWithPhoneId: open error"

    .line 779
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 783
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    const-string v4, "migrateSharedprefWithPhoneId"

    .line 784
    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 786
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capdiscovery_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 787
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 789
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 790
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 791
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 792
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 793
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 794
    :cond_2
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 795
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 796
    :cond_3
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_4

    .line 797
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 798
    :cond_4
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 799
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 802
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 804
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 806
    invoke-virtual {p1, p0}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "Failed delete shared preferences"

    .line 807
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method onImsSettingsUpdate(Landroid/content/Context;I)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 560
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "omadm/./3GPP_IMS/EAB_SETTING"

    .line 562
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 563
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 564
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isPublishNotFoundProgress(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 565
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->changeParalysed(ZI)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->reset(I)V

    .line 569
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 570
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->changeParalysed(ZI)V

    .line 571
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 573
    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateOmaDmNodes(I)V

    :cond_1
    return-void

    .line 579
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p1

    const-string v0, "CapabilityUtil"

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "onImsSettingsUpdate: refresh configuration"

    .line 584
    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->readConfig(I)V

    .line 588
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 590
    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateOmaDmNodes(I)V

    .line 593
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isPollingPeriodUpdated()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 594
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 595
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string p0, "onImsSettingsUpdate: not ready"

    .line 580
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onNetworkChanged(Landroid/content/Context;Lcom/sec/internal/constants/ims/os/NetworkEvent;IILjava/util/Map;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            ")V"
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityUtil"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p4, p3, :cond_0

    const-string p0, "onNetworkChanged: mAvailablePhoneId = ! phoneId"

    .line 604
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 608
    :cond_0
    iget p4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eqz p4, :cond_1

    if-eqz p6, :cond_2

    iget v0, p6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, p4, :cond_2

    :cond_1
    iget-boolean p4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez p4, :cond_2

    return-void

    .line 613
    :cond_2
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p4

    .line 614
    iget-boolean v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-nez v0, :cond_4

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkType(II)V

    goto :goto_0

    .line 617
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget v2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkType(II)V

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 621
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget v2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v2}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v2

    invoke-virtual {v0, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setNetworkClass(II)V

    .line 622
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p4, v0, :cond_8

    .line 623
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p6, :cond_5

    goto :goto_1

    .line 626
    :cond_5
    iget p1, p6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isMmtelServiceAvailable(II)Z

    move-result p1

    iget p4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p0, p4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isMmtelServiceAvailable(II)Z

    move-result p4

    if-eq p1, p4, :cond_c

    .line 627
    iget-boolean p1, p6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez p1, :cond_6

    iget-boolean p1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-nez p1, :cond_6

    const-string p0, "onNetworkChanged: wifi connected, but epdg is not yet"

    .line 628
    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 631
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onNetworkChanged: update capability"

    invoke-virtual {p1, p3, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 632
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    goto :goto_4

    :cond_7
    :goto_1
    return-void

    .line 635
    :cond_8
    invoke-static {p4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "onNetworkChanged: setOwnCapabilities(false) is called"

    .line 636
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_b

    move p2, p4

    :goto_2
    const/4 p3, 0x2

    if-ge p2, p3, :cond_c

    .line 639
    invoke-static {p1, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_3

    .line 643
    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 644
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 645
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3, p2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    :cond_a
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 649
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 650
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 651
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    :cond_c
    :goto_4
    return-void
.end method

.method onServiceSwitched(ILandroid/content/ContentValues;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ContentValues;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "onServiceSwitched: "

    const-string v1, "CapabilityUtil"

    .line 703
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v3, "presence"

    .line 710
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "options"

    .line 711
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v2

    move v3, p2

    .line 714
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v3, :cond_3

    .line 715
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setPresenceSwitch(IZ)V

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceSwitched: presence changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    .line 719
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, p2, :cond_4

    .line 720
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->settOptionsSwitch(IZ)V

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceSwitched: options changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v3, v0

    :cond_4
    if-eqz v3, :cond_6

    .line 726
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p4, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 727
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCapabilityModuleOn(Z)V

    .line 728
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stop()V

    goto :goto_3

    :cond_5
    if-nez p5, :cond_6

    .line 731
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setCapabilityModuleOn(Z)V

    .line 732
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->start()V

    :cond_6
    :goto_3
    return-void
.end method

.method onUserSwitched()V
    .locals 4

    .line 740
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "CapabilityUtil"

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserSwitched: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 743
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 744
    monitor-enter v2

    .line 745
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 746
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/Set;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 746
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getActiveDataPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 750
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getActiveDataPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CapabilityUtil"

    const-string v1, "onUserSwitched: start ContactCache"

    .line 751
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->stop()V

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->start()V

    .line 754
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    :cond_1
    return-void
.end method

.method sendGateMessage(Lcom/sec/ims/util/ImsUri;JI)V
    .locals 5

    const-string p0, ""

    const-string v0, "CapabilityUtil"

    .line 508
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "sendGateMessage"

    .line 509
    invoke-static {v0, p4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object p4

    .line 511
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 512
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p4, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p4

    const-string v2, " "

    invoke-virtual {p4, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 513
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {p4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "OFF"

    .line 515
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v2, v2

    invoke-static {p2, p3, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long v2, v2

    .line 516
    invoke-static {p2, p3, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string v1, "ON"

    :cond_1
    const-string p2, "GATE"

    .line 520
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>IPME_CAPABILITY_"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_+"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</GATE-M>"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse uri : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method sendRCSCInfoToHQM(I)V
    .locals 2

    if-gez p1, :cond_0

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRCSCInfoToHQM : phoneId is invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapabilityUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 553
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->sendRCSCInfoToHQM()V

    return-void
.end method

.method sendRCSLInfoToHQM(Landroid/content/Context;ZI)V
    .locals 1

    if-gez p3, :cond_0

    .line 534
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendRCSLInfoToHQM : phoneId is invalid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "CapabilityUtil"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    .line 537
    :cond_0
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    xor-int/lit8 p2, p2, 0x1

    .line 538
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "LTCH"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "RCSL"

    .line 539
    invoke-static {p3, p1, p2, p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

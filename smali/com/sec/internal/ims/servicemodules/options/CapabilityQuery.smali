.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;
.super Ljava/lang/Object;
.source "CapabilityQuery.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityQuery"

.field private static final SHORT_NUMBER_DELAY:J = 0x7d0L

.field private static final SHORT_NUMBER_LENGTH:I = 0x8


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 49
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    return-void
.end method

.method private isNeedToRefreshInMsgCtxForResolvingLatching(Lcom/sec/ims/options/CapabilityRefreshType;ILcom/sec/ims/util/ImsUri;)Z
    .locals 4

    .line 463
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "use_xms_receiver_for_resolving_latching"

    .line 464
    invoke-static {p2, p1, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 465
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->isExistInLatchingList(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 466
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p3, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->checkTimestampInOptionsList(Lcom/sec/ims/util/ImsUri;JI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 2

    const-string v0, "CapabilityQuery"

    const-string v1, "copyToOwnCapabilities: CAPABILITY DISCOVERY MECHANISM is off. Copy to OwnCapabilities"

    .line 338
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    .line 342
    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->setUri(Lcom/sec/ims/util/ImsUri;)V

    .line 343
    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 344
    invoke-virtual {p0, p2}, Lcom/sec/ims/options/Capabilities;->setNumber(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
    .locals 2

    const-string v0, "getAllCapabilities:"

    const-string v1, "CapabilityQuery"

    .line 452
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "getAllCapabilities: CapabilityDiscoveryModule is disabled"

    .line 455
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 459
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getAllCapabilities()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sec/ims/options/Capabilities;

    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method getCapabilities(II)Lcom/sec/ims/options/Capabilities;
    .locals 4

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapabilities: Capex list id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityQuery"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is expired. refresh it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 61
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 64
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCapabilities: No need to refresh. capex ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method getCapabilities(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 10

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityQuery"

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: uri "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_1

    .line 157
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v4

    .line 164
    :cond_2
    invoke-static {p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 165
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    .line 169
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v9

    move-wide v4, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v9

    :cond_4
    :goto_1
    const-string v0, "getCapabilities: failed"

    .line 152
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 11

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: refreshType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CapabilityQuery"

    invoke-static {v4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCapabilities: uri "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, p3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v4, :cond_1

    .line 292
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    if-eqz v4, :cond_4

    .line 295
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v4, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 299
    :cond_2
    invoke-static {p4}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 300
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 303
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v9

    move-object v2, p2

    move-object v3, v4

    move-wide v4, v5

    move v6, v7

    move v7, v10

    move v8, p3

    .line 304
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v9

    :cond_4
    :goto_1
    return-object v5

    :cond_5
    :goto_2
    const-string v0, "getCapabilities: failed"

    .line 287
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method getCapabilities(Ljava/lang/String;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 10

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityQuery"

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: number "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p4, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    return-object v4

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, p1, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "getCapabilities: uri is null"

    .line 129
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, v5, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v4

    .line 137
    :cond_2
    invoke-static {p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 138
    invoke-virtual {p0, v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    .line 142
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, v9

    move-object v3, v5

    move-wide v4, p2

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v9
.end method

.method getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZILjava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p4

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: refreshType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", lazyQuery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CapabilityQuery"

    invoke-static {v4, v8, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCapabilities: number "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v8, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v3, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_0

    return-object v6

    .line 80
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapDiscoveryOption()Z

    move-result v3

    const/4 v9, 0x1

    if-nez v3, :cond_1

    .line 81
    new-instance v0, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 82
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 83
    invoke-virtual {v0, v9}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    return-object v0

    .line 87
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    invoke-virtual {v3, v1, v9}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "getCapabilities: uri is null"

    .line 90
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    .line 94
    :cond_2
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v10, v3, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v10

    if-eqz v10, :cond_3

    return-object v6

    .line 98
    :cond_3
    sget-object v10, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v2, v10, :cond_4

    .line 99
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",GETCAPA,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v11, 0x12010006

    invoke-static {v11, v10}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 102
    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 103
    invoke-virtual {p0, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 106
    :cond_5
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v10, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v10

    .line 108
    invoke-direct {p0, v2, v8, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->isNeedToRefreshInMsgCtxForResolvingLatching(Lcom/sec/ims/options/CapabilityRefreshType;ILcom/sec/ims/util/ImsUri;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 109
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    const-string/jumbo v10, "refreshType changes to ALWAYS_FORCE_REFRESH"

    .line 112
    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    move-object v12, v6

    goto :goto_0

    :cond_6
    const-wide/16 v11, -0x1

    move-wide v13, v11

    move-object v12, v10

    move-wide v10, v13

    .line 114
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_7

    move v6, v9

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    move-object v0, p0

    move-object v1, v12

    move-wide v4, v10

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V

    return-object v12
.end method

.method getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "JI",
            "Ljava/lang/String;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v13, p5

    move-object/from16 v14, p7

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: refreshType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", callback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "CapabilityQuery"

    invoke-static {v15, v13, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x2

    const/4 v10, 0x0

    if-nez v1, :cond_1

    const-string v0, "getCapabilities: uris is null."

    .line 180
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_0

    .line 183
    :try_start_0
    invoke-interface {v14, v2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 185
    invoke-virtual {v1}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v10

    .line 190
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilities: uris "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v13, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    :goto_1
    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove invalid list elements(null)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v13, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    invoke-interface {v1, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v13, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v3, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v14, :cond_3

    const/16 v0, 0x9

    .line 202
    :try_start_1
    invoke-interface {v14, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 204
    invoke-virtual {v1}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v10

    .line 209
    :cond_4
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 210
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v16

    .line 213
    invoke-static/range {p6 .. p6}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v3

    const/4 v9, 0x0

    if-eqz v3, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 214
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 215
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->copyToOwnCapabilities(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    .line 216
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-array v0, v9, [Lcom/sec/ims/options/Capabilities;

    .line 218
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/options/Capabilities;

    return-object v0

    .line 221
    :cond_6
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    .line 222
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v5, "subscribeForCapabilities internalRequestId : "

    if-eqz v1, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 223
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, v3, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 226
    :cond_7
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 228
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v2, :cond_b

    move-object/from16 v18, v15

    move-wide/from16 v14, p3

    .line 231
    invoke-virtual {v2, v14, v15}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 232
    invoke-virtual {v1, v2, v13}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v1

    move-object/from16 p6, v5

    int-to-long v4, v1

    .line 233
    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result v1

    move-object/from16 v19, v8

    int-to-long v7, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v20

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getMsgcapvalidity()J

    move-result-wide v22

    move-object v1, v6

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v3, p2

    move-object/from16 v15, p6

    const/16 v14, 0x36

    move-object v14, v6

    const/4 v12, 0x6

    move-wide v6, v7

    move-wide/from16 v8, v20

    move-object/from16 v20, v10

    move-object v12, v11

    move-wide/from16 v10, v22

    .line 232
    invoke-interface/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    .line 252
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCapabilities: No need to refresh. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v2, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object/from16 v25, v3

    move-object v15, v5

    move-object v14, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object v12, v11

    :goto_5
    move-object/from16 v2, v18

    goto :goto_6

    :cond_b
    move-object/from16 v25, v3

    move-object v14, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object v12, v11

    move-object v2, v15

    move-object v15, v5

    .line 234
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is expired. refresh it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "allow_list_capex"

    .line 236
    invoke-interface {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 237
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_7

    :cond_c
    move-object/from16 v3, p7

    move-object/from16 v1, v25

    goto :goto_9

    :cond_d
    :goto_7
    move-object/from16 v1, v25

    .line 238
    invoke-virtual {v12, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v3, p7

    goto :goto_a

    :cond_e
    move-object/from16 v1, v25

    move-object/from16 v3, p7

    :goto_9
    if-nez v3, :cond_f

    .line 241
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v5, v13, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 241
    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 244
    :cond_f
    invoke-static {v13, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I

    move-result v4

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v13, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v6, 0x36

    .line 248
    invoke-virtual {v5, v6, v4, v13, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 247
    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_a
    move-object v15, v2

    move-object v11, v12

    move-object v6, v14

    move-object/from16 v8, v19

    move-object/from16 v10, v20

    const/4 v9, 0x0

    move-object/from16 v12, p2

    move-object v14, v3

    goto/16 :goto_4

    :cond_10
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    move-object v12, v11

    move-object v3, v14

    move-object v2, v15

    move-object v15, v5

    move-object v14, v6

    .line 256
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_12

    if-eqz v3, :cond_11

    .line 259
    invoke-static {v13, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I

    move-result v9

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v13, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    .line 262
    :goto_b
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, v13, v9, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    .line 264
    :cond_12
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v1

    if-ne v1, v4, :cond_14

    if-nez v3, :cond_13

    .line 266
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 267
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x6

    .line 266
    invoke-virtual {v0, v3, v1, v13, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    .line 269
    :cond_13
    invoke-static {v13, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addSubscribeResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)I

    move-result v1

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v13, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 272
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x36

    .line 271
    invoke-virtual {v0, v3, v1, v13, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    :cond_14
    :goto_c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "capa_skip_notify_force_refresh_sync"

    invoke-interface {v14, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v1, p2

    if-ne v1, v0, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sec/ims/options/Capabilities;

    move-object/from16 v1, v19

    .line 279
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/options/Capabilities;

    return-object v0

    :cond_16
    :goto_d
    return-object v20
.end method

.method getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;
    .locals 11

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilitiesByContactId: contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", refreshType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CapabilityQuery"

    invoke-static {v6, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v2

    const/4 v7, 0x0

    if-nez v2, :cond_0

    return-object v7

    :cond_0
    const-string v2, "FORCE_CAPA_POLLING"

    .line 316
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->forcePoll(I)V

    return-object v7

    .line 321
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 328
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    .line 330
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", teluri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, p3, v9}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_2
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move-wide v3, v6

    move v5, p3

    move-object v6, p4

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0
.end method

.method getOwnCapabilities(IILjava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;IZLjava/lang/String;Lcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "IZ",
            "Ljava/lang/String;",
            "Lcom/sec/ims/options/Capabilities;",
            ")",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    move-object v0, p0

    move v7, p1

    .line 420
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 424
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const-string v8, "CapabilityQuery"

    if-nez v1, :cond_1

    move v1, p2

    if-eq v1, v7, :cond_1

    const-string v0, "getOwnCapabilities: mAvailablePhoneId = ! phoneId"

    .line 425
    invoke-static {v8, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 429
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 431
    new-instance v1, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v1}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 433
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 434
    :try_start_1
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual {v1, p3, p4, p5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterServicesWithReg(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;II)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 436
    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    .line 437
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move v5, p5

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v1

    .line 438
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move/from16 v3, p6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithCallState(JZLjava/lang/String;)J

    move-result-wide v0

    .line 439
    invoke-virtual {v9, v0, v1}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 440
    invoke-virtual {v9, v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v9

    goto :goto_0

    :catch_1
    move-exception v0

    .line 443
    :goto_0
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    move-object v9, v1

    .line 445
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOwnCapabilities: feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v8, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v9
.end method

.method getOwnCapabilitiesBase(ILcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;
    .locals 5

    const-string v0, "getOwnCapabilitiesBase:"

    const-string v1, "CapabilityQuery"

    .line 390
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 394
    :try_start_0
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 396
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_0

    .line 399
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOwnCapabilitiesBase: module is not ready, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object v2

    .line 405
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 408
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 410
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_1
    if-eqz v2, :cond_2

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOwnCapabilitiesBase: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method needCapabilityRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;Lcom/sec/ims/util/ImsUri;JZZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-wide/from16 v10, p4

    move/from16 v15, p8

    .line 351
    invoke-static/range {p8 .. p8}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 352
    invoke-virtual {v2, v12, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getCapInfoExpiry(Lcom/sec/ims/options/Capabilities;I)I

    move-result v2

    int-to-long v4, v2

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 353
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result v2

    int-to-long v6, v2

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 354
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v8

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 355
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getMsgcapvalidity()J

    move-result-wide v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v12, v10

    move-wide/from16 v10, v16

    .line 351
    invoke-interface/range {v1 .. v11}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z

    move-result v1

    const/4 v2, 0x6

    const-string v3, "CapabilityQuery"

    if-eqz v1, :cond_2

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCapabilityRefresh: true, missing capabilities for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p7, :cond_1

    const/16 v1, 0x8

    if-eqz p6, :cond_0

    .line 359
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 360
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    .line 359
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 363
    :cond_0
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 364
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 367
    :cond_1
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 368
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v2, v1, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v12, v4

    if-ltz v1, :cond_4

    move-object/from16 v1, p1

    move-wide v4, v12

    if-eqz v1, :cond_3

    .line 370
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result v4

    if-nez v4, :cond_5

    .line 371
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCapabilityRefresh: true, missing features for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 372
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v2, v1, v15, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v1, p1

    :cond_5
    const v0, 0x12010007

    if-eqz v1, :cond_6

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCapabilityRefresh: false, capex is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v15, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v4, p2

    if-eq v4, v2, :cond_7

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",NOREF,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object/from16 v4, p2

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needCapabilityRefresh: false, capex is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v15, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    if-eq v4, v1, :cond_7

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",NOREF,NOCAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

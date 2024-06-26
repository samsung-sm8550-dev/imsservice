.class public Lcom/sec/internal/imsphone/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/imsphone/ImsConfigImpl$FeatureValueConstants;,
        Lcom/sec/internal/imsphone/ImsConfigImpl$RcsClientConfigurationConstants;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final READ_IMS_PERMISSION:Ljava/lang/String; = "com.sec.imsservice.READ_IMS_PERMISSION"


# instance fields
.field private mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

.field private mClientVendor:Ljava/lang/String;

.field private mClientVersion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPhoneId:I

.field private mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

.field private mRcsEnabledByUser:Ljava/lang/String;

.field private mRcsProfile:Ljava/lang/String;

.field private mRcsVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/sec/internal/imsphone/ImsConfigImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 38
    iput p1, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    .line 39
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    return-void
.end method

.method private getConfigValue(Ljava/lang/String;)I
    .locals 1

    .line 151
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public getConfigInt(I)I
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "com.sec.imsservice.READ_IMS_PERMISSION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const-string v1, "getConfigInt: item: "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " there is no read_ims_permission"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    const-string v0, "31"

    .line 96
    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsConfigImpl;->getConfigValue(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->isListSubGzipEnabled(I)I

    move-result v0

    :goto_0
    move v2, v0

    goto/16 :goto_1

    .line 132
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getListSubExpiry(I)I

    move-result v0

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getListSubMaxUri(I)I

    move-result v0

    goto :goto_0

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getPublishSourceThrottle(I)I

    move-result v0

    goto :goto_0

    .line 120
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapPollInterval(I)I

    move-result v0

    goto :goto_0

    .line 116
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getServiceAvailabilityInfoExpiry(I)I

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_7
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapInfoExpiry(I)I

    move-result v0

    goto :goto_0

    .line 108
    :pswitch_8
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mCapabilityDisModule:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->isCapDiscEnabled(I)I

    move-result v0

    goto :goto_0

    .line 104
    :pswitch_9
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getPublishExpiry(I)I

    move-result v0

    goto :goto_0

    .line 100
    :pswitch_a
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPresenceModule:Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->getPublishTimer(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "94"

    .line 92
    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsConfigImpl;->getConfigValue(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    const-string v0, "93"

    .line 88
    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsConfigImpl;->getConfigValue(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_3
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    sget-object v0, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :catchall_0
    move-exception p0

    .line 144
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRcsClientConfiguration(I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsEnabledByUser:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVersion:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVendor:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsProfile:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsVersion:Ljava/lang/String;

    .line 183
    :goto_0
    sget-object v1, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRcsClientConfiguration: item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public setConfig(II)I
    .locals 1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 64
    sget p1, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE_OFF:I

    .line 65
    :goto_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-static {p0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->setRttMode(II)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 11

    .line 189
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "com.sec.imsservice.READ_IMS_PERMISSION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object p1, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    const-string/jumbo v0, "setRcsClientConfiguration: there is no read_ims_permission"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 193
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsVersion:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsProfile:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVendor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVendor:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->getClientVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVersion:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/telephony/ims/RcsClientConfiguration;->isRcsEnabledByUser()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsEnabledByUser:Ljava/lang/String;

    .line 201
    sget-object p1, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRcsClientConfiguration: rcsVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rcsProfile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " clientVendor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " clientVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rcsEnabledByUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsEnabledByUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    iget-object v6, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsProfile:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVendor:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mClientVersion:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mRcsEnabledByUser:Ljava/lang/String;

    invoke-interface/range {v4 .. v10}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setRcsClientConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 205
    :try_start_1
    sget-object v2, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRcsClientConfiguration: failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    throw p0
.end method

.method public triggerAutoConfiguration()V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "com.sec.imsservice.READ_IMS_PERMISSION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    const-string/jumbo v1, "triggerAutoConfiguration: there is no read_ims_permission"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 217
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->triggerAutoConfiguration(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 221
    :try_start_1
    sget-object v3, Lcom/sec/internal/imsphone/ImsConfigImpl;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsConfigImpl;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "triggerAutoConfiguration: failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 223
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw p0
.end method

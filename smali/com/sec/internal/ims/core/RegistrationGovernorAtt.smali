.class public Lcom/sec/internal/ims/core/RegistrationGovernorAtt;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorAtt.java"


# static fields
.field protected static final DEFAULT_TIMS_TIMER_MS:J = 0x493e0L

.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnAtt"


# instance fields
.field protected mIsIpmeDisabledBySipForbidden:Z


# direct methods
.method public static synthetic $r8$lambda$21nKbVrnor-WlmViOXCBBQbbE3I(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$3(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8BETvxrgYpkdT_aftfjOU3X9I3I(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$5(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ALBglQuS12ayQ7UhGG_GXWTC6UI(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$4(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DaRC86Ez21SVH0bXGO7rvTLB9D0(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$2(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L71JTIBfErSqaispKBYr_mokkK0(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$isLocationInfoLoaded$6(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OTzeeqt62GGt1PFmG7WaKyEakTM(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$1(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sT2oaxBUqSIsrT9LEIV4-JGjcu8(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 0

    .line 67
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    .line 68
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-static {p7, p1, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    return-void
.end method

.method private static synthetic lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 224
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$filterService$1(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Disable from ACS."

    .line 225
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$filterService$2(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 230
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$filterService$3(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Disable from singleregi"

    .line 231
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$filterService$4(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 238
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$filterService$5(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Disable from ACS."

    .line 239
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isLocationInfoLoaded$6(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 1

    .line 415
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    return-void
.end method


# virtual methods
.method public allowRoaming()Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected checkCallStatus()Z
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 347
    :cond_1
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 348
    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 152
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 153
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isImsDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 162
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "volte"

    iget v5, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 163
    :goto_0
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "rcs"

    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v6, v7, v8}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 164
    :goto_1
    iget-object v7, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v9, -0x1

    .line 165
    invoke-static {v7, v9, v8}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .line 167
    :goto_2
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v8

    .line 168
    iget-object v10, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v10}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v10

    .line 169
    sget-object v11, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    sget v13, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v11, v12, v13}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v11

    sget v12, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne v11, v12, :cond_5

    move v11, v5

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .line 172
    :goto_3
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v12, v9, v13}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v12

    if-nez v12, :cond_6

    move v12, v5

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    .line 173
    :goto_4
    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v13, v9, v14}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVideoCallType(Landroid/content/Context;II)I

    move-result v9

    if-nez v9, :cond_7

    move v9, v5

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    .line 174
    :goto_5
    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v14, "defaultmsgappinuse"

    iget v15, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v13, v14, v15}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v5, :cond_8

    move v13, v5

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    .line 176
    :goto_6
    iget v14, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterService:  IPME setting="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Video setting="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Enhanced Data="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Mobile Data="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isRoaming="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Roaming Data="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " SIP Forbidden="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Default Msg App="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " RCSonly="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 185
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "RegiGvnAtt"

    .line 176
    invoke-static {v15, v14, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "mmtel"

    const-string v14, "mmtel-video"

    if-eqz v12, :cond_15

    .line 192
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "smsip"

    .line 193
    invoke-interface {v2, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    iget v12, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v12}, Lcom/sec/internal/ims/util/ImsUtil;->isDualVideoCallAllowed(I)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "Non-ADS operator SIM"

    .line 200
    invoke-virtual {v0, v3, v14, v12}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v10, :cond_a

    if-nez v11, :cond_b

    :cond_a
    if-nez v10, :cond_d

    if-eqz v8, :cond_d

    :cond_b
    if-eqz v9, :cond_c

    .line 205
    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    const-string v8, "VideoSetting off"

    .line 207
    invoke-virtual {v0, v3, v14, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const-string v8, "MobileData unavailable"

    .line 210
    invoke-virtual {v0, v3, v14, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eqz v6, :cond_12

    if-nez v13, :cond_e

    .line 218
    iget v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 219
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v7, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 220
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_12

    .line 221
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v7, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 223
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v8

    .line 222
    invoke-static {v6, v7, v8}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 224
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;)V

    .line 225
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 227
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v6

    iget v7, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v6, v7}, Lcom/sec/internal/google/SecImsNotifier;->getSipDelegateServiceList(I)Ljava/util/List;

    move-result-object v6

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filterService: allocated services via SRAPI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda2;

    invoke-direct {v8, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;)V

    .line 231
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_8

    .line 233
    :cond_e
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v6, v8}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 234
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 236
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v6

    .line 237
    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v8, v9, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 238
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v11, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda4;

    invoke-direct {v11, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v9, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda5;

    invoke-direct {v9, v0, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Ljava/util/Set;)V

    .line 239
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string v8, "im"

    .line 241
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const-string v8, "chatbot-communication"

    const-string v9, "CHAT disabled in autoconfig"

    .line 242
    invoke-virtual {v0, v2, v8, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v8, "gls"

    .line 245
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget v9, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v6, v9}, Lcom/sec/internal/helper/RcsConfigurationHelper;->isUp2NonTransitional(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "Disabled for non UP"

    .line 246
    invoke-virtual {v0, v2, v8, v6}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v7, :cond_11

    if-nez v13, :cond_12

    :cond_11
    move v6, v5

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v6, 0x0

    :goto_9
    if-nez v6, :cond_13

    .line 255
    iget-boolean v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    if-nez v6, :cond_13

    if-eqz v10, :cond_16

    const/16 v6, 0x12

    move/from16 v7, p2

    if-eq v7, v6, :cond_16

    .line 256
    :cond_13
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 257
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v7, :cond_16

    aget-object v9, v6, v8

    const-string v10, "RCS service off"

    .line 258
    invoke-virtual {v0, v3, v9, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 261
    :cond_14
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v7, :cond_16

    aget-object v9, v6, v8

    const-string v10, "IMPE service off"

    .line 262
    invoke-virtual {v0, v3, v9, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 267
    :cond_15
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 268
    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_16
    if-nez v1, :cond_18

    .line 272
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_1a

    aget-object v7, v1, v6

    const-string v8, "VoLTE disabled"

    .line 273
    invoke-virtual {v0, v3, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 276
    iget-object v7, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 280
    :cond_18
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1, v14, v4}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_19

    iget v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 281
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    const-string v1, "ViLTE disabled"

    .line 282
    invoke-virtual {v0, v3, v14, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1a
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 287
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v4, :cond_1b

    aget-object v6, v1, v5

    const-string v7, "Invalid autoconf ver"

    .line 288
    invoke-virtual {v0, v3, v6, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 292
    :cond_1b
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v1, v4}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 293
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v4, :cond_1c

    aget-object v6, v1, v5

    const-string v7, "No DualRCS"

    .line 294
    invoke-virtual {v0, v3, v6, v7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 298
    :cond_1c
    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v3
.end method

.method public getUpdateRegiPendingReason(ILcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)Ljava/lang/String;
    .locals 0

    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getUpdateRegiPendingReason(ILcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)Ljava/lang/String;

    move-result-object p1

    if-nez p4, :cond_0

    if-nez p3, :cond_0

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 440
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 p3, 0x8b

    invoke-virtual {p2, p3, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "Ignore by postponed update registration event by dma change"

    :cond_0
    return-object p1
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 412
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 413
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 414
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string/jumbo v0, "update geo location"

    const-string v1, "RegiGvnAtt"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isReadyToRegister(I)Z
    .locals 0

    .line 353
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyStatus()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->checkCallStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkRegiStatus()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public onPdnConnecting(I)V
    .locals 0

    .line 423
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->toggleTimsTimerByPdnTransport(I)V

    return-void
.end method

.method public onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V
    .locals 1

    .line 376
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isMatchedPdnFailReason(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 382
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    .line 383
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isApAssistedMode()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    const-string p1, "RegiGvnAtt"

    const-string/jumbo p2, "send ImsNotAvailable"

    .line 384
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 386
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    :cond_1
    return-void
.end method

.method public onRegistrationDone()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v1, "Registered"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    const-string p0, "RegiGvnAtt"

    const-string v0, "onRegistrationDone: reset IPME after forbidden"

    .line 146
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistrationError: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " retryAfterMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mCurPcscfIpIdx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mNumOfPcscfIp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mFailureCounter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mIsPermanentStopped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result v2

    if-lez v2, :cond_1

    .line 91
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 92
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 93
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleTimeOutEmerRegiError()V

    return-void

    .line 97
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->USE_PROXY:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 103
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 104
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usedPcscf : "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v4, "RegiGvnAtt"

    invoke-static {v4, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v3

    .line 105
    :goto_0
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    goto :goto_1

    :cond_3
    if-nez p4, :cond_4

    .line 115
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 122
    :cond_4
    :goto_1
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-lt p1, p4, :cond_5

    .line 123
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 124
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    cmp-long p1, p2, v0

    if-nez p1, :cond_5

    .line 129
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getWaitTime()J

    move-result-wide p2

    :cond_5
    cmp-long p1, p2, v0

    if-lez p1, :cond_6

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_2

    .line 136
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    :goto_2
    return-void
.end method

.method public onRegistrationTerminated(Lcom/sec/ims/util/SipError;JZ)V
    .locals 2

    .line 73
    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationTerminated: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " retryAfterMs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 77
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    const-wide/16 p1, 0x3e8

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 4

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSipError: service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnAtt"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v0, "mmtel"

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 317
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 319
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v1, "Sip Error[MMTEL]. DeRegister.."

    invoke-interface {p1, v0, v2, p0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "im"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 324
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    const/16 v0, 0x193

    if-eq p1, v0, :cond_5

    :cond_4
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/ims/util/SipError;

    .line 325
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 326
    invoke-static {p1, v0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p1

    if-ne p1, v2, :cond_6

    :cond_5
    const-string p1, "onSipError: [IPME] try re-register after forbidden"

    .line 327
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->mIsIpmeDisabledBySipForbidden:Z

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->updateChatService(II)V

    :cond_6
    :goto_1
    return-object p2
.end method

.method public releaseThrottle(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 360
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 363
    :cond_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 364
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const-wide/16 v0, 0x0

    .line 365
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 366
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 369
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    if-nez p0, :cond_3

    .line 370
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releaseThrottle: case by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiGvnAtt"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public startTimsTimer(Ljava/lang/String;)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;JLjava/lang/String;)V

    return-void
.end method

.method public stopTimsTimer(Ljava/lang/String;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopTimsEstablishTimer(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)V

    return-void
.end method

.method public updatePcscfIpList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "RegiGvnAtt"

    const-string/jumbo p1, "updatePcscfIpList: null P-CSCF list!"

    .line 400
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    .line 405
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPcscfIpList:Ljava/util/List;

    const/4 p1, 0x0

    .line 406
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    if-lez v0, :cond_1

    const/4 p1, 0x1

    .line 407
    :cond_1
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    return-void
.end method

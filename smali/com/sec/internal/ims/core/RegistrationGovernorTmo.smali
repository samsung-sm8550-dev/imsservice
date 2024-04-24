.class public Lcom/sec/internal/ims/core/RegistrationGovernorTmo;
.super Lcom/sec/internal/ims/core/RegistrationGovernorBase;
.source "RegistrationGovernorTmo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiGvnTmo"

.field static final WFC_STATUS_OFF:I = 0x2

.field static final WFC_STATUS_ON:I = 0x1


# instance fields
.field protected mAllPcscfFailed:Z

.field protected mHasPendingDeregistration:Z

.field protected mLastKnownCountryIso:Ljava/lang/String;

.field protected mWfcPrefMode:B

.field protected mWfcStatus:B


# direct methods
.method public static synthetic $r8$lambda$-GvoqrEZU_EPgQIfqU1tPPD3NXE(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->lambda$filterService$2(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BVWUTLTe6djaUwxlJatlRNpqZng(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HXbUuM3QqN6w78h94QmTRJIWggU(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->lambda$filterService$3(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gBFKVt2bhCQAt_RTXOL7IJK6YG4(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->lambda$isLocationInfoLoaded$4(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$krLEApmz6TyuMg75ble8un3LMaI(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->lambda$onUpdateGeolocation$5(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nQ1WSb7i_rzykSwVsDpvMZI559g(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->lambda$filterService$1(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 82
    iput-byte p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcPrefMode:B

    .line 83
    iput-byte p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    .line 88
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 89
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    const-string p1, ""

    .line 90
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mLastKnownCountryIso:Ljava/lang/String;

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNeedToCheckSrvcc:Z

    .line 96
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->updateEutranValues()V

    return-void
.end method

.method private checkVowifiSetting(I)Z
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 533
    iget-byte p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "RegiGvnTmo"

    const-string v0, "Rat is IWLAN but WFC switch is OFF."

    .line 534
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isDataAllowed()Z
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 312
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2
.end method

.method private static synthetic lambda$filterService$0(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 392
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$filterService$1(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Disable from ACS."

    .line 393
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$filterService$2(Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    .line 413
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$filterService$3(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Disable from singleregi"

    .line 414
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isLocationInfoLoaded$4(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V
    .locals 2

    .line 683
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->isCountryCodeLoaded(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RegiGvnTmo"

    const-string v1, "isLocationInfoLoaded: No country code. Request to start Geolocation Update."

    .line 684
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onUpdateGeolocation$5(Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)Ljava/lang/String;
    .locals 0

    .line 715
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getLastAccessedNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateEutranValues()V
    .locals 3

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->getVoiceTechType()I

    move-result v0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEutranValues : voiceTech : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiGvnTmo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "voice_domain_pref_eutran"

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 652
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 655
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v2, p0}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected applyInboundRoamingPolicy(Ljava/util/Set;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    return-object p1
.end method

.method protected checkCallStatus()Z
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isSrvccCase()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected checkRcsEvent(I)Z
    .locals 3

    .line 546
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->hasRcsSession()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 550
    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x12

    if-ne p1, v0, :cond_3

    :cond_2
    const-string p1, "RegiGvnTmo"

    const-string v0, "RCS session is active"

    .line 553
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_RCS_SESSION:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public determineDeRegistration(II)Z
    .locals 3

    .line 663
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string v1, "isNeedToDeRegistration:"

    const-string v2, "RegiGvnTmo"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_1

    .line 665
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToDeRegistration: no IMS service for network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Deregister."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 666
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no IMS service for network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 667
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 668
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isSrvccCase()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    invoke-virtual {p1, p2, p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v1

    .line 672
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->determineDeRegistration(II)Z

    move-result p0

    return p0
.end method

.method public filterService(Ljava/util/Set;I)Ljava/util/Set;
    .locals 12
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

    .line 318
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isImsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 322
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 323
    new-instance v1, Ljava/util/HashSet;

    if-eqz p1, :cond_1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "volte"

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    .line 326
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcs"

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 327
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const/4 v5, -0x1

    .line 328
    invoke-static {v3, v5, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v4

    .line 329
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->isDataAllowed()Z

    move-result v7

    .line 330
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string v9, "defaultmsgappinuse"

    iget v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v8, v9, v10}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v8

    .line 331
    iget v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VOLTE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", RCS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", rcs_user_setting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", Data allowed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", Default MSG app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "RegiGvnTmo"

    invoke-static {v11, v9, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {v9}, Lcom/sec/internal/ims/core/RegistrationUtils;->supportCsTty(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string p1, "CS TTY Enabled"

    .line 335
    invoke-static {v11, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->CS_TTY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 337
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_3
    const/16 v9, 0xd

    if-eq p2, v9, :cond_4

    const/16 v9, 0x14

    if-ne p2, v9, :cond_7

    .line 348
    :cond_4
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v10, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v10, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v9, v10, :cond_5

    .line 349
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v9

    const-string v10, "internet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string p0, "VoPS Supported. Registration over IMS pdn."

    .line 350
    invoke-static {v11, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 359
    :cond_5
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ims"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 360
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->hasRcsSession()Z

    move-result v9

    if-nez v9, :cond_6

    const-string p1, "VoPS NOT Supported. Registration over Internet PDN."

    .line 361
    invoke-static {v11, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 363
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_6
    const-string v9, "VoPS NOT Supported. But, there are rcs sessions"

    .line 365
    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz p1, :cond_8

    .line 372
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v9, "mmtel"

    .line 373
    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 374
    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_MMTEL_IMS_SWITCH_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 378
    :cond_8
    iget v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/ims/util/ImsUtil;->isDualVideoCallAllowed(I)Z

    move-result v9

    const-string v10, "mmtel-video"

    if-nez v9, :cond_9

    const-string v9, "Non-DDS operator SIM"

    .line 379
    invoke-virtual {p0, v1, v10, v9}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez v7, :cond_a

    const/16 v7, 0x12

    if-eq p2, v7, :cond_a

    const-string p2, "MobileData OFF"

    .line 384
    invoke-virtual {p0, v1, v10, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_a
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p2, v7}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidAcsVersion(I)Z

    move-result p2

    if-eqz p2, :cond_11

    if-eqz v2, :cond_11

    .line 388
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->servicesByImsSwitch([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 390
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 391
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-static {p2, v7, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v9

    .line 390
    invoke-static {p2, v7, v9}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getRcsEnabledServiceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 392
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda2;

    invoke-direct {v9, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v7, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;)V

    .line 393
    invoke-interface {p2, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 395
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "root/application/1/services/IR94VideoAuth"

    iget v9, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    .line 396
    invoke-static {p2, v7, v9}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;

    move-result-object p2

    const-string v7, "IR94VideoAuth"

    .line 397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v7, v5}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "ir94videoauth disabled"

    .line 398
    invoke-virtual {p0, v1, v10, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v8, :cond_d

    .line 401
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 403
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p2

    array-length v5, p2

    move v7, v4

    :goto_2
    if-ge v7, v5, :cond_d

    aget-object v9, p2, v7

    const-string/jumbo v10, "presence"

    .line 404
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_3

    :cond_c
    const-string v10, "SM SimMobility"

    .line 407
    invoke-virtual {p0, v1, v9, v10}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_d
    if-nez v8, :cond_e

    .line 411
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 412
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p2

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p2, v3}, Lcom/sec/internal/google/SecImsNotifier;->getSipDelegateServiceList(I)Ljava/util/List;

    move-result-object p2

    .line 413
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda4;

    invoke-direct {v5, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v3, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;)V

    .line 414
    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_6

    :cond_e
    if-eqz v3, :cond_f

    if-nez v8, :cond_11

    .line 417
    :cond_f
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 418
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p2

    array-length v3, p2

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_11

    aget-object v7, p2, v5

    const-string v8, "RCS service off"

    .line 419
    invoke-virtual {p0, v1, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 422
    :cond_10
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object p2

    array-length v3, p2

    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_11

    aget-object v7, p2, v5

    const-string v8, "chatservice off"

    .line 423
    invoke-virtual {p0, v1, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 430
    :cond_11
    :goto_6
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p2, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_12

    .line 431
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p2

    array-length v3, p2

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_12

    aget-object v7, p2, v5

    const-string v8, "No DualRcs"

    .line 432
    invoke-virtual {p0, v1, v7, v8}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_12
    const-string p2, "mmtel-call-composer"

    if-eqz p1, :cond_18

    if-eqz v2, :cond_18

    .line 437
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result p1

    .line 438
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getVBCAuthValue(ILandroid/content/Context;)I

    move-result v2

    .line 440
    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ENRICHED_CALL_VBC:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v3

    if-ne v3, v6, :cond_13

    move v3, v6

    goto :goto_8

    :cond_13
    move v3, v4

    .line 441
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "composerAuthVal : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "vbcAuthVal : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "vbcSettings:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    if-eq p1, v5, :cond_15

    const/4 v5, 0x3

    if-ne p1, v5, :cond_14

    goto :goto_9

    :cond_14
    move p1, v4

    goto :goto_a

    :cond_15
    :goto_9
    move p1, v6

    :goto_a
    if-ne v2, v6, :cond_16

    move v4, v6

    :cond_16
    if-nez p1, :cond_19

    if-eqz v4, :cond_17

    if-nez v3, :cond_19

    :cond_17
    const-string p1, "MMTEL Composer off from ACS"

    .line 449
    invoke-virtual {p0, v1, p2, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeService(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 452
    :cond_18
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 455
    :cond_19
    :goto_b
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string p2, "TMobile_US:Inbound"

    .line 456
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 457
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->applyInboundRoamingPolicy(Ljava/util/Set;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/util/Set;

    move-result-object v0

    .line 460
    :cond_1a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1b

    .line 461
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_1b
    return-object v1
.end method

.method public getDetailedDeRegiReason(I)I
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    return v1

    .line 697
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernor;->getDetailedDeRegiReason(I)I

    move-result p0

    return p0
.end method

.method public getFailureType()I
    .locals 2

    .line 633
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 634
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/16 p0, 0x20

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method protected getWaitTime(I)J
    .locals 6

    .line 244
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegBaseTimeMs:J

    add-int/lit8 p1, p1, -0x1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 247
    iget-wide p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    return-wide p0

    .line 249
    :cond_0
    iget-wide p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegMaxTimeMs:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method hasRcsSession()Z
    .locals 0

    .line 567
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 568
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->hasEstablishedSession()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDeregisterOnLocationUpdate()Z
    .locals 6

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 703
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 704
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 706
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public isLocationInfoLoaded(I)Z
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    return v1

    .line 682
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return v1
.end method

.method public isReadyToRegister(I)Z
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkEmergencyStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->checkRegiStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkCallStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkVowifiSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->checkRcsEvent(I)Z

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

.method public isThrottled()Z
    .locals 4

    .line 573
    iget-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 575
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

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

.method public onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStatus: event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 508
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    goto :goto_0

    .line 512
    :cond_0
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_TIMEOUT:Lcom/sec/ims/util/SipError;

    .line 513
    invoke-virtual {v0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    return-void

    .line 518
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    return-void
.end method

.method public onContactActivated()V
    .locals 2

    const-string v0, "RegiGvnTmo"

    const-string v1, "ContactActivated. Reset SRMR2 failure counter"

    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 626
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    .line 627
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    return-void
.end method

.method public onDeregistrationDone(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    return-void
.end method

.method public onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V
    .locals 6

    .line 161
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V

    .line 163
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isApAssistedMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_4

    .line 165
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p2

    .line 167
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->isMatchedPdnFailReason(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 169
    sget-object v0, Lcom/sec/internal/constants/ims/core/PdnFailReason;->PDN_MAX_TIMEOUT:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x14

    if-ne p2, v0, :cond_3

    :cond_1
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0xd

    if-ne p2, v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 173
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 180
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyImsNotAvailable. reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Registration RAT: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "PDN Reject counter: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegiGvnTmo"

    invoke-static {p2, v0, v3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 184
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPdnRejectCounter:I

    :cond_4
    return-void
.end method

.method public onPublishError(Lcom/sec/ims/util/SipError;)V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPublishError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "Publish Error. ReRegister.."

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_0
    return-void
.end method

.method public onRegistrationDone()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onRegistrationDone()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    return-void
.end method

.method public onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V
    .locals 5

    .line 191
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

    const-string v3, " unsolicit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 198
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 200
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    goto :goto_0

    .line 201
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->EMPTY_PCSCF:Lcom/sec/ims/util/SipError;

    invoke-virtual {v2, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 203
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handlePcscfError()V

    return-void

    .line 205
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->isCountryBlockingForbidden(Lcom/sec/ims/util/SipError;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 206
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p1

    const/16 v2, 0x12

    if-ne p1, v2, :cond_3

    .line 207
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v4, "onRegistrationError: Country blocking forbidden."

    invoke-virtual {p1, p4, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 p4, 0x35

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    cmp-long p1, p2, v0

    if-nez p1, :cond_4

    const-wide/16 p2, 0x2710

    goto :goto_0

    .line 221
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    if-nez p4, :cond_4

    .line 223
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 227
    :cond_4
    :goto_0
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    if-lt p1, p4, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 228
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 231
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleRetryTimer(J)V

    return-void
.end method

.method public onRegistrationTerminated(Lcom/sec/ims/util/SipError;JZ)V
    .locals 2

    .line 135
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

    const-string v1, " retryAfterMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 137
    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 138
    iput p4, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 140
    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->NOTIFY_TERMINATED_DEACTIVATED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p1}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 141
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p1

    const/16 p4, 0x12

    if-ne p1, p4, :cond_2

    .line 142
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    const/4 p4, 0x2

    if-le p1, p4, :cond_0

    return-void

    :cond_0
    cmp-long p4, p2, v0

    if-nez p4, :cond_1

    .line 146
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->getWaitTime(I)J

    move-result-wide p2

    .line 148
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_0

    :cond_2
    cmp-long p1, p2, v0

    if-lez p1, :cond_3

    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :goto_0
    return-void
.end method

.method public onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 4

    .line 473
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

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mNumOfPcscfIp:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v0, "mmtel"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 477
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->PROXY_AUTHENTICATION_REQUIRED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    .line 480
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_INVITE_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 481
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TCP Connection Error"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 489
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->USER_NOT_REGISTERED_NR_NOWARNING:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 492
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SIPERROR_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p1, p0, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto :goto_3

    .line 483
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mHasVoLteCall:Z

    if-eqz p1, :cond_4

    .line 484
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    const-string v0, "onSipError: postpone deregi till call end"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    goto :goto_3

    .line 487
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->removeCurrentPcscfAndInitialRegister(Z)V

    goto :goto_3

    .line 478
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 479
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsValid:Z

    const-string v1, "SIP ERROR[MMTEL] : INVITE_TIMEOUT, Deregister.."

    invoke-interface {p1, v0, v3, p0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "im"

    .line 494
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 495
    :cond_7
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 496
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "SIP ERROR[IM] : FORBIDDEN, Reregister.."

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_8
    :goto_3
    return-object p2
.end method

.method public onSubscribeError(ILcom/sec/ims/util/SipError;)V
    .locals 4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscribeError: state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    .line 257
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 258
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    return-void

    .line 262
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p1

    const/16 v2, 0x12

    if-ne p1, v2, :cond_2

    .line 264
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    const/4 p2, 0x2

    if-le p1, p2, :cond_1

    move p1, v0

    move v0, v1

    goto :goto_2

    :cond_1
    :goto_0
    move p1, v1

    move v0, p1

    goto :goto_2

    .line 267
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->BAD_EXTENSION:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->EXTENSION_REQUIRED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SESSION_INTERVAL_TOO_SMALL:Lcom/sec/ims/util/SipError;

    .line 268
    invoke-virtual {p1, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 285
    :cond_3
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    .line 286
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    goto :goto_0

    .line 280
    :cond_4
    :goto_1
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 281
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    const-wide/16 p1, 0x0

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->handleRetryTimer(J)V

    move p1, v1

    :goto_2
    if-eqz v0, :cond_5

    .line 291
    iget p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->getWaitTime(I)J

    move-result-wide v2

    .line 292
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->startRetryTimer(J)V

    .line 295
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 296
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const-string v0, "Subscribe Error. Deregister.."

    invoke-interface {p2, p0, v1, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onTelephonyCallStatusChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v0, 0x0

    const-string v1, "Call status changed. Deregister.."

    const/4 v2, 0x1

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
    .locals 5

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mLastKnownCountryIso:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RegiGvnTmo"

    if-eqz v0, :cond_0

    .line 714
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;)V

    .line 715
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v2, ""

    .line 716
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mLastKnownCountryIso:Ljava/lang/String;

    .line 718
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateGeolocation: No countryIso. Get from GeolocationController: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mLastKnownCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 722
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 723
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mLastKnownCountryIso:Ljava/lang/String;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "onUpdateGeolocation: countryIso [%s] -> [%s]"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 725
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mLastKnownCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mLastKnownCountryIso:Ljava/lang/String;

    const/4 p1, 0x1

    .line 727
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mHasPendingDeregistration:Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onVolteSettingChanged()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->updateEutranValues()V

    return-void
.end method

.method public onWfcProfileChanged([B)V
    .locals 2

    const/4 v0, 0x4

    .line 101
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcPrefMode:B

    const/4 v0, 0x5

    .line 102
    aget-byte p1, p1, v0

    iput-byte p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WFC] PrefMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcPrefMode:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Status = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiGvnTmo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-byte p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mWfcStatus:B

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "WFC switch has turned off. Release throttle."

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 106
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->releaseThrottle(I)V

    :cond_0
    return-void
.end method

.method public releaseThrottle(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 599
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCsfbSupported(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 600
    iget p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mPhoneId:I

    const-string/jumbo v0, "releaseThrottle: Reset retry on new PLMN of EPS only/5GS"

    const-string v2, "RegiGvnTmo"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->resetUpcomingRetry()V

    .line 605
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    goto :goto_0

    .line 593
    :cond_2
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mWFCSubscribeForbiddenCounter:I

    goto :goto_0

    .line 583
    :cond_3
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->mAllPcscfFailed:Z

    .line 584
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    const-wide/16 v2, 0x0

    .line 585
    iput-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    .line 586
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->stopRetryTimer()V

    .line 587
    iput v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mSubscribeForbiddenCounter:I

    :goto_0
    return-void
.end method

.method protected resetUpcomingRetry()V
    .locals 4

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetUpcomingRetry: Maintain mRegiAt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mRegiAt:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiGvnTmo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 617
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mFailureCounter:I

    .line 618
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mCurPcscfIpIdx:I

    .line 620
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernor;->mThrottleReason:I

    return-void
.end method

.class Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;
.super Ljava/lang/Object;
.source "ResipRegistrationManager.java"

# interfaces
.implements Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

.field final synthetic val$phoneId:I

.field final synthetic val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

.field final synthetic val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;


# direct methods
.method public static synthetic $r8$lambda$tXYBWHYa_9GPwK0Had70EsTW_0g(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->lambda$onUpdatePani$0(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 927
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUpdatePani$0(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 3

    .line 1042
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1043
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCellIdentity(IZ)Landroid/telephony/CellIdentity;

    goto :goto_0

    :cond_0
    const-string v0, "ResipRegiMgr"

    const-string v2, "Sync CellInfo with RIL"

    .line 1045
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 1047
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public onContactActivated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .locals 2

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContactActivated: handle-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ResipRegiMgr"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyContactActivated(II)V

    return-void
.end method

.method public onCreated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 7

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 931
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    if-gez v1, :cond_2

    .line 932
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",UA FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v2, ":null"

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x11020003

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    const-string v2, "UACreateFailed"

    const-string v3, "ResipRegiMgr"

    if-nez p1, :cond_3

    const-string p1, "failed to create UA. restart imsService."

    .line 936
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 938
    invoke-static {v1}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void

    .line 942
    :cond_3
    iget v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    if-gez v4, :cond_4

    const-string p1, "onCreated: Invalid phoneId"

    .line 943
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 945
    invoke-static {v1}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void

    .line 949
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreated: UA handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 951
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 953
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 954
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 955
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    .line 956
    iget v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    const-string/jumbo v5, "updating geolocation for UA Creation"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 957
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    .line 959
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v4

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v2, v4, v5, v6, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 961
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    const-string p1, "onCreated: pani is null"

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 964
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "IEEE-802.11"

    .line 966
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 967
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 968
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 969
    :cond_7
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v4, v4, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$phoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    .line 972
    :cond_8
    invoke-virtual {p1, v2, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updatePani(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-interface {v4, v2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPaniSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 976
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 978
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyEmergencyReady(I)V

    return-void

    :cond_a
    const-string/jumbo p0, "trigger registration."

    .line 982
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->register()I

    .line 985
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateCallwaitingStatus()V

    return-void
.end method

.method public onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;JZZ)V
    .locals 2

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRequestedDeregi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfterMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error"

    .line 1006
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "phoneId"

    .line 1007
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1008
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    const-string/jumbo p2, "profileId"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isRequestedDeregi"

    .line 1009
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "retryAfter"

    .line 1010
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "pcscfGone"

    .line 1011
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyDeRegistered(Landroid/os/Bundle;)V

    return-void
.end method

.method public onNotifyNullProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2

    .line 1080
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1081
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ResipRegiMgr"

    const-string p1, "Ignore recovery action during ongoing call on the other slot."

    .line 1082
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    const-string v0, "NoUserAgent"

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    .line 1086
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$task:Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    :goto_0
    return-void
.end method

.method public onRefreshRegNotification(I)V
    .locals 2

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefreshRegNotification : handle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRefreshRegNotification(I)V

    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegEventContactUriNotification: handle-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "handle"

    .line 1069
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "contact_uri_list"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "emergencyNumbers"

    .line 1071
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isRegi"

    .line 1073
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "contactUriType"

    .line 1074
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRegEventContactUriNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistered: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 998
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-interface {p0, v1, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRegistered(IILcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onRegistrationError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;J)V
    .locals 3

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationError: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retryAfterMs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phoneId"

    .line 1020
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    const-string/jumbo v2, "profileId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "handle"

    .line 1022
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error"

    .line 1023
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "retryAfter"

    .line 1024
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1025
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyRegistrationError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSubscribeError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V
    .locals 3

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubscribeError: UA handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phoneId"

    .line 1033
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1034
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    const-string/jumbo v1, "profileId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error"

    .line 1035
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1036
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->val$regHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifySubscribeError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUpdatePani(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 2

    .line 1041
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

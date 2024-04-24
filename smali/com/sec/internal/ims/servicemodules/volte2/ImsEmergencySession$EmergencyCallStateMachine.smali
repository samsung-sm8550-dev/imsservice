.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;
.super Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
.source "ImsEmergencySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyCallStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$OutgoingCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$InCall;,
        Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$EndingCall;
    }
.end annotation


# static fields
.field private static final EVENT_EMERGENCY_REGISTERED:I = 0x38f


# instance fields
.field private epdnCountCheck:I

.field private epdnFailCount:I

.field private mEmergencyRegistered:Z

.field private mHasEstablished:Z

.field private mNextPcscfChangedWorking:Z

.field private mRequstedStopPDN:Z

.field private mStartDelayed:Z

.field protected mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEmergencyRegistered(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mEmergencyRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mHasEstablished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextPcscfChangedWorking(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mNextPcscfChangedWorking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequstedStopPDN(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartDelayed(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mStartDelayed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEmergencyRegistered(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mEmergencyRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasEstablished(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mHasEstablished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextPcscfChangedWorking(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mNextPcscfChangedWorking:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequstedStopPDN(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartDelayed(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mStartDelayed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monEnded(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onEnded(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            "Lcom/sec/ims/ImsRegistration;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;",
            "Lcom/sec/internal/constants/Mno;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Ljava/lang/String;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p1

    .line 159
    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 160
    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mHasEstablished:Z

    .line 149
    iput-boolean v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 150
    iput-boolean v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mEmergencyRegistered:Z

    .line 151
    iput-boolean v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mNextPcscfChangedWorking:Z

    .line 152
    iput-boolean v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mStartDelayed:Z

    .line 153
    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->epdnFailCount:I

    const/4 v0, 0x5

    .line 154
    iput v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->epdnCountCheck:I

    .line 161
    iput-object v12, v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    .line 164
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$ReadyToCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 165
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$OutgoingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$OutgoingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 166
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$AlertingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 167
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$InCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$InCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 168
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$EndingCall;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine$EndingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object v0, v12, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    return-void
.end method

.method private onE911InviteTill180TimerFail(I)Z
    .locals 4

    const/16 v0, 0x133

    if-ne p1, v0, :cond_0

    .line 960
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[ANY_STATE] ON_E911_INVITE_TILL_180_TIMER_FAIL expired"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 962
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E3:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->EXPIRED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 965
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    const/16 v0, 0x11

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 969
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    .line 975
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 p1, 0x130

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return v1

    .line 983
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, v2, :cond_2

    .line 984
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private onEnded(Landroid/os/Message;)Z
    .locals 9

    .line 1148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1149
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] ErrorMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v1, v5, :cond_0

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v1, v5, :cond_0

    const-string v1, "TEL"

    .line 1151
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TWO_DEGREE:Lcom/sec/internal/constants/Mno;

    if-eq v1, v5, :cond_0

    .line 1152
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VELCOM_BY:Lcom/sec/internal/constants/Mno;

    if-ne v1, v5, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez v1, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1155
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 1156
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return v4

    .line 1160
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v5, :cond_2

    const-string v1, "Alternative Service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez v1, :cond_2

    .line 1161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN for MTN_ZA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1163
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 1164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return v4

    .line 1168
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x0

    if-eq v1, v5, :cond_3

    sget-object v5, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v5, :cond_5

    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez v1, :cond_5

    .line 1169
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    .line 1171
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v5}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVoiceRegState(I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_0

    :cond_4
    move v5, v6

    .line 1173
    :goto_0
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v7}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v7

    .line 1174
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, v8}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v1

    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    if-nez v1, :cond_5

    .line 1176
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN in LTE - No CS, Only Epdg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1178
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 1179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return v4

    .line 1183
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v1, v5, :cond_6

    const-string v1, "RTP Timeout"

    .line 1184
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN for DCM."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1187
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 1188
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_6
    return v6
.end method

.method private onEpdnSetupFail()Z
    .locals 6

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 993
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ANY_STATE] TMO_E911 EPDN setup fail before E1 expire, stop E1 Timer"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v2, 0x12f

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 995
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E1:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v5, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ANY_STATE] TMO_E911 RTT, mRequstedStopPDN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRegisteredOver3gppPsVoice(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ANY_STATE] TMO_E911 stopEmergencyRegistration and redial to IMS PDN"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1006
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v2

    const/16 v4, 0xb

    invoke-interface {v0, v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->triggerPsRedial(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ANY_STATE] TMO_E911 stopEmergencyRegistration"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1010
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->quit()V

    return v1

    .line 1015
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ANY_STATE] TMO_E911 CSFB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->handleE911Fail()V

    return v1

    .line 1019
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1020
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->epdnFailCount:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->epdnCountCheck:I

    if-ge v0, v2, :cond_3

    add-int/2addr v0, v1

    .line 1021
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->epdnFailCount:I

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private onError(Landroid/os/Message;)Z
    .locals 7

    .line 1036
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 1037
    invoke-virtual {v0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    .line 1039
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_0

    const/16 v2, 0x2bc

    if-ge v0, v2, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->handleE911Fail()V

    return v3

    .line 1046
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    const-wide/16 v4, 0x1f4

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez v1, :cond_1

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN TMOBILE 403 error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1050
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 1051
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return v3

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    const/16 v2, 0x190

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez v1, :cond_3

    const/16 v1, 0x17c

    if-eq v0, v1, :cond_2

    if-lt v0, v2, :cond_3

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_3

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1061
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 1062
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return v3

    :cond_3
    const-string v1, "TEL"

    .line 1067
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez v1, :cond_4

    if-lt v0, v2, :cond_4

    const/16 v1, 0x258

    if-ge v0, v1, :cond_4

    .line 1069
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN Telstra 4XX, 5XX error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1071
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    .line 1072
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return v3

    .line 1077
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez v1, :cond_5

    .line 1078
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnect Emergency PDN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 1080
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1081
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    return v3

    .line 1085
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1086
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onErrorForTmo(Landroid/os/Message;I)Z

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private onErrorForTmo(Landroid/os/Message;I)Z
    .locals 6

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANY_STATE] TMO_E911 errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequstedStopPDN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", E2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v3, 0xd0

    .line 1094
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", E3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v4, 0x133

    .line 1095
    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    if-nez p2, :cond_4

    .line 1099
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "[ANY_STATE] TMO_E911 RTT, stopEmergencyRegistration"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p2, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1101
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E2:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v5, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p2, v0, v2, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 1102
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p2, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1103
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E3:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    invoke-interface {p2, v0, v2, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 1105
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    const/16 p2, 0x96e

    .line 1106
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 1107
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x1388

    invoke-virtual {p2, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1108
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mRequstedStopPDN:Z

    return v1

    :cond_0
    const/16 p1, 0x12c

    const-string v0, "[ANY_STATE] TMO_E911 stop E2, E3 timer and CSFB"

    const/16 v2, 0x190

    if-lt p2, p1, :cond_1

    if-ge p2, v2, :cond_1

    .line 1113
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1115
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E2:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 1116
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1117
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E3:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    invoke-interface {p1, p2, p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    goto/16 :goto_0

    :cond_1
    if-lt p2, v2, :cond_4

    const/16 p1, 0x2bc

    if-ge p2, p1, :cond_4

    .line 1119
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v3}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1120
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p2, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$misNoNextPcscf(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1121
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1123
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E2:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 1124
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1125
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E3:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    invoke-interface {p1, p2, p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    goto :goto_0

    .line 1127
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[ANY_STATE] TMO_E911 stop E2 timer and redial to next p-cscf"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1129
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E2:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p1, p2, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    const/16 p1, 0x192

    .line 1131
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1132
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {p2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->moveNextPcscf(ILandroid/os/Message;)V

    .line 1133
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mNextPcscfChangedWorking:Z

    .line 1134
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return v1

    .line 1137
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1138
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "[ANY_STATE] TMO_E911 stop E3 timer and CSFB"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1140
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E3:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->CANCELLED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {p1, p2, p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onLte911Fail()Z
    .locals 6

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ANY_STATE] TMO_E911 E1 timer expired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v2, 0x12f

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;->E1:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;

    sget-object v5, Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;->EXPIRED:Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V

    .line 922
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[ANY_STATE] TMO_E911 RTT end call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    .line 926
    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    .line 925
    invoke-interface {v0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v0

    .line 927
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ANY_STATE] TMO_E911 emergencyPdnConnected ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 929
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[ANY_STATE] TMO_EUR epdn not connected, do CSFB"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRoaming(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isRegisteredOver3gppPsVoice(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[ANY_STATE] TMO_E911 stopEmergencyRegistration and redial to IMS PDN"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 936
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v4, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v3

    const/16 v5, 0xb

    invoke-interface {v0, v4, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->triggerPsRedial(III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ANY_STATE] TMO_E911 redial to IMS PDN success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->quit()V

    return v2

    .line 953
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[ANY_STATE] TMO_E911 CSFB"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1

    .line 944
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ANY_STATE] TMO_E911 anonymous INVITE to same p-cscf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$mgetEmergencyUa(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 947
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->notifyE911RegistrationFailed()V

    .line 949
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mThisEsm:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return v2
.end method

.method private onLte911FailAfterDelay()V
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    :cond_1
    return-void
.end method

.method private terminate()V
    .locals 3

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reset mNextPcscfChangedWorking to false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1196
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->mNextPcscfChangedWorking:Z

    :cond_0
    return-void
.end method


# virtual methods
.method handleE911Fail()V
    .locals 5

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ANY_STATE] handleE911Fail()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000020

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance v1, Lcom/sec/ims/util/SipError;

    const/16 v2, 0x44f

    const-string v3, "Tlte_911fail"

    invoke-direct {v1, v2, v3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x38f

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_1

    .line 845
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 846
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 849
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "mmtel-video"

    goto :goto_0

    :cond_0
    const-string p0, "mmtel"

    .line 852
    :goto_0
    new-instance v1, Lcom/sec/ims/util/SipError;

    const/16 v2, 0x9cb

    invoke-direct {v1, v2}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    :cond_1
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 3

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANY_STATE] unhandledMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    .line 863
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    .line 871
    :cond_1
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_5

    const/16 v1, 0x132

    if-eq v0, v1, :cond_4

    const/16 v1, 0x133

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 873
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onLte911Fail()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 878
    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onE911InviteTill180TimerFail(I)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 884
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onEpdnSetupFail()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 889
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onLte911FailAfterDelay()V

    .line 890
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->handleE911Fail()V

    return-void

    .line 894
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onError(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 900
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->onEnded(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 906
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession$EmergencyCallStateMachine;->terminate()V

    .line 913
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->unhandledMessage(Landroid/os/Message;)V

    return-void
.end method

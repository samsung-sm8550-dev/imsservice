.class public Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.super Lcom/sec/internal/helper/StateMachine;
.source "UserAgent.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IUserAgent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;,
        Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;
    }
.end annotation


# static fields
.field private static final ECC_IWLAN:Ljava/lang/String; = "IWLAN"

.field private static final EVENT_ACCEPT_CALL_TRANSFER:I = 0x15

.field public static final EVENT_AKA_CHALLENGE_TIME_OUT:I = 0x2e

.field private static final EVENT_CREATE_UA:I = 0x1

.field private static final EVENT_DELAYED_DEREGISTERED:I = 0x320

.field private static final EVENT_DELETE_UA:I = 0x4

.field private static final EVENT_DEREGISTERED:I = 0xc

.field private static final EVENT_DEREGISTERED_TIMEOUT:I = 0xd

.field private static final EVENT_DEREGISTER_COMPLETE:I = 0xb

.field private static final EVENT_DISCONNECTED:I = 0x64

.field private static final EVENT_EMERGENCY_REGISTRATION_FAILED:I = 0x384

.field private static final EVENT_ENABLE_QUANTUM_SECURITY_SERVICE:I = 0x73

.field private static final EVENT_RECOVER_REGISESSION:I = 0x2328

.field private static final EVENT_REGISTERED:I = 0x8

.field private static final EVENT_REGISTER_REQUESTED:I = 0x7

.field private static final EVENT_REG_INFO_NOTIFY:I = 0x65

.field private static final EVENT_REQUEST_ANSWER_CALL:I = 0x10

.field private static final EVENT_REQUEST_CANCEL_TRANSFER_CALL:I = 0x2d

.field private static final EVENT_REQUEST_DELETE_TCP_CLIENT_SOCKET:I = 0x31

.field private static final EVENT_REQUEST_DEREGISTER:I = 0xa

.field private static final EVENT_REQUEST_DEREGISTER_INTERNAL:I = 0x2b

.field private static final EVENT_REQUEST_EMERGENCY_LOCATION_PUBLISH:I = 0x41

.field private static final EVENT_REQUEST_END_CALL:I = 0xf

.field private static final EVENT_REQUEST_EXTEND_TO_CONFERENCE:I = 0x6b

.field private static final EVENT_REQUEST_HANDLE_CMC_CSFB:I = 0x37

.field private static final EVENT_REQUEST_HANDLE_DTMF:I = 0x17

.field private static final EVENT_REQUEST_HOLD_CALL:I = 0x11

.field private static final EVENT_REQUEST_HOLD_VIDEO:I = 0x1a

.field private static final EVENT_REQUEST_MAKE_CALL:I = 0xe

.field private static final EVENT_REQUEST_MAKE_CONF_CALL:I = 0x24

.field private static final EVENT_REQUEST_MERGE_CALL:I = 0x13

.field private static final EVENT_REQUEST_MODIFY_CALL_TYPE:I = 0x68

.field private static final EVENT_REQUEST_MODIFY_VIDEO_QUALITY:I = 0x6f

.field private static final EVENT_REQUEST_NETWORK_SUSPENDED:I = 0x26

.field private static final EVENT_REQUEST_PROGRESS_INCOMING_CALL:I = 0x19

.field private static final EVENT_REQUEST_PUBLISH:I = 0x29

.field private static final EVENT_REQUEST_PUBLISH_DIALOG:I = 0x2f

.field private static final EVENT_REQUEST_PULLING_CALL:I = 0x1d

.field private static final EVENT_REQUEST_REGISTER:I = 0x6

.field private static final EVENT_REQUEST_REJECT_CALL:I = 0x16

.field private static final EVENT_REQUEST_REJECT_MODIFY_CALL_TYPE:I = 0x6a

.field private static final EVENT_REQUEST_REPLY_MODIFY_CALL_TYPE:I = 0x69

.field private static final EVENT_REQUEST_REPLY_WITH_IDC:I = 0x3e

.field private static final EVENT_REQUEST_RESUME_CALL:I = 0x12

.field private static final EVENT_REQUEST_RESUME_VIDEO:I = 0x1b

.field private static final EVENT_REQUEST_SEND_CMC_INFO:I = 0x3b

.field private static final EVENT_REQUEST_SEND_INFO:I = 0x30

.field private static final EVENT_REQUEST_SEND_NEGOTIATED_LOCAL_SDP:I = 0x40

.field private static final EVENT_REQUEST_SEND_TEXT:I = 0x33

.field private static final EVENT_REQUEST_SEND_VCS_INFO:I = 0x3d

.field private static final EVENT_REQUEST_START_CAMERA:I = 0x1c

.field private static final EVENT_REQUEST_START_CMC_RECORD:I = 0x3a

.field private static final EVENT_REQUEST_START_RECORD:I = 0x38

.field private static final EVENT_REQUEST_START_VIDEO_EARLYMEDIA:I = 0x36

.field private static final EVENT_REQUEST_STOP_CAMERA:I = 0x1e

.field private static final EVENT_REQUEST_STOP_RECORD:I = 0x39

.field private static final EVENT_REQUEST_TRANSFER_CALL:I = 0x14

.field private static final EVENT_REQUEST_UNPUBLISH:I = 0x2a

.field private static final EVENT_REQUEST_UPDATE_CALL:I = 0x25

.field private static final EVENT_REQUEST_UPDATE_CALLWAITING_STATUS:I = 0x27

.field private static final EVENT_REQUEST_UPDATE_WITH_IDC:I = 0x3f

.field private static final EVENT_RETRY_UA_CREATE:I = 0x3

.field private static final EVENT_SEND_AUTH_RESPONSE:I = 0x9

.field private static final EVENT_SEND_DTMF_EVENT:I = 0x71

.field private static final EVENT_SEND_MEDIA_EVENT:I = 0x3e9

.field private static final EVENT_SEND_REQUEST:I = 0x3e8

.field private static final EVENT_SEND_SMS:I = 0x1f

.field private static final EVENT_SEND_SMS_RESPONSE:I = 0x21

.field private static final EVENT_SEND_SMS_RP_ACK_RESPONSE:I = 0x20

.field private static final EVENT_SET_QUANTUM_SECURITY_INFO:I = 0x72

.field private static final EVENT_SET_VIDEO_CRT_AUDIO:I = 0x70

.field private static final EVENT_SET_VOWIFI_5GSA_MODE:I = 0x3c

.field private static final EVENT_START_LOCAL_RINGBACKTONE:I = 0x6d

.field private static final EVENT_STOP_LOCAL_RINGBACKTONE:I = 0x6e

.field private static final EVENT_UA_CREATED:I = 0x2

.field private static final EVENT_UA_DELETED:I = 0x5

.field private static final EVENT_UPDATE_AUDIO_INTERFACE:I = 0x6c

.field private static final EVENT_UPDATE_CONF_CALL:I = 0x23

.field private static final EVENT_UPDATE_GEOLOCATION:I = 0x2c

.field private static final EVENT_UPDATE_PANI:I = 0x22

.field private static final EVENT_UPDATE_PANI_RESPONSE:I = 0x7d0

.field private static final EVENT_UPDATE_RAT:I = 0x32

.field private static final EVENT_UPDATE_ROUTE_TABLE:I = 0x66

.field private static final EVENT_UPDATE_TIME_IN_PLANI:I = 0x34

.field private static final EVENT_UPDATE_VCE_CONFIG:I = 0x28

.field private static final LOG_TAG:Ljava/lang/String; = "UserAgent"

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field private static final PROPERTY_ECC_PATH:Ljava/lang/String; = "ril.subtype"

.field protected static final hexArray:[C


# instance fields
.field mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/sec/internal/helper/State;

.field private final mDeregisteringState:Lcom/sec/internal/helper/State;

.field private mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

.field private mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private mEcmpMode:I

.field private final mEmergencyState:Lcom/sec/internal/helper/State;

.field private mEpdgOverCellularData:Z

.field private mEpdgStatus:Z

.field private mError:Lcom/sec/ims/util/SipError;

.field private mHandle:I

.field private mImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mImsProfile:Lcom/sec/ims/settings/ImsProfile;

.field private final mInitialState:Lcom/sec/internal/helper/State;

.field private mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

.field private mNetwork:Landroid/net/Network;

.field private mNotifyServiceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcscfGoneDeregi:Z

.field private mPdn:I

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPhoneId:I

.field private final mProhibitedState:Lcom/sec/internal/helper/State;

.field private final mReRegisteringState:Lcom/sec/internal/helper/State;

.field private final mReadyState:Lcom/sec/internal/helper/State;

.field private mRegisterSipResponse:Ljava/lang/String;

.field private final mRegisteredState:Lcom/sec/internal/helper/State;

.field private final mRegisteringState:Lcom/sec/internal/helper/State;

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRetryAfterMs:J

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

.field private mSuspendStatus:Z

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private final mTerminatingState:Lcom/sec/internal/helper/State;

.field private mThirdPartyFeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;


# direct methods
.method public static synthetic $r8$lambda$SwqruuE7Sg8X--6tNa0YhkpFZ1c(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmergencyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImpuList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifyServiceList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadyState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryAfterMs(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfterMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSimManager(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThirdPartyFeatureTags(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEcmpMode(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegisterSipResponse(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryAfterMs(Lcom/sec/internal/ims/core/handler/secims/UserAgent;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRetryAfterMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addDevice(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->addImpu(Lcom/sec/ims/util/NameAddr;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildImsRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->buildImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeDevice(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->removeImpu(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEpdgStatus(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateEpdgStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRouteTable(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateRouteTable(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 2578
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/core/handler/secims/IStackIF;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2

    const-string v0, "UserAgent - "

    .line 245
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p2, -0x1

    .line 81
    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    const/4 p2, 0x0

    .line 83
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 84
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 85
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 95
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 97
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 98
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 100
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 101
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 102
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 105
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 106
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 107
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    .line 110
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 111
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 112
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 113
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 1062
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1149
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1269
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1370
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1993
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 2050
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 2139
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 2183
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2325
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2352
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 246
    iput-object p6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 247
    iput-object p7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 248
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 249
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->initState()V

    .line 251
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 252
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 253
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 254
    iput-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 2

    const-string v0, "UserAgent - "

    .line 258
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p1, -0x1

    .line 81
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPcscfGoneDeregi:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 105
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 106
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 107
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 112
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    iput-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 113
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    .line 1062
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DefaultState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 1149
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$InitialState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    .line 1269
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReadyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    .line 1370
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 1993
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 2050
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ReRegisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    .line 2139
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$DeregisteringState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    .line 2183
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$TerminatingState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    .line 2325
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$EmergencyState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    .line 2352
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$ProhibitedState-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    .line 259
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private addDevice(Lcom/sec/ims/util/NameAddr;)V
    .locals 6

    .line 2648
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 2649
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2650
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    const-string v4, "gr"

    invoke-virtual {v3, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2652
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2657
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private addImpu(Lcom/sec/ims/util/NameAddr;)V
    .locals 7

    .line 2617
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    monitor-enter v0

    .line 2618
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 2619
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2620
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    const-string v5, "gr"

    invoke-virtual {v4, v5}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    const-string v6, "gr"

    invoke-virtual {v5, v6}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2622
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/ims/util/NameAddr;->setDisplayName(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 2627
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2629
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private buildImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 8

    .line 2734
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 2735
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2737
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2738
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2739
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2740
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNotifyServiceList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 2742
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getServiceList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v3, "datachannel"

    .line 2743
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2746
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v3

    .line 2748
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_1

    const-string v4, "mmtel"

    .line 2749
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2750
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    .line 2751
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 2753
    :goto_1
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2755
    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/ims/settings/ImsProfile;

    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {v6, v7}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 2756
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2757
    invoke-virtual {v5, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2758
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setPrivateUserId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    .line 2759
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setPublicUserId(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2760
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisteredPublicUserId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v5

    .line 2761
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setPreferredPublicUserId(Lcom/sec/ims/util/NameAddr;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v2

    .line 2762
    invoke-virtual {v2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2763
    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsRegistration$Builder;->setPcscf(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    .line 2764
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 2765
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgOverCellularData(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    .line 2766
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2767
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 2768
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEcmpMode:I

    .line 2769
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setEcmpStatus(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    .line 2770
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setDeviceList(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisterSipResponse:Ljava/lang/String;

    .line 2771
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setRegisterSipResponse(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    .line 2772
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2773
    invoke-virtual {v1, v4}, Lcom/sec/ims/ImsRegistration$Builder;->setPAssociatedUri2nd(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v1

    .line 2774
    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsRegistration$Builder;->setSubscriptionId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 2775
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p0

    .line 2776
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 2581
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2582
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 2583
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 2584
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 2585
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2587
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private extractDomain(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2591
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 2593
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string v3, "]"

    const-string v4, "UserAgent["

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2598
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2600
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/util/NameAddr;

    .line 2601
    invoke-virtual {p2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "extractDomain: For IMSI-based registration, use phone-context as domain."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    invoke-virtual {p2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    .line 2594
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "extractDomain:  don\'t use phone-context as domain."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private extractPAssociatedUri2nd(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2790
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "+82"

    const-string v2, "0"

    .line 2792
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2794
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAgent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "extractPAssociatedUri2nd"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/NameAddr;

    .line 2797
    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "extractPAssociatedUri2nd  uri"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v5

    sget-object v6, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v5, v6, :cond_1

    .line 2801
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extractPAssociatedUri2nd: uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2802
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getOnlyNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 2806
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;
    .locals 1

    .line 2681
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$$ExternalSyntheticLambda0;-><init>(Lcom/sec/ims/util/ImsUri$UriType;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method private getOnlyNumberFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2820
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string/jumbo v1, "tel:"

    .line 2821
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "sip:"

    .line 2822
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "*31#"

    const-string v2, "[*]31#"

    .line 2823
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "#31#"

    .line 2824
    invoke-virtual {v0, v1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserAgent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getOnlyNumberFromURI"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2829
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2830
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string p0, "@"

    const-string p1, ";"

    .line 2834
    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    move v1, p1

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 2837
    aget-object v2, p0, v1

    .line 2838
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2839
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private getPAssociatedUri2nd(Ljava/util/Set;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2781
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->extractPAssociatedUri2nd(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 2782
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserAgent["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPAssociatedUri2nd() : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getPreferredImpu(Ljava/util/Set;)Lcom/sec/ims/util/NameAddr;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/ims/util/NameAddr;"
        }
    .end annotation

    .line 2687
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2688
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    .line 2690
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const/16 v5, 0x40

    .line 2691
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_4

    if-eqz v1, :cond_4

    .line 2693
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2694
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 2695
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2700
    new-instance v0, Lcom/sec/ims/util/NameAddr;

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    move-object v4, v0

    goto :goto_1

    .line 2703
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSipUriOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2706
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    .line 2707
    :cond_2
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    goto :goto_1

    .line 2705
    :cond_3
    :goto_0
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    .line 2710
    :cond_4
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreferredImpu: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "UserAgent"

    invoke-static {v5, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v4, :cond_7

    .line 2713
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2714
    new-instance v4, Lcom/sec/ims/util/NameAddr;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImpu()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v2, p0}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2720
    :cond_5
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2721
    sget-object p1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getFirstImpuByUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    .line 2724
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 2725
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/util/NameAddr;

    :cond_7
    :goto_2
    return-object v4
.end method

.method private initState()V
    .locals 2

    .line 975
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 978
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 980
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 981
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 983
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 984
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 985
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 986
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private static synthetic lambda$getFirstImpuByUriType$0(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z
    .locals 0

    .line 2681
    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeDevice(Lcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 2662
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeviceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2664
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2667
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2668
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2669
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeImpu(Lcom/sec/ims/util/ImsUri;)V
    .locals 2

    .line 2633
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImpuList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2635
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2636
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 2638
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2639
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string v1, "gr"

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V
    .locals 3

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDestState to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDestState:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    .line 994
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEFAULT:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_0

    .line 995
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 996
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->READY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_1

    .line 997
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_0

    .line 998
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->INITIAL:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_2

    .line 999
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1000
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_3

    .line 1001
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1002
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_4

    .line 1003
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1004
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_5

    .line 1005
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1006
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_6

    .line 1007
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1008
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_7

    .line 1009
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mTerminatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1010
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->EMERGENCY:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_8

    .line 1011
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEmergencyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1012
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->PROHIBITTED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne p1, v0, :cond_9

    .line 1013
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mProhibitedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 1015
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected State : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserAgent"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_0
    return-void
.end method

.method private updateEpdgStatus()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    goto :goto_0

    .line 344
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    .line 348
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->setEpdgStatus(Z)V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgOverCellularData:Z

    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsRegistration;->setEpdgOverCellularData(Z)V

    :cond_2
    return-void
.end method

.method private updateRouteTable(ILjava/lang/String;)V
    .locals 3

    .line 2557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateRouteTable: op "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2565
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->removeRouteToHostAddress(ILjava/lang/String;)Z

    goto :goto_0

    .line 2561
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->requestRouteToHostAddress(ILjava/lang/String;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public acceptCallTranfer(IZILjava/lang/String;)V
    .locals 3

    .line 705
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCallTransfer: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " accepted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 708
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 709
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "accepted"

    .line 710
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-lez p3, :cond_0

    const-string/jumbo p1, "status"

    .line 712
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reason"

    .line 713
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x15

    .line 716
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public answerCall(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 474
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmcCallEstablishTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " idcExtra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 478
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "callType"

    .line 479
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cmcCallTime"

    .line 480
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "idcExtra"

    .line 481
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 483
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public cancelTransferCall(ILandroid/os/Message;)V
    .locals 3

    .line 656
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransferCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 657
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 658
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 659
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x2d

    .line 661
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public conference([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 2

    .line 587
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confuri"

    .line 588
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "calltype"

    .line 589
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "eventSubscribe"

    .line 590
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dialogType"

    .line 591
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "participants"

    .line 592
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "origUri"

    .line 593
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriType"

    .line 594
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "removeReferUriType"

    .line 595
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriAsserted"

    .line 596
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "useAnonymousUpdate"

    .line 597
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "supportPrematureEnd"

    .line 598
    invoke-virtual {v0, p1, p11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "result"

    .line 599
    invoke-virtual {v0, p1, p12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x24

    .line 601
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public create()I
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "create:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public deleteTcpClientSocket()V
    .locals 3

    .line 373
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "deleteTcpClientSocket:"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x31

    .line 374
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public deregister(ZZ)V
    .locals 9

    .line 2896
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregister: local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v4, 0xa

    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    move-object v3, p0

    move v5, p1

    .line 2900
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 2902
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :goto_0
    return-void
.end method

.method public deregisterInternal(Z)V
    .locals 9

    .line 354
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregisterInternal: local="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x2b

    const/4 v6, -0x1

    const-wide/16 v7, 0x1f4

    move-object v3, p0

    move v5, p1

    .line 355
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    return-void
.end method

.method public deregisterLocal()V
    .locals 3

    .line 359
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v1, "deregisterLocal:"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xd

    .line 360
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public enableQuantumSecurityService(IZ)V
    .locals 3

    .line 902
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableQuantumSecurityService: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 904
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 905
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "enable"

    .line 906
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x73

    .line 907
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public endCall(ILcom/sec/internal/constants/ims/SipReason;)V
    .locals 3

    .line 468
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 470
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public extendToConfCall([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 608
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confuri"

    .line 609
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "calltype"

    .line 610
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "eventSubscribe"

    .line 611
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "dialogType"

    .line 612
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "participants"

    .line 613
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p1, "sessId"

    .line 614
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "origUri"

    .line 615
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriType"

    .line 616
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "removeReferUriType"

    .line 617
    invoke-virtual {v0, p1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "referUriAsserted"

    .line 618
    invoke-virtual {v0, p1, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "useAnonymousUpdate"

    .line 619
    invoke-virtual {v0, p1, p11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "supportPrematureEnd"

    .line 620
    invoke-virtual {v0, p1, p12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x6b

    .line 622
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 0

    .line 2849
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mError:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getHandle()I
    .locals 0

    .line 2907
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mHandle:I

    return p0
.end method

.method public getImsProfile()Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 2873
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 2941
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 2951
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getPdn()I
    .locals 0

    .line 275
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    return p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 2878
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    return p0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 291
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendState()Z
    .locals 0

    .line 369
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    return p0
.end method

.method public getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 0

    .line 2853
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-object p0
.end method

.method public handleCmcCsfb(I)V
    .locals 2

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmcCsfb: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 936
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x37

    .line 937
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public handleDtmf(IIIILandroid/os/Message;)V
    .locals 3

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDtmf: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 491
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "code"

    .line 492
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    .line 493
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "operation"

    .line 494
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 495
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x17

    .line 496
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public holdCall(ILandroid/os/Message;)V
    .locals 3

    .line 510
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 513
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 514
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x11

    .line 515
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public holdVideo(ILandroid/os/Message;)V
    .locals 3

    .line 528
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 530
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 531
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1a

    .line 532
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public isDeregistring()Z
    .locals 1

    .line 2946
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mDeregisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isRegistered(Z)Z
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public isRegistering()Z
    .locals 2

    .line 2858
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mReRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public makeCall(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p9

    move-object/from16 v3, p12

    move-object/from16 v4, p14

    .line 413
    iget v5, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeCall: destUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " origUri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UserAgent"

    .line 413
    invoke-static {v7, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "destUri"

    move-object v7, p1

    .line 417
    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "origUri"

    move-object v7, p2

    .line 418
    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "result"

    move-object/from16 v7, p18

    .line 419
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v6, "type"

    .line 420
    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_0

    const-string v1, "additionalContentsContents"

    .line 422
    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "additionalContentsMime"

    .line 423
    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "cli"

    move-object v6, p7

    .line 425
    invoke-virtual {v5, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dispName"

    move-object v6, p4

    .line 426
    invoke-virtual {v5, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "alertInfo"

    move-object/from16 v6, p10

    .line 427
    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dialedNumber"

    move-object v6, p5

    .line 428
    invoke-virtual {v5, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pEmergencyInfo"

    move-object/from16 v6, p8

    .line 429
    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isLteEpsOnlyAttached"

    move/from16 v6, p11

    .line 430
    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_1

    const-string v1, "additionalSipHeaders"

    .line 432
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "p2p"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    const-string v1, "cmcBoundSessionId"

    move/from16 v2, p13

    .line 438
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v4, :cond_3

    .line 439
    invoke-virtual/range {p14 .. p14}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "composer_data"

    .line 440
    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    const-string/jumbo v1, "replaceCallId"

    move-object/from16 v2, p15

    .line 442
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cmcEdCallSlot"

    move/from16 v2, p16

    .line 443
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "idcExtra"

    move-object/from16 v2, p17

    .line 444
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 445
    invoke-virtual {p0, v1, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public mergeCall(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    .line 560
    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string v3, "mergeCall: "

    const-string v4, "UserAgent"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 562
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "session1"

    move v4, p1

    .line 563
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "session2"

    move v4, p2

    .line 564
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "confuri"

    move-object v4, p3

    .line 565
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "calltype"

    move v4, p4

    .line 566
    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "eventSubscribe"

    move-object v4, p5

    .line 567
    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dialogType"

    move-object v4, p6

    .line 568
    invoke-virtual {v2, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "origUri"

    move-object v4, p7

    .line 569
    invoke-virtual {v2, v3, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "referUriType"

    move-object v4, p8

    .line 570
    invoke-virtual {v2, v3, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "removeReferUriType"

    move-object v4, p9

    .line 571
    invoke-virtual {v2, v3, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "referUriAsserted"

    move-object v4, p10

    .line 572
    invoke-virtual {v2, v3, p10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "useAnonymousUpdate"

    move-object/from16 v4, p11

    .line 573
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "supportPrematureEnd"

    move/from16 v4, p12

    .line 574
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    const-string v3, "extraHeaders"

    .line 576
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    const-string/jumbo v1, "result"

    move-object/from16 v3, p14

    .line 578
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0x13

    .line 580
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public modifyCallType(III)V
    .locals 2

    .line 789
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 790
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "oldType"

    .line 791
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "newType"

    .line 792
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x68

    .line 794
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyE911RegistrationFailed()V
    .locals 1

    const/16 v0, 0x384

    .line 2936
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public progressIncomingCall(ILjava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 455
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "progressIncomingCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 458
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string p1, "headers"

    .line 460
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    const-string p1, "idcExtra"

    .line 462
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x19

    .line 464
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public publishDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;Z)V
    .locals 3

    .line 686
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishDialog: origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dispName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 686
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 690
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "origUri"

    .line 691
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dispName"

    .line 692
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "body"

    .line 693
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expires"

    .line 694
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 695
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x2f

    if-eqz p6, :cond_0

    const-wide/16 p2, 0x1f4

    .line 698
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public pullingCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 666
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pullingCall: pullingUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", origUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", targetDialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 666
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "pullingUri"

    .line 672
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetUri"

    .line 673
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "origUri"

    .line 674
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "targetDialog"

    .line 675
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p5, :cond_0

    .line 677
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "p2p"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string/jumbo p1, "result"

    .line 679
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1d

    .line 681
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public register()I
    .locals 5

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "register:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_1

    .line 318
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isApAssistedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ril.subtype"

    .line 321
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eccPath : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "IWLAN"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mEpdgStatus:Z

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateEpdgStatus()V

    .line 329
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ro.boot.hardware"

    .line 330
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, 0xa

    .line 331
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 333
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public registerListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-void
.end method

.method public rejectCall(ILcom/sec/ims/util/SipError;)V
    .locals 3

    .line 449
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x16

    const/4 v1, -0x1

    .line 451
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public rejectModifyCallType(II)V
    .locals 2

    .line 820
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 821
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reason"

    .line 822
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x6a

    .line 824
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)V
    .locals 2

    .line 798
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 799
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reqType"

    .line 800
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "curType"

    .line 801
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "repType"

    .line 802
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cmcCallTime"

    .line 803
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x69

    .line 805
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public replyWithIdc(IIIILjava/lang/String;)V
    .locals 2

    .line 809
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 810
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reqType"

    .line 811
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "curType"

    .line 812
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "repType"

    .line 813
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "idcExtra"

    .line 814
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e

    .line 816
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestPublish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
    .locals 2

    .line 948
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "presenceInfo"

    .line 949
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "result"

    .line 950
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x29

    .line 951
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public requestUnpublish()V
    .locals 1

    const/16 v0, 0x2a

    .line 955
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resumeCall(ILandroid/os/Message;)V
    .locals 3

    .line 519
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 522
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 523
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x12

    .line 524
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public resumeVideo(ILandroid/os/Message;)V
    .locals 3

    .line 536
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 537
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 538
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 539
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x1b

    .line 540
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendCmcInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 3

    .line 878
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCmcInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 880
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 881
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string p1, "additionalContentsContents"

    .line 883
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "additionalContentsMime"

    .line 884
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x3b

    .line 886
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .locals 3

    .line 396
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmfEvent: sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dtmfEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 399
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "dtmfEvent"

    .line 400
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x71

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendEmergencyLocationPublish(ILandroid/os/Message;)V
    .locals 3

    .line 869
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEmergencyLocationPublish: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 871
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 872
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 873
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x41

    .line 874
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendInfo(IIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
    .locals 3

    .line 854
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 856
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 857
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "calltype"

    .line 858
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "ussdtype"

    .line 859
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "result"

    .line 860
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p4, :cond_0

    const-string p1, "additionalContentsContents"

    .line 862
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "additionalContentsMime"

    .line 863
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x30

    .line 865
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendMediaEvent(III)V
    .locals 2

    .line 959
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "target"

    .line 960
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "event"

    .line 961
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "eventType"

    .line 962
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x3e9

    .line 963
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNegotiatedLocalSdp(ILjava/lang/String;)V
    .locals 2

    .line 967
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 968
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "sdp"

    .line 969
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x40

    .line 971
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 405
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;ZLandroid/os/Message;)V
    .locals 3

    .line 757
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSms: scaUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " localUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDeleveryReport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 757
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 762
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sca"

    .line 763
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "localuri"

    .line 764
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "contentType"

    .line 765
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pdu"

    .line 766
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "isDeliveryReport"

    .line 767
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "result"

    .line 768
    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "callId"

    .line 769
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isEmergency"

    .line 770
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x1f

    .line 772
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendSmsResponse(Ljava/lang/String;I)V
    .locals 3

    .line 783
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmsResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x21

    const/4 v1, 0x0

    .line 785
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendSmsRpAckResponse(Ljava/lang/String;)V
    .locals 3

    .line 777
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSmsRpAckResponse: callId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x20

    .line 779
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendText(ILjava/lang/String;I)V
    .locals 3

    .line 500
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendText: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " text "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 503
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "text"

    .line 504
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "len"

    .line 505
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x33

    .line 506
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendVcsInfo(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 3

    .line 890
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendVcsInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 892
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 893
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string p1, "additionalContentsContents"

    .line 895
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "additionalContentsMime"

    .line 896
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0x3d

    .line 898
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setImsProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsProfile:Lcom/sec/ims/settings/ImsProfile;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setPdn(I)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPdn:I

    return-void
.end method

.method public setQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 911
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQuantumSecurityInfo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callDirection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cryptoMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " qtSessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sessionKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 911
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 915
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 916
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "callDirection"

    .line 917
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cryptoMode"

    .line 918
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "qtSessionId"

    .line 919
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "sessionKey"

    .line 920
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x72

    .line 921
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setThirdPartyFeatureTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mThirdPartyFeatureTags:Ljava/util/List;

    return-void
.end method

.method public setUaProfile(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mUaProfile:Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 3

    .line 387
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoCrtAudio: sessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 390
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "vcrtAudioOn"

    .line 391
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x70

    .line 392
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setVowifi5gsaMode(I)V
    .locals 1

    const/16 v0, 0x3c

    .line 2892
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public startCamera(II)V
    .locals 3

    .line 544
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 546
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "cameraId"

    .line 547
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x1c

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startCmcRecord(IIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p7

    .line 737
    iget v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startCmcRecord: sessionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " filePath "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UserAgent"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 738
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "sessionId"

    .line 739
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioSource"

    move v4, p2

    .line 740
    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "outputFormat"

    move v4, p3

    .line 741
    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maxFileSize"

    move-wide v4, p4

    .line 742
    invoke-virtual {v3, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "maxDuration"

    move v4, p6

    .line 743
    invoke-virtual {v3, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "outputPath"

    .line 744
    invoke-virtual {v3, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "audioEncodingBR"

    move v2, p8

    .line 745
    invoke-virtual {v3, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioChannels"

    move v2, p9

    .line 746
    invoke-virtual {v3, v1, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioSamplingR"

    move/from16 v2, p10

    .line 747
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "audioEncoder"

    move/from16 v2, p11

    .line 748
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "durationInterval"

    move/from16 v2, p12

    .line 749
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fileSizeInterval"

    move-wide/from16 v4, p13

    .line 750
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "author"

    move-object/from16 v2, p15

    .line 751
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 752
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startRecord(ILjava/lang/String;)V
    .locals 3

    .line 720
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRecord: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 721
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 722
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "filePath"

    .line 723
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x38

    .line 724
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public startVideoEarlyMedia(I)V
    .locals 2

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startVideoEarlyMedia: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 928
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x36

    .line 929
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public stopCamera()V
    .locals 3

    .line 552
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v1, "stopCamera"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x1e

    .line 553
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stopRecord(I)V
    .locals 3

    .line 728
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRecord: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 730
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x39

    .line 731
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public suspended(Z)V
    .locals 2

    .line 364
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mSuspendStatus:Z

    const/4 v0, -0x1

    const/16 v1, 0x26

    .line 365
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public terminate()V
    .locals 3

    .line 2929
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v1, "terminate:"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x4

    .line 2931
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public transferCall(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3

    .line 641
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferCall: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " replacingSessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    .line 641
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 644
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 645
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "targetUri"

    .line 646
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_0

    const-string/jumbo p1, "replacingSessionId"

    .line 648
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo p1, "result"

    .line 650
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x14

    .line 652
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public unRegisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mListener:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    return-void
.end method

.method public updateAudioInterface(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 378
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioInterface: mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mode"

    .line 381
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "result"

    .line 382
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p1, 0x6c

    .line 383
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCall(IIILcom/sec/internal/constants/ims/SipReason;Ljava/lang/String;)V
    .locals 3

    .line 840
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCall(): sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 842
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 843
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "action"

    .line 844
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "codecType"

    .line 845
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 846
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result p1

    const-string p2, "cause"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "reasonText"

    .line 847
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "idcExtra"

    .line 848
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x25

    .line 850
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateCallwaitingStatus()V
    .locals 4

    .line 941
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v2, "ss_callwaiting_by_network"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x27

    .line 943
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public updateConfCall(IIILjava/lang/String;)V
    .locals 3

    .line 627
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfCall  ConfSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " participantId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 629
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "confsession"

    .line 630
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "updateCmd"

    .line 631
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "participantId"

    .line 632
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "participant"

    .line 633
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 1

    const/16 v0, 0x2c

    .line 2868
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updatePani(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2912
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    const-string/jumbo v2, "updatePani"

    const-string v3, "UserAgent"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2913
    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePani: pani="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", updatePani: lastPani="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 2915
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2919
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2920
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2921
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 p1, 0x22

    .line 2925
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateRat(I)V
    .locals 1

    const/16 v0, 0x32

    .line 2887
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public updateTimeInPlani(J)V
    .locals 1

    const/16 v0, 0x34

    .line 2882
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateVceConfig(Z)V
    .locals 1

    const/16 v0, 0x28

    .line 2863
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateWithIdc(IILjava/lang/String;)V
    .locals 3

    .line 828
    iget v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWithIdc(): sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 830
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "sessionId"

    .line 831
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "action"

    .line 832
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "idcExtra"

    .line 833
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3f

    .line 835
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

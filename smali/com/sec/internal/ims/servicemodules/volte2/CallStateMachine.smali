.class public Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;
.super Lcom/sec/internal/helper/StateMachine;
.source "CallStateMachine.java"


# static fields
.field public static final ACCEPT:I = 0x16

.field public static final ADD_PARTICIPANT:I = 0x35

.field public static final CANCEL_TRANSFER:I = 0x3c

.field public static final CHECK_VIDEO_DBR:I = 0x19

.field public static final DELAYED_CAMSTART:I = 0x18

.field public static final DELAYED_EPSFB_CHECK_TIMING:I = 0x1389

.field public static final EMERGENCY_INVITE:I = 0xe

.field public static final EMERGENCY_LOCATION_PUBLISH:I = 0x10

.field public static final EXTENDS_CONFERENCE:I = 0x49

.field protected static final FEATURE_FAST_ACCEPT:Z = false

.field public static final FORCE_NOTIFY_CURRENT_CODEC:I = 0x64

.field public static final HANDLE_DTMF:I = 0x38

.field public static final HOLD:I = 0x33

.field public static final HOLD_VIDEO:I = 0x50

.field public static final IDC_ACCEPT:I = 0x96

.field public static final IDC_END:I = 0x98

.field public static final IDC_REINVITE:I = 0x97

.field public static final INCOMING:I = 0x15

.field public static final INFO:I = 0x65

.field public static final LOCATION_ACQUIRING:I = 0xd

.field public static final MERGE:I = 0x48

.field public static final NOTIFY_ERROR:I = 0x1a

.field public static final ON_100_TRYING_TIMEOUT:I = 0xd0

.field public static final ON_ACCEPT_TIMEOUT:I = 0xd4

.field public static final ON_ADS_CHANGED:I = 0x384

.field public static final ON_BUSY:I = 0x2a

.field public static final ON_CALLING:I = 0x21

.field public static final ON_CAMERA_START_FAILED:I = 0xcf

.field public static final ON_CMC_DTMF_EVENT:I = 0x56

.field public static final ON_CMC_INFO_EVENT:I = 0x57

.field public static final ON_DEDICATED_BEARER_LOST:I = 0x1388

.field public static final ON_DUMMY_DNS_TIMER_EXPIRED:I = 0x131

.field public static final ON_E911_INVITE_TILL_180_TIMER_FAIL:I = 0x133

.field public static final ON_E911_PERM_FAIL:I = 0x134

.field public static final ON_EARLYMEDIA:I = 0x20

.field public static final ON_ENDED:I = 0x3

.field public static final ON_EPDG_CONNECTION_CHANGED:I = 0x190

.field public static final ON_EPDN_SETUP_FAIL:I = 0x132

.field public static final ON_EPSFB_RESULT:I = 0x3e8

.field public static final ON_ERROR:I = 0x4

.field public static final ON_ESTABLISHED:I = 0x29

.field public static final ON_EXTEND_TO_CONFERENCE:I = 0x4a

.field public static final ON_FORCE_ESTABLISHED:I = 0x258

.field public static final ON_FORWARDED:I = 0x24

.field public static final ON_HELD_BOTH:I = 0x3f

.field public static final ON_HELD_LOCAL:I = 0x3d

.field public static final ON_HELD_REMOTE:I = 0x3e

.field public static final ON_IDC_ERROR:I = 0x9b

.field public static final ON_IDC_MODIFIED:I = 0x99

.field public static final ON_IDC_SWITCH_REQUEST:I = 0x9a

.field public static final ON_LOCATION_ACQUIRING_SUCCESS:I = 0x1f5

.field public static final ON_LOCATION_ACQUIRING_TIMEOUT:I = 0x1f4

.field public static final ON_LTE_911_FAIL:I = 0x12f

.field public static final ON_LTE_911_FAIL_AFTER_DELAY:I = 0x130

.field public static final ON_MODIFIED:I = 0x5b

.field public static final ON_NEXT_PCSCF_CHANGED:I = 0x192

.field public static final ON_OUTGOING_CALL_REG_TIMEOUT:I = 0xd3

.field public static final ON_POOR_VIDEO_TIMER_EXPIRED:I = 0xcd

.field public static final ON_RECORD_EVENT:I = 0x2bc

.field public static final ON_REFER_STATUS:I = 0x4b

.field public static final ON_REINVITE_TIMER_EXPIRED:I = 0x12e

.field public static final ON_RESUME_CALL_RETRY_TIMEOUT:I = 0xca

.field public static final ON_RINGINGBACK:I = 0x22

.field public static final ON_RING_TIMEOUT:I = 0xcc

.field public static final ON_RRC_RELEASED:I = 0x191

.field public static final ON_RTT_DEDICATED_BEARER_LOST:I = 0xd2

.field public static final ON_RTT_DEDICATED_BEARER_TIMER_EXPIRED:I = 0xd1

.field public static final ON_SESSIONPROGRESS:I = 0x23

.field public static final ON_SESSIONPROGRESS_TIMEOUT:I = 0xcb

.field public static final ON_SWITCH_REQUEST:I = 0x37

.field public static final ON_TIMER_VZW_EXPIRED:I = 0x12d

.field public static final ON_TRYING:I = 0x1f

.field public static final ON_USSD_INDICATION:I = 0x5e

.field public static final ON_USSD_RESPONSE:I = 0x5d

.field public static final ON_VCID_EVENT:I = 0x320

.field public static final ON_VIDEO_HELD:I = 0x52

.field public static final ON_VIDEO_HOLD_FAILED:I = 0x54

.field public static final ON_VIDEO_RESUMED:I = 0x53

.field public static final ON_VIDEO_RESUME_FAILED:I = 0x55

.field public static final ON_VIDEO_RTP_RTCP_TIMEOUT:I = 0xce

.field public static final PULLING:I = 0xc

.field public static final REJECT:I = 0x17

.field public static final REMOVE_PARTICIPANT:I = 0x36

.field public static final RESUME:I = 0x47

.field public static final RESUME_VIDEO:I = 0x51

.field public static final RE_INVITE:I = 0x1f6

.field public static final SEND_TEXT:I = 0x40

.field public static final SET_CALL_PROFILE:I = 0xf

.field public static final START:I = 0xb

.field public static final TERMINATE:I = 0x1

.field public static final TERMINATED:I = 0x2

.field public static final TRANSFER_REQUEST:I = 0x3b

.field public static final UPDATE:I = 0x34

.field protected static final VZW_TTY_REINVITE_TIMEOUT:I = 0x7d0


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field callType:I

.field errorCode:I

.field errorMessage:Ljava/lang/String;

.field isDeferedVideoResume:Z

.field isLocationAcquiringTriggered:Z

.field isRequestTtyFull:Z

.field lazerErrorCode:I

.field lazerErrorMessage:Ljava/lang/String;

.field protected mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

.field protected mCallEndTime:J

.field protected mCallInitEPDG:Z

.field protected mCallInitTime:J

.field protected mCallRingingTime:J

.field protected mCallTerminateTime:J

.field protected mCallTypeHistory:Ljava/lang/String;

.field protected mCameraUsedAtOtherApp:Z

.field protected mCmcCallEstablishTime:J

.field protected mConfCallAdded:Z

.field protected mContext:Landroid/content/Context;

.field protected mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

.field protected mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

.field protected mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

.field protected mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mHoldBeforeTransfer:Z

.field protected mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

.field protected mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

.field protected mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

.field protected mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

.field protected mIsBigDataEndReason:Z

.field protected mIsCheckVideoDBR:Z

.field protected mIsCmcHandover:Z

.field protected mIsMdmiEnabled:Z

.field protected mIsPendingCall:Z

.field protected mIsSentMobileCareEvt:Z

.field protected mIsStartCameraSuccess:Z

.field protected mIsWPSCall:Z

.field protected mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/volte2/IImsCallSessionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoRtcpPort:I

.field private mLocalVideoRtpPort:I

.field protected mMdmiE911Listener:Lcom/sec/internal/ims/mdmi/MdmiE911Listener;

.field protected mMdmiModule:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMno:Lcom/sec/internal/constants/Mno;

.field protected mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

.field protected mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

.field protected mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field protected mNeedToLateEndedNotify:Z

.field protected mNeedToWaitEndcall:Z

.field protected mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

.field protected mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

.field protected mOnErrorDelayed:Z

.field protected mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

.field protected mPreAlerting:Z

.field protected mPrevState:Lcom/sec/internal/helper/State;

.field protected mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

.field protected mRegistration:Lcom/sec/ims/ImsRegistration;

.field protected mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mReinvite:Z

.field protected mRemoteHeld:Z

.field private mRemoteVideoRtcpPort:I

.field private mRemoteVideoRtpPort:I

.field mRequestLocation:Z

.field protected mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

.field protected mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

.field protected mRetriggerTimeoutMessage:Landroid/os/Message;

.field protected mRetryInprogress:Z

.field protected mRingTimeoutMessage:Landroid/os/Message;

.field protected mSIPFlowInfo:Ljava/lang/String;

.field protected mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

.field protected mTransferRequested:Z

.field mTryingReceived:Z

.field protected mUserAnswered:Z

.field protected mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

.field protected mVideoRTPtimeout:Z

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field quit:Z

.field sipError:Lcom/sec/ims/util/SipError;

.field sipReason:Lcom/sec/internal/constants/ims/SipReason;

.field srvccStarted:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Landroid/os/RemoteCallbackList;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
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

    .line 285
    invoke-direct {p0, p10, p11}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const-string p10, "CallStateMachine"

    .line 63
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const/4 p10, 0x0

    .line 68
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 69
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    .line 70
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 71
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 72
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 73
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    .line 74
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    .line 75
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    .line 76
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    .line 77
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    .line 78
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    .line 79
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    .line 80
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    .line 81
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    .line 82
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    const/4 p11, 0x0

    .line 201
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v0, -0x1

    .line 202
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    .line 203
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    const-string v0, ""

    .line 204
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorMessage:Ljava/lang/String;

    .line 206
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipError:Lcom/sec/ims/util/SipError;

    .line 207
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->sipReason:Lcom/sec/internal/constants/ims/SipReason;

    .line 208
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->srvccStarted:Z

    .line 210
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 211
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 212
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 214
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTryingReceived:Z

    .line 215
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isDeferedVideoResume:Z

    .line 216
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    .line 217
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isLocationAcquiringTriggered:Z

    .line 218
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    .line 219
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRequestLocation:Z

    const/4 v1, 0x1

    .line 222
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    .line 223
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 224
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    .line 225
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mUserAnswered:Z

    .line 226
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCameraUsedAtOtherApp:Z

    .line 227
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    .line 228
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToWaitEndcall:Z

    .line 229
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOnErrorDelayed:Z

    .line 230
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCheckVideoDBR:Z

    .line 231
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsBigDataEndReason:Z

    .line 232
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    .line 233
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    .line 235
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    .line 236
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    .line 237
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    .line 238
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetryInprogress:Z

    .line 239
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mConfCallAdded:Z

    .line 242
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    .line 243
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReinvite:Z

    .line 245
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    .line 246
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    .line 248
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    .line 249
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoRTPtimeout:Z

    const-wide/16 v0, 0x0

    .line 250
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitTime:J

    .line 251
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallRingingTime:J

    .line 252
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTerminateTime:J

    .line 253
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallEndTime:J

    .line 254
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitEPDG:Z

    .line 255
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCmcCallEstablishTime:J

    .line 256
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsCmcHandover:Z

    .line 258
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMdmiModule:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    .line 259
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMdmiE911Listener:Lcom/sec/internal/ims/mdmi/MdmiE911Listener;

    .line 260
    iput-boolean p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsMdmiEnabled:Z

    .line 262
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    .line 263
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    .line 264
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    .line 265
    iput p11, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    .line 267
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 268
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 269
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 270
    sget-char p11, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    .line 278
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 279
    iput-object p10, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    .line 287
    iput-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 289
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 290
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 291
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 292
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    .line 293
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 294
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 295
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 296
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    .line 297
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    .line 299
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    .line 300
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    .line 301
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    .line 302
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    .line 303
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    .line 304
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    .line 305
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    .line 306
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    .line 307
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    .line 308
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    .line 309
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    .line 310
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    .line 311
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    .line 312
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    .line 313
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    return-void
.end method

.method private handleSetCSFBError(IILjava/lang/String;I)V
    .locals 3

    .line 971
    iget-boolean p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsWPSCall:Z

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p4, v0, :cond_0

    const/16 p4, 0x193

    if-eq p2, p4, :cond_1

    .line 972
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    goto :goto_0

    .line 974
    :cond_1
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-direct {v2, p2, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(ILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/util/SipError;)Z

    move-result p1

    invoke-virtual {p4, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 978
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p3, :cond_3

    const/16 p1, 0x198

    if-ne p2, p1, :cond_3

    .line 979
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p2, :cond_3

    .line 980
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 981
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string p1, "USCC - Do not perform CSFB when 408 is received after User is alerted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private handleSwitchFail(Lcom/sec/ims/volte2/data/CallProfile;I)V
    .locals 2

    .line 986
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 987
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 990
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 991
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 992
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    goto/16 :goto_1

    .line 993
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 994
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    invoke-interface {p1, p0, v1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->onSendRttSessionModifyResponse(IZZ)V

    goto :goto_1

    .line 996
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-eqz v0, :cond_4

    .line 997
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Notify switch call fail during Holding call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 999
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1000
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Race condition - Call type is same as Requested call type"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    goto :goto_1

    .line 989
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected calculateCmcCallTime(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    .line 1183
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcCallEstablishTime()J

    move-result-wide p1

    .line 1184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS callEstablishTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1186
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getCmcCallEstablishTime(Ljava/lang/String;)J

    move-result-wide p1

    .line 1187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS callEstablishTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p1

    .line 1193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callEstablishTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", currentTime : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", cmcCallTime : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 1196
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected determineCamera(IZ)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/16 v2, 0x8

    if-eq p1, v2, :cond_4

    const/16 v2, 0x13

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 392
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 393
    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallType(I)Ljava/util/List;

    move-result-object v2

    .line 394
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_3

    if-eqz p2, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :cond_4
    :goto_0
    if-ltz v0, :cond_5

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    if-ltz v1, :cond_5

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using mSession.mLastUsedCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    .line 417
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineCamera calltype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isForSwitchRcved: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", camera: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected forceNotifyCurrentCodec()V
    .locals 8

    .line 1103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1106
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1107
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    .line 1109
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    iget v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    .line 1111
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 1115
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 1116
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v5

    .line 1115
    invoke-interface {v3, v4, v5}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1118
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1122
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected getNetworkStatsVideoCall()J
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getNetworkStatsVideoCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz p0, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->getNetworkStatsVideoCall()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getPendingCall()Z
    .locals 0

    .line 1470
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    return p0
.end method

.method public getPreAlerting()Z
    .locals 0

    .line 1462
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    return p0
.end method

.method protected getPreviousState()Lcom/sec/internal/helper/State;
    .locals 0

    .line 1147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPrevState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method protected getSipReasonFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1200
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSipReasonFromUserReason: reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    const-string v3, "SIP"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 1204
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "SRVCC"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    .line 1206
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "INVITE FLUSH"

    new-array v2, v4, [Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 1208
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "PS BARRING"

    const/4 v9, 0x1

    new-array v10, v4, [Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/16 v2, 0x14

    if-ne v1, v2, :cond_3

    .line 1210
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "MDMN_PULL_BY_PRIMARY"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, ""

    const/16 v4, 0x1777

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_3
    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    .line 1212
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_4

    .line 1213
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v7, "SIP"

    const/4 v8, 0x0

    const-string v9, "DEDICATED BEARER LOST"

    const/4 v10, 0x1

    new-array v11, v4, [Ljava/lang/String;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v0

    .line 1214
    :cond_4
    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    .line 1216
    :cond_5
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v2, "DEDICATED BEARER LOST"

    if-ne v0, v1, :cond_6

    .line 1217
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const/16 v1, 0xc8

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 1219
    :cond_6
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v1, v4, [Ljava/lang/String;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_7
    const/16 v2, 0xe

    if-ne v1, v2, :cond_9

    .line 1222
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_8

    .line 1223
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v6, "SIP"

    const/4 v7, 0x0

    const-string v8, "DEREGISTERED"

    const/4 v9, 0x1

    new-array v10, v4, [Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v0

    .line 1225
    :cond_8
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v12, ""

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x1

    new-array v1, v4, [Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v0

    :cond_9
    const/16 v2, 0x17

    if-ne v1, v2, :cond_b

    .line 1228
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_d

    .line 1229
    :cond_a
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "RRC CONNECTION REJECT"

    const/4 v9, 0x1

    new-array v10, v4, [Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v0

    :cond_b
    const/16 v2, 0x11

    if-ne v1, v2, :cond_c

    .line 1232
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_d

    .line 1233
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "SESSIONPROGRESS TIMEOUT"

    const/4 v9, 0x1

    new-array v10, v4, [Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v0

    .line 1235
    :cond_c
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->GENERIC_IR92:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_d

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 1236
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v6, "SIP"

    const/16 v7, 0xc8

    const-string v8, "User Triggered"

    const/4 v9, 0x0

    new-array v10, v4, [Ljava/lang/String;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V

    return-object v0

    .line 1239
    :cond_d
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getSipReasonMno()Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v0

    .line 1240
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v0

    return-object v0
.end method

.method protected getSipReasonMno()Lcom/sec/internal/constants/ims/SipReason;
    .locals 2

    .line 1244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonKor;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonKor;-><init>()V

    return-object p0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 1247
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonVzw;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonVzw;-><init>()V

    return-object p0

    .line 1248
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 1249
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonBmc;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonBmc;-><init>()V

    return-object p0

    .line 1250
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 1251
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonUscc;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonUscc;-><init>()V

    return-object p0

    .line 1252
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 1254
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    .line 1255
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonOptus;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonOptus;-><init>()V

    return-object p0

    .line 1256
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1257
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonTmoUs;-><init>()V

    return-object p0

    .line 1258
    :cond_6
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_MOLDOVA:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_7

    goto :goto_0

    .line 1261
    :cond_7
    new-instance p0, Lcom/sec/internal/constants/ims/SipReason;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-object p0

    .line 1259
    :cond_8
    :goto_0
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonOrange;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonOrange;-><init>()V

    return-object p0

    .line 1253
    :cond_9
    :goto_1
    new-instance p0, Lcom/sec/internal/constants/ims/SipReasonRjil;

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReasonRjil;-><init>()V

    return-object p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 2

    .line 550
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    if-eqz v0, :cond_0

    .line 551
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    if-ne v0, v1, :cond_1

    .line 556
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    if-ne v0, v1, :cond_2

    .line 558
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 559
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    if-ne v0, v1, :cond_3

    .line 560
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 561
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    if-ne v0, v1, :cond_4

    .line 562
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    if-ne v0, v1, :cond_5

    .line 564
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 565
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    if-ne v0, v1, :cond_6

    .line 566
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 567
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    if-ne v0, v1, :cond_7

    .line 568
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 569
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    if-ne v0, v1, :cond_8

    .line 570
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 571
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    if-ne v0, v1, :cond_9

    .line 572
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 573
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    if-ne v0, v1, :cond_a

    .line 574
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 575
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    if-ne v0, v1, :cond_b

    .line 576
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 577
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    if-ne v0, v1, :cond_c

    .line 578
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 579
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    if-ne v0, v1, :cond_d

    .line 580
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 581
    :cond_d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    if-ne v0, p0, :cond_e

    .line 582
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 585
    :cond_e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0
.end method

.method public getStateByName(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 0

    .line 589
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_0
    const-string p0, "ReadyToCall"

    .line 591
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 592
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_1
    const-string p0, "IncomingCall"

    .line 593
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 594
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_2
    const-string p0, "OutgoingCall"

    .line 595
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 596
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_3
    const-string p0, "AlertingCall"

    .line 597
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 598
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_4
    const-string p0, "InCall"

    .line 599
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 600
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_5
    const-string p0, "HoldingCall"

    .line 601
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 602
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_6
    const-string p0, "HeldCall"

    .line 603
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 604
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_7
    const-string p0, "ResumingCall"

    .line 605
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 606
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_8
    const-string p0, "ModifyingCall"

    .line 607
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 608
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_9
    const-string p0, "HoldingVideo"

    .line 609
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 610
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_a
    const-string p0, "VideoHeld"

    .line 611
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 612
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_b
    const-string p0, "ResumingVideo"

    .line 613
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 614
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_c
    const-string p0, "EndingCall"

    .line 615
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 616
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    :cond_d
    const-string p0, "ModifyRequested"

    .line 617
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 618
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 621
    :cond_e
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0
.end method

.method protected handleRemoteHeld(Z)V
    .locals 3

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mOldLocalHoldTone:Z

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1127
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_1

    if-nez v0, :cond_3

    .line 1129
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRemoteHeld: remote already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, "held"

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "resumed"

    .line 1130
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1129
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1134
    :cond_3
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteHeld:Z

    if-eqz p1, :cond_4

    .line 1136
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnHeld(Z)V

    goto :goto_2

    .line 1138
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnResumed(Z)V

    :goto_2
    return-void
.end method

.method public handleSPRoutgoingError(Landroid/os/Message;)Z
    .locals 6

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_4

    .line 1378
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/util/SipError;

    .line 1379
    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x1e6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1e7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x198

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 1387
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1390
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mmtel-video"

    goto :goto_0

    :cond_1
    const-string v2, "mmtel"

    :goto_0
    const/16 v3, 0x190

    const/16 v4, 0x6a5

    if-lt v0, v3, :cond_2

    const/16 v3, 0x2bb

    if-gt v0, v3, :cond_2

    .line 1395
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v5, "4xx,5xx,6xx error. trigger cs fallback"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-direct {v3, v0}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1398
    invoke-virtual {p1, v4}, Lcom/sec/ims/util/SipError;->setCode(I)V

    :cond_2
    const/16 v3, 0x2c5

    if-ne v0, v3, :cond_4

    .line 1402
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v3, "709 error. trigger cs fallback"

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    new-instance p0, Lcom/sec/ims/util/SipError;

    invoke-direct {p0, v0}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v1, v2, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 1405
    invoke-virtual {p1, v4}, Lcom/sec/ims/util/SipError;->setCode(I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method protected init()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 323
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 336
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkStat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 337
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 338
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;-><init>(ILcom/sec/internal/constants/Mno;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitEPDG:Z

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isMdmiEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsMdmiEnabled:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    const-class v1, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMdmiModule:Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    .line 347
    invoke-virtual {v0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->getMdmiListener()Lcom/sec/internal/ims/mdmi/MdmiE911Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMdmiE911Listener:Lcom/sec/internal/ims/mdmi/MdmiE911Listener;

    :cond_0
    return-void
.end method

.method protected isChangedCallType(Lcom/sec/ims/volte2/data/CallProfile;)Z
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p0

    .line 747
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected isStartedCamera(IZ)Z
    .locals 0

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result p1

    if-ltz p1, :cond_0

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected modifyCallType(Lcom/sec/ims/volte2/data/CallProfile;Z)Z
    .locals 8

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 647
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, ", updateCallType: "

    const-string v4, "modifyCallType("

    const/4 v5, 0x0

    if-eqz p2, :cond_6

    .line 651
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") curCallType: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {p2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v3, "Call switch failed"

    const/16 v4, 0x455

    if-nez p2, :cond_0

    .line 655
    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    return v5

    :cond_0
    const/16 p2, 0x9

    if-ne v0, p2, :cond_1

    .line 661
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 662
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 663
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 662
    invoke-interface {p2, v0, v4, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    return v5

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    if-ne v1, p1, :cond_2

    .line 669
    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    return v5

    :cond_2
    if-eq v1, p2, :cond_3

    .line 675
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 676
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->isRequestTtyFull:Z

    .line 679
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p2

    invoke-interface {p1, p2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->modifyCallType(III)I

    move-result p1

    .line 681
    invoke-virtual {p0, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->determineCamera(IZ)I

    move-result p2

    if-ltz p2, :cond_5

    .line 683
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startCamera(I)V

    goto :goto_0

    .line 685
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLastUsedCamera:I

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPrevUsedCamera:I

    goto :goto_0

    .line 688
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    .line 689
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ") reqCallType: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", curCallType: "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p2, p0, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyModifyCallType(IIII)I

    move-result p1

    :goto_0
    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v5

    :goto_1
    return v2
.end method

.method protected modifyIdcReply(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)Z
    .locals 7

    .line 639
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[IDC] modifyIdcReply"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    .line 641
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    .line 642
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->encode()Ljava/lang/String;

    move-result-object v6

    move v3, v5

    move v4, v5

    .line 641
    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyWithIdc(IIIILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected modifyIdcRequest(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)Z
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[IDC] modifyIdcRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->encode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendReInviteWithIdcExtra(ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToLateEndedNotify()Z
    .locals 0

    .line 1466
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    return p0
.end method

.method public needToLogForATTGate(I)Z
    .locals 1

    .line 1350
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected notifyCmcDtmfEvent(I)V
    .locals 5

    .line 954
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 955
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCmcDtmfEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 957
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 959
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDtmfKey(I)V

    .line 960
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 961
    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v4

    .line 960
    invoke-interface {v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 962
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDtmfKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 964
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 967
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyConfParticipanOnResumed(IZ)V
    .locals 4

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1056
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConfParticipanOnResumed: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1061
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantResumed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1063
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyConfParticipantOnHeld(IZ)V
    .locals 4

    .line 1039
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1040
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyConfParticipantOnHeld: sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1042
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1045
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantHeld(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1047
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnCallForwarded()V
    .locals 3

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    .line 807
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->setEncryptStatus(I)V

    .line 814
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 816
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 819
    :try_start_0
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onForwarded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 821
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 825
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnEarlyMediaStarted(I)V
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 775
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 778
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEarlyMediaStarted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 780
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnEnded(I)V
    .locals 6

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnEnded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 833
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    new-instance v3, Lcom/sec/ims/util/SipError;

    invoke-direct {v3, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    invoke-interface {v2, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCsfbErrorCode(ILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/util/SipError;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setHasCSFBError(Z)V

    .line 835
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 836
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 837
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 838
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 839
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v1

    .line 841
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boundSessionId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1

    .line 843
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->handleCmcCsfb(I)I

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 848
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isPendedEPDGWeakSignal(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 849
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 851
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, v0, v4}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->setPendedEPDGWeakSignal(IZ)V

    const/16 p1, 0x6a7

    goto :goto_0

    .line 852
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 853
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const/16 v2, 0x96e

    if-ne v1, v2, :cond_4

    move p1, v2

    .line 858
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    if-nez v1, :cond_5

    .line 861
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    goto :goto_1

    .line 863
    :cond_5
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNeedToLateEndedNotify:Z

    :goto_1
    if-ge v4, v1, :cond_6

    .line 867
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 870
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEnded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 872
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 876
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 877
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    if-nez v1, :cond_7

    .line 878
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendMobileCareEvent(IIILjava/lang/String;)V

    .line 879
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 882
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 883
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;->notifyCallEnded(II)V

    .line 885
    :cond_8
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    return-void
.end method

.method protected notifyOnError(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    .line 894
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;I)V

    return-void
.end method

.method protected notifyOnError(ILjava/lang/String;I)V
    .locals 4

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 899
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleSetCSFBError(IILjava/lang/String;I)V

    .line 902
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 903
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isPendedEPDGWeakSignal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 904
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 906
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->setPendedEPDGWeakSignal(IZ)V

    const/16 p1, 0x6a7

    goto :goto_0

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttEmergencyCall(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v1, :cond_3

    :cond_2
    const/16 p1, 0x96e

    const-string p2, "RTT E911 Call Fail"

    .line 917
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    .line 919
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v2, :cond_6

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    :cond_5
    move-object v1, v0

    :cond_6
    const/16 v0, 0x456

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x455

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_9

    .line 928
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->handleSwitchFail(Lcom/sec/ims/volte2/data/CallProfile;I)V

    goto :goto_5

    .line 930
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_a

    .line 932
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 936
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onError(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 938
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 941
    :cond_a
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 944
    :goto_5
    iget-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    if-nez p3, :cond_b

    .line 945
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    invoke-interface {p3, v0, v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->sendMobileCareEvent(IIILjava/lang/String;)V

    .line 946
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsSentMobileCareEvt:Z

    .line 949
    :cond_b
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorCode:I

    .line 950
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->lazerErrorMessage:Ljava/lang/String;

    return-void
.end method

.method protected notifyOnEstablished()V
    .locals 4

    .line 756
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 759
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 762
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEstablished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 764
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnHeld(Z)V
    .locals 4

    .line 1006
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1007
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnHeld local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; localholdtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1013
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mLocalHoldTone:Z

    invoke-interface {v2, p1, v3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onHeld(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1015
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnIdcError(I)V
    .locals 2

    .line 889
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IDC] notifyOnIdcError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected notifyOnModified(I)V
    .locals 4

    .line 1071
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1072
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnModified callType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1074
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1077
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSwitched(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1079
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnResumed(Z)V
    .locals 4

    .line 1023
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1024
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnResumed: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1026
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1029
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onResumed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1031
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1035
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnRingingBack()V
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 791
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 794
    :try_start_0
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onRingingBack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 796
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected notifyOnUssdResponse(I)V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1090
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 1093
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdResponse(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1095
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1099
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected onCallModified(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 3

    .line 1414
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 1415
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v2, :cond_0

    .line 1416
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    goto :goto_0

    .line 1418
    :cond_0
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    .line 1419
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v1

    .line 1421
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 1423
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnModified(I)V

    .line 1424
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1425
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->startNetworkStatsOnPorts()V

    goto :goto_1

    .line 1427
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopNetworkStatsOnPorts()V

    .line 1430
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    .line 1433
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    :cond_2
    const/16 p0, 0xc8

    .line 1431
    invoke-interface {v0, v1, p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V

    :cond_3
    return-void
.end method

.method protected onHalting()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unexpected ACTION on STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 500
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine;->getLogRecCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/StateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 505
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 495
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected onQuitting()V
    .locals 3

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->quit:Z

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 516
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForCallStateEvent(Landroid/os/Handler;)V

    .line 517
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mUssdStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForUssdEvent(Landroid/os/Handler;)V

    .line 518
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForReferStatus(Landroid/os/Handler;)V

    .line 519
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForRrcConnectionEvent(Landroid/os/Handler;)V

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mVolteStackEventHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent(Landroid/os/Handler;)V

    .line 521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CallState Terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 526
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine;->getLogRecCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 527
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/StateMachine;->getLogRec(I)Lcom/sec/internal/helper/StateMachine$LogRec;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 531
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "robolectric"

    .line 538
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 540
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    :cond_2
    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortThread:Landroid/os/HandlerThread;

    .line 543
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 521
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onReceiveSIPMSG(Ljava/lang/String;Z)V
    .locals 3

    .line 1326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\r\n"

    .line 1328
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1329
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_3

    .line 1330
    aget-object v1, p1, v0

    const-string v2, "SIP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p1, p1, v0

    const/16 v0, 0x8

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    aget-object p1, p1, v0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 1332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    goto :goto_1

    .line 1334
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    goto :goto_1

    .line 1337
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onReceiveSIPMSG : No front Char"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected onRegistrationDone(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 358
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method protected rejectModifyCallType(I)I
    .locals 5

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_CZ:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->ETISALAT_EG:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 703
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModifyRequestedProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v1, :cond_1

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ignoreModifyCallType(): mSession.mModifyRequestedProfile == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectModifyCallType(II)I

    move-result p0

    return p0

    .line 708
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    .line 709
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreModifyCallType() reqCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curCallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {v0, v1}, Lcom/sec/internal/helper/ImsCallUtil;->isUpgradeCall(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 713
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0, v0, v0, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->replyModifyCallType(IIII)I

    move-result p0

    return p0

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectModifyCallType() reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectModifyCallType(II)I

    move-result p0

    return p0
.end method

.method protected requestCallDataUsage()V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestCallDataUsage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getNetworkStatsVideoCall()J

    move-result-wide v0

    .line 1294
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v2, p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->onChangeCallDataUsage(IJ)V

    return-void
.end method

.method protected resetCallTypeAndErrorFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 352
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->callType:I

    const/4 v0, -0x1

    .line 353
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    const-string v0, ""

    .line 354
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public sendCmcPublishDialog()V
    .locals 4

    .line 1357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1362
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-gt v1, v0, :cond_2

    .line 1368
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1370
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->sendPublishDialogInternal(II)V

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected sendRTTtext(Landroid/os/Message;)V
    .locals 4

    .line 422
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "text"

    .line 423
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "len"

    .line 424
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {v1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendText(ILjava/lang/String;I)I

    return-void
.end method

.method public setLogTag(I)V
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->appendSessionIdToLogTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    .line 1440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1441
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1442
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1445
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1446
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHeldCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsHeldCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1448
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mModifyRequested:Lcom/sec/internal/ims/servicemodules/volte2/ImsModifyRequested;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1450
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsHoldingVideo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1451
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoHeld:Lcom/sec/internal/ims/servicemodules/volte2/ImsVideoHeld;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1452
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mResumingVideo:Lcom/sec/internal/ims/servicemodules/volte2/ImsResumingVideo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    .line 1454
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallState;->setLogTag(I)V

    return-void
.end method

.method public setPendingCall(Z)V
    .locals 0

    .line 1342
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsPendingCall:Z

    return-void
.end method

.method public setPreAlerting()V
    .locals 1

    const/4 v0, 0x1

    .line 1458
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPreAlerting:Z

    return-void
.end method

.method public setPreviousState(Lcom/sec/internal/helper/State;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mPrevState:Lcom/sec/internal/helper/State;

    return-void
.end method

.method protected setRetryInprogress(Z)V
    .locals 0

    .line 1151
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetryInprogress:Z

    return-void
.end method

.method public setStartCameraState(Z)V
    .locals 0

    .line 1346
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    return-void
.end method

.method protected setVideoRtpPort(IIII)V
    .locals 0

    .line 1266
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    .line 1267
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    .line 1268
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    .line 1269
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    return-void
.end method

.method protected startNetworkStatsOnPorts()V
    .locals 5

    .line 1273
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNetworkStatsOnPorts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz v0, :cond_1

    .line 1275
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtpPort:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtpPort:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mLocalVideoRtcpPort:I

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRemoteVideoRtcpPort:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setVideoPort(IIII)V

    .line 1276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setInterface(Ljava/lang/String;)V

    .line 1279
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected startRetriggerTimer(J)V
    .locals 3

    .line 1307
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRetriggerTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRetriggerTimer()V

    .line 1310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xca

    .line 1311
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    .line 1312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected startRingTimer(J)V
    .locals 3

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRingTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->stopRingTimer()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xcc

    .line 1159
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    .line 1160
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    :cond_0
    return-void
.end method

.method protected stopNetworkStatsOnPorts()V
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopNetworkStatsOnPorts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->requestCallDataUsage()V

    .line 1287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mNetworkStatsOnPortHandler:Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected stopRetriggerTimer()V
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRetriggerTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1322
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRetriggerTimeoutMessage:Landroid/os/Message;

    return-void
.end method

.method protected stopRingTimer()V
    .locals 2

    .line 1165
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRingTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1171
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRingTimeoutMessage:Landroid/os/Message;

    return-void
.end method

.method protected transferCall(Ljava/lang/String;)V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->buildUri(Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "uri is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x45f

    const-string v0, "call transfer failed"

    .line 726
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnError(ILjava/lang/String;)V

    .line 727
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mHoldBeforeTransfer:Z

    if-eqz p1, :cond_0

    .line 728
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 p1, 0x47

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->transferCall(ILjava/lang/String;)I

    const/4 p1, 0x1

    .line 733
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTransferRequested:Z

    .line 735
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 736
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "transferCall for Softphone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MDTC"

    .line 738
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "MDSF"

    .line 739
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v1, "overwrite_mode"

    .line 741
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ANY_STATE] unhandledMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/16 v1, 0x34

    if-eq v0, v1, :cond_a

    const/16 v1, 0x64

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12f

    const/4 v2, 0x4

    if-eq v0, v1, :cond_8

    const/16 v1, 0x190

    if-eq v0, v1, :cond_7

    const/16 v1, 0x258

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1388

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ANY_STATE] msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ignored !!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->ussdIndication_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 453
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->notifyOnUssdResponse(I)V

    goto :goto_0

    .line 449
    :cond_2
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->error_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 444
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->ended_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 434
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->dbrLost_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 473
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mInCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;

    if-ne p1, v0, :cond_6

    .line 474
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsInCall;->enter()V

    goto :goto_0

    .line 476
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 465
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->epdgConnChanged_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 482
    :cond_8
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    new-instance p1, Lcom/sec/ims/util/SipError;

    const/16 v0, 0x44f

    const-string v1, "Tlte_911fail"

    invoke-direct {p1, v0, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 469
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->forceNotifyCurrentCodec()V

    goto :goto_0

    .line 461
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->update_ANYSTATE(Landroid/os/Message;)V

    goto :goto_0

    .line 438
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->terminate_ANYSTATE(Landroid/os/Message;)V

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mDefaultCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsDefaultCall;->handleBigData_ANYSTATE(Landroid/os/Message;)V

    .line 440
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mEndingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsEndingCall;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x132
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

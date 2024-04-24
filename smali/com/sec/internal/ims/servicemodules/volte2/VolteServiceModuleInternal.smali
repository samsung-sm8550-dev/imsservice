.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "VolteServiceModuleInternal.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;,
        Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    }
.end annotation


# static fields
.field private static final ACTION_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static final RELAY_CHANNEL_ESTABLISHED:I = 0x0

.field protected static final RELAY_CHANNEL_TERMINATED:I = 0x1


# instance fields
.field protected mActiveImpu:[Lcom/sec/ims/util/ImsUri;

.field protected mAllowedNetworkType:[J

.field protected mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

.field protected mAutomaticMode:[Z

.field protected mCheckRunningState:Z

.field protected mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

.field protected mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

.field protected final mContext:Landroid/content/Context;

.field protected mDataAccessNetwork:[I

.field private mDelayRinging:Z

.field protected mEcbmMode:[Z

.field protected mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

.field protected mEnableCallWaitingRule:Z

.field protected mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

.field protected final mEpdnDisconnectTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

.field protected mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field protected mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

.field protected mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

.field protected mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

.field private mIsDeregisterTimerRunning:[Z

.field protected mIsLteEpsOnlyAttached:[Z

.field private mIsLteRetrying:[Z

.field private mIsMissedCallSmsChecking:[Z

.field protected mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

.field protected mLastRegiErrorCode:[I

.field private mMaxPhoneCount:I

.field protected mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field protected mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

.field private mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mMmtelAcquiredEver:Z

.field protected mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

.field protected mNetworks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

.field protected final mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected final mPhoneStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field protected mProhibited:[Z

.field protected mRatChanged:[Z

.field protected final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mReleaseWfcBeforeHO:[Z

.field protected mRttMode:[I

.field private mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

.field protected final mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

.field protected final mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mTtyMode:[I

.field protected mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

.field protected mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

.field private mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

.field protected mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;


# direct methods
.method public static synthetic $r8$lambda$MLGaGXND1u8AycB7dZeJIwC9nEA(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->lambda$onImsIncomingCallEvent$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WKdJRtLSFVAyZJHzYvr1bx690_I(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->lambda$updateNrSaModeOnStart$1(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMissedCallSms(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->handleMissedCallSms(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTelephonyNotResponding(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->onTelephonyNotResponding()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 182
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 119
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdnDisconnectTimeOut:Ljava/util/Map;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    const/4 v9, 0x0

    .line 136
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 137
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsXqReporter:Lcom/sec/internal/ims/xq/att/ImsXqReporter;

    const/4 v10, 0x1

    .line 138
    iput-boolean v10, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    .line 145
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    const/4 v11, 0x0

    .line 146
    iput-boolean v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    .line 155
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    .line 156
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 157
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEpdgListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 163
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 165
    iput-boolean v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    .line 167
    iput-object v9, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    iput v10, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMaxPhoneCount:I

    .line 183
    iput-boolean v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCheckRunningState:Z

    .line 184
    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 185
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->NAME:Ljava/lang/String;

    const/16 v3, 0x64

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 186
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    move-object/from16 v1, p5

    .line 187
    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-object/from16 v1, p6

    .line 188
    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-object/from16 v1, p7

    .line 189
    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 190
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    .line 191
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    .line 192
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    iput v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMaxPhoneCount:I

    .line 193
    new-array v3, v15, [Z

    iput-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mProhibited:[Z

    .line 194
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    .line 195
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    .line 196
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    .line 197
    new-array v4, v15, [Lcom/sec/ims/DialogEvent;

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 198
    new-array v4, v15, [Lcom/sec/ims/util/ImsUri;

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    .line 199
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    .line 200
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    .line 201
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    .line 202
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    .line 203
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    .line 204
    new-array v4, v15, [I

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDataAccessNetwork:[I

    .line 205
    new-array v4, v15, [Z

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    .line 206
    new-array v2, v2, [Z

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    .line 207
    new-array v2, v15, [Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    .line 208
    new-array v2, v15, [J

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    .line 209
    new-array v2, v15, [Z

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    .line 210
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 211
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 212
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 213
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 214
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mActiveImpu:[Lcom/sec/ims/util/ImsUri;

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    sget v3, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 217
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 218
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAutomaticMode:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 219
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mReleaseWfcBeforeHO:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 220
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([II)V

    .line 221
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 222
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 223
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 224
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    invoke-static {v2, v9}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    invoke-static {v2, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 227
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {v2, v6, v10, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v3, 0x2

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 229
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v3, 0x3

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x8

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 231
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x26

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerQuantumSecurityStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x11

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x16

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 234
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x19

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 235
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v3, 0x12

    invoke-interface {v2, v6, v3, v9}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x18

    .line 236
    invoke-static {v6, v2, v9}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    new-instance v2, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    const v3, -0x7fffaedf

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 248
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    .line 249
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    .line 250
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v4

    invoke-direct {v2, v6, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    .line 251
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v4

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    const/16 v2, 0x1e

    .line 253
    invoke-interface {v1, v6, v2, v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x1f

    .line 254
    invoke-interface {v1, v6, v2, v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, v6, v7, v15}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;I)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSsacManager:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;

    .line 259
    new-instance v12, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IPdnController;ILandroid/os/Looper;)V

    iput-object v12, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 262
    iput-object v7, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 263
    iput-object v8, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 264
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 265
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    .line 266
    new-instance v12, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Landroid/os/Looper;)V

    iput-object v12, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 268
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-direct {v0, v6, v1, v8, v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    .line 269
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    iget-object v14, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    iget-object v4, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v5, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    move-object v12, v0

    move-object/from16 v13, p1

    move v7, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    .line 271
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcMediaController:Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;

    .line 272
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    .line 273
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    move-object/from16 v3, p1

    invoke-direct {v0, v6, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    .line 274
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    .line 277
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    .line 277
    :goto_1
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(I)V

    .line 279
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_tty_mode"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v11, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setTtyMode(II)V

    if-le v7, v10, :cond_2

    .line 281
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_tty_mode2"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6, v10, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setTtyMode(II)V

    .line 283
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    iput-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.LTE_BAND"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.PSBARRED_FOR_VOLTE"

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.att.iqi.action.SERVICE_STATE_CHANGED"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v1

    iput-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerEpdgConnectionListener()V

    .line 295
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;

    invoke-direct {v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;

    invoke-direct {v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$2;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.ACTION_TELEPHONY_NOT_RESPONDING"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.imsservice.TELEPHONY_NOT_RESPONDING"

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 357
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "VolteServiceModule created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)I
    .locals 0

    .line 118
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method private getDialingNumber(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 1

    .line 1493
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/helper/ImsCallUtil;->getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object p1

    .line 1494
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-nez p0, :cond_4

    .line 1495
    sget-object p0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 1497
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v0, "0"

    if-ne p2, p0, :cond_1

    const-string p0, "+82"

    .line 1498
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1499
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->TELENOR_MM:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_2

    const-string p0, "+95"

    .line 1500
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1501
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "+61"

    .line 1502
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p2

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1496
    :cond_3
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method private getPhoneIdFromExternalCall()I
    .locals 3

    .line 1884
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    .line 1885
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1886
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1887
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone id for ps call : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p0

    return p0

    .line 1892
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getCsCallPhoneIdByState(I)I

    move-result p0

    return p0
.end method

.method private getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
    .locals 2

    .line 392
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    .line 393
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->getInternalPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 397
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getPhoneStateListener: psli is not exist."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private handleMissedCallSms(Landroid/content/Intent;)V
    .locals 0

    .line 2080
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendMissedCallSms(Landroid/content/Intent;)V

    return-void
.end method

.method private handlePreAlerting(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZZLcom/sec/ims/util/SipError;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v2, p3

    .line 1516
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 1518
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v4, "change mno to MDMN"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    sget-object v3, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    .line 1522
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_1

    .line 1525
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Has Active CS Call, try after"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 1526
    invoke-virtual {v1, v0, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1530
    :cond_1
    new-instance v4, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v4}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v5

    .line 1532
    sget-object v6, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    move-object/from16 v7, p5

    if-ne v7, v6, :cond_3

    .line 1533
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9, v0, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForCheckRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v7

    if-eq v7, v6, :cond_4

    .line 1535
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onImsIncomingCallEvent: reject call. error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v10

    invoke-interface {v6, v9, v10, v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1537
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1538
    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->convertErrorToRejectReason(Lcom/sec/ims/util/SipError;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCause(I)V

    goto :goto_0

    :cond_2
    return-void

    .line 1543
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1544
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/helper/ImsCallUtil;->convertErrorToRejectReason(Lcom/sec/ims/util/SipError;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCause(I)V

    :cond_4
    :goto_0
    move-object v9, v7

    .line 1547
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v6

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    .line 1548
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    .line 1550
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v12

    const/4 v13, -0x1

    if-eqz v12, :cond_6

    .line 1551
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcEdCallSlot()I

    move-result v12

    if-ne v12, v13, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcEdCallSlot()I

    move-result v6

    .line 1553
    :cond_6
    :goto_1
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1554
    invoke-interface {v14}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v15

    if-ne v15, v6, :cond_7

    .line 1555
    invoke-interface {v14}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v13

    .line 1559
    :cond_8
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v12

    if-nez v12, :cond_9

    if-eq v13, v10, :cond_9

    const/16 v12, 0xa

    if-eq v13, v12, :cond_9

    .line 1561
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImsIncomingCallEvent: reject call. simState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->TEMPORARILY_UNAVAIABLE:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    return-void

    .line 1564
    :cond_9
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1565
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getReplaces()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_a
    if-nez v6, :cond_b

    move v6, v7

    goto :goto_2

    :cond_b
    move v6, v11

    .line 1566
    :goto_2
    invoke-virtual {v1, v6, v7}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1567
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "checkRejectIncomingCall: PD_CALL_EXISTS_ON_THE_OTHER_SLOT"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->PD_CALL_EXISTS_ON_THE_OTHER_SLOT:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    return-void

    .line 1573
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1574
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCall()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1575
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onImsIncomingCallEvent: Ignore incoming CMC reley call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1579
    :cond_d
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v6, :cond_e

    .line 1580
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1581
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v12, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    invoke-static {v6, v12, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_e

    .line 1583
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1584
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onImsIncomingCallEvent: mobile data is off. Downgrade video call to voice call."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v7

    goto :goto_3

    :cond_e
    move v14, v5

    .line 1592
    :goto_3
    new-instance v5, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallProfileBuilder;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallProfileBuilder;-><init>()V

    .line 1594
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setPhoneId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v5

    new-instance v6, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v6}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 1595
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v5

    .line 1596
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setNetworkType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDirection(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v5

    .line 1597
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSamsungMdmnCall(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1598
    invoke-direct {v1, v8, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getDialingNumber(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDialingNumber(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1599
    invoke-interface {v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v5

    invoke-virtual {v2, v8, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDisplayName(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 1600
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getEchoCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v3, v5}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setEchoCallId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1601
    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setComposerData(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1602
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcEdCallSlot()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcEdCallSlot(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1603
    invoke-virtual {v2, v8, v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcDeviceId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object v2

    .line 1604
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    .line 1606
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    .line 1610
    :cond_f
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    .line 1611
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    aget v7, v3, v5

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    move v6, v14

    .line 1610
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;II)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_10

    .line 1613
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "incomingCallSession is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1616
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateNrSaModeOnStart(II)V

    .line 1618
    invoke-virtual {v2, v11, v11}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->requestQuantumPeerProfileStatus(ZZ)V

    .line 1620
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-ne v9, v3, :cond_13

    .line 1621
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/helper/os/PackageUtils;->isOneTalkFeatureEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1623
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isSupportImsDataChannel(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1624
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getIdcExtra()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "sdp"

    .line 1625
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1626
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1627
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setRemoteBdcSdp(Ljava/lang/String;)V

    .line 1628
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->onImsIncomingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V

    .line 1630
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getBuilder()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object v0

    .line 1631
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getLocalBdcSdp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->setSdp(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    move-result-object v0

    .line 1632
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->build()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    move-result-object v0

    .line 1633
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->encode()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1635
    :cond_11
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[IDC][FW] No BDC SDP within MT INVITE"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string v0, ""

    .line 1638
    :goto_4
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->proceedIncomingCall(ILjava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 1640
    :try_start_0
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1642
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "session already removed: "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1644
    :goto_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    goto :goto_6

    .line 1648
    :cond_13
    new-instance v3, Lcom/sec/ims/volte2/data/ImsCallInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v24}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1650
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {v4, v0, v3}, Lcom/sec/internal/google/SecImsNotifier;->onIncomingPreAlerting(ILcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 1652
    :cond_14
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyIncomingPreAlerting(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method private hasDialingOrIncomingCallOnCS()Z
    .locals 2

    .line 1487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v1, "csdialing"

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v1, "csalerting"

    .line 1488
    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string v0, "csincoming"

    .line 1489
    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->hasCall(Ljava/lang/String;)Z

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

.method private ignoreIncomingCallSession(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)I
    .locals 5

    .line 1656
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1657
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCall()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1658
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onImsIncomingCallEvent: Ignore incoming CMC reley call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x642

    return p0

    .line 1661
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 1662
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v0

    const/4 v1, 0x1

    .line 1665
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1668
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getReplaces()Ljava/lang/String;

    move-result-object v1

    .line 1669
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignoreIncomingCallSession: replaces "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-virtual {p4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 1671
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, "need to reject incoming call.. due to CS Call"

    .line 1673
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result p1

    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-interface {p0, p1, v0, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    const/16 p0, 0x643

    return p0

    .line 1679
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasOutgoingCall(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1680
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ignoreIncomingCallSession: found outgoing call, reject incoming call error="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result p1

    invoke-interface {p0, p1, v0, p4}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    const/16 p0, 0x647

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isRequiredKorSpecificURN(ILjava/lang/String;)Z
    .locals 2

    .line 2089
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2090
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMnoAsNwPlmn(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 2093
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2095
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2098
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    return p1

    .line 2102
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 2103
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    .line 2106
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x6

    if-eq p0, p2, :cond_3

    const/4 p2, 0x7

    if-eq p0, p2, :cond_3

    const/4 p2, 0x3

    if-eq p0, p2, :cond_3

    const/16 p2, 0x12

    if-eq p0, p2, :cond_3

    const/16 p2, 0x13

    if-eq p0, p2, :cond_3

    const/16 p2, 0x9

    if-ne p0, p2, :cond_4

    :cond_3
    return p1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private isVideoSettingEnabled()Z
    .locals 2

    .line 1130
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private synthetic lambda$onImsIncomingCallEvent$0(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 1832
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    return-void
.end method

.method private synthetic lambda$updateNrSaModeOnStart$1(II)V
    .locals 6

    .line 2142
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 2147
    fill-array-data v2, :array_0

    new-array v1, v1, [B

    .line 2148
    fill-array-data v1, :array_1

    .line 2149
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNrSaModeOnStart : start, subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_2

    .line 2152
    invoke-virtual {v4, v0, v2, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v0

    .line 2153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNrSaModeOnStart : respLen : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2158
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrSaMode(IZ)V

    const-string v2, "is_support_update_sa_mode_on_start"

    .line 2159
    invoke-static {p1, v2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    .line 2162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->updateNrSaModeOnStart(I)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        -0x7ct
        0x0t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private onTelephonyNotResponding()V
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendTelephonyNotResponding(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 2046
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void
.end method

.method private registerEpdgConnectionListener()V
    .locals 1

    .line 997
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgConnectionListener:Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 1031
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->registerWfcEpdgConnectionListener(Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;)V

    return-void
.end method

.method private setProfileForIncomingCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/Boolean;I)V
    .locals 2

    .line 1689
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_1

    .line 1690
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v0

    .line 1691
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "There\'s no need to stopActiveCamera when other slot has incoming/outgoing vt call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->stopActiveCamera()V

    .line 1704
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 1706
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 1707
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getRemoteVideoCapa()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteVideoCapa(Z)V

    .line 1708
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1709
    invoke-virtual {v0, p5}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCause(I)V

    .line 1711
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->updateCallProfile(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V

    .line 1713
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->startIncoming()V

    .line 1715
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getReplaces()Ljava/lang/String;

    move-result-object p0

    .line 1717
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1718
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1719
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p4, "Has replaces. Check Dialog Id"

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "replaceSipCallId: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setReplaceSipCallId(Ljava/lang/String;)V

    .line 1724
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    .line 1725
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNotifyHistoryInfo()Ljava/lang/String;

    move-result-object p0

    .line 1726
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    const-string p1, "not_notify"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1727
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHasDiversion()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1728
    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p1, "change_number"

    .line 1729
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1730
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo p1, "toast_only"

    .line 1732
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1733
    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 1736
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq p3, p0, :cond_8

    const/4 p0, 0x0

    .line 1737
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private updateCategoryList(I)Ljava/lang/String;
    .locals 10

    .line 896
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const-string v1, "ecc_category_list_cdma"

    const-string v2, ""

    .line 898
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-gtz p1, :cond_0

    const-string/jumbo v3, "ril.ecclist_net0"

    goto :goto_0

    .line 900
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.ecclist_net"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 901
    :goto_0
    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ecc_category_list"

    .line 903
    invoke-static {p1, v4, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v2

    .line 906
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ril.ecclist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 907
    invoke-static {v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 908
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ","

    if-nez v8, :cond_a

    .line 918
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 919
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v4, v3

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    .line 922
    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 923
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object v4, v6

    .line 926
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 927
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v4, v1

    .line 930
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 931
    sget-object p0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, p0, :cond_8

    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_7

    goto :goto_5

    .line 933
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_9

    .line 934
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 932
    :cond_8
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "000/4,08/4,110/4,999/4,118/4,"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    :goto_6
    return-object v4

    .line 909
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    .line 910
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 912
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 483
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Not registered."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 487
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 489
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVowifiEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVideoSettingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVideoSettingEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isEpdgConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 491
    invoke-interface {v5, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", VoiceNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 492
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DataNetworkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 493
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", SMSIP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "smsip"

    .line 494
    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", VOICE="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "mmtel"

    .line 495
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", VIDEO="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mmtel-video"

    .line 496
    invoke-virtual {p1, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVideoSettingEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 499
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 500
    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 501
    invoke-interface {v1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v3, 0xe

    if-eq v1, v3, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 502
    invoke-interface {p0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p0

    const/16 v1, 0x12

    if-ne p0, v1, :cond_2

    .line 503
    :cond_1
    invoke-virtual {p1, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 504
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 505
    invoke-virtual {p1, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected clearDialogList(II)V
    .locals 7

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastDialogEvent:[Lcom/sec/ims/DialogEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 1314
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1315
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 1316
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Match RegId clear Dialog List"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 1319
    new-instance v5, Lcom/sec/ims/DialogEvent;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v4, v6}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1320
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    .line 1321
    invoke-virtual {v5, p1}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    const/16 v3, 0xf

    .line 1323
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1324
    invoke-virtual {p0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public dump()V
    .locals 4

    .line 440
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 443
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 446
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 448
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 455
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const-string v3, "Service Module"

    .line 458
    invoke-virtual {p0, v2, v3}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getActiveDataPhoneId()I
    .locals 0

    .line 1441
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method public getCmcMediaController()Lcom/sec/internal/ims/servicemodules/volte2/ICmcMediaController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
    .locals 0

    .line 793
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object p0
.end method

.method public getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
    .locals 0

    .line 1116
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    return-object p0
.end method

.method public getDataAccessNetwork(I)I
    .locals 0

    .line 1423
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDataAccessNetwork:[I

    aget p0, p0, p1

    return p0
.end method

.method public getDowngradedCallCount(I)I
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getDowngradedCallCount(I)I

    move-result p0

    return p0
.end method

.method public getE911CallCount(I)I
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getE911CallCount(I)I

    move-result p0

    return p0
.end method

.method public getEpdgCallCount(I)I
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEpdgCallCount(I)I

    move-result p0

    return p0
.end method

.method public getEpdgManager()Lcom/sec/epdg/EpdgManager;
    .locals 0

    .line 1413
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mWfcEpdgMgr:Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object p0

    return-object p0
.end method

.method public getEpsFbCallCount(I)I
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getEpsFbCallCount(I)I

    move-result p0

    return p0
.end method

.method public getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;
    .locals 0

    .line 2184
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    return-object p0
.end method

.method public getImsMediaController()Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIsLteRetrying(I)Z
    .locals 0

    .line 1876
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getLastRegiErrorCode(I)I
    .locals 0

    .line 1101
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mLastRegiErrorCode:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLteEpsOnlyAttached(I)Z
    .locals 0

    .line 1418
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getMediaSvcIntf()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
    .locals 0

    .line 1111
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    return-object p0
.end method

.method public getMergeCallType(IZ)I
    .locals 0

    .line 1457
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getMergeCallType(IZ)I

    move-result p0

    return p0
.end method

.method public getMobileCareController()Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;
    .locals 0

    .line 1292
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    return-object p0
.end method

.method public getNetwork()Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 1

    .line 1224
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    return-object p0
.end method

.method public getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 0

    .line 1229
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mNetworks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    return-object p0
.end method

.method public getNrSaCallCount(I)I
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getNrSaCallCount(I)I

    move-result p0

    return p0
.end method

.method public getRatChanged(I)Z
    .locals 0

    .line 1296
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getRttDbrTimer(I)J
    .locals 1

    .line 738
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    goto :goto_0

    .line 743
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p0, :cond_1

    .line 744
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 747
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getDbrTimer()I

    move-result p0

    int-to-long p0, p0

    goto :goto_1

    :cond_2
    const-wide/16 p0, 0x4e20

    :goto_1
    return-wide p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1141
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallType(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1205
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallType(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallType(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1209
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByCallType(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1183
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionBySipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1156
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1151
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionCount()I
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result p0

    return p0
.end method

.method public getSessionCount(I)I
    .locals 0

    .line 1174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount(I)I

    move-result p0

    return p0
.end method

.method public getSessionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1188
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSessionList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;"
        }
    .end annotation

    .line 1193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSrvccVersion(I)I
    .locals 1

    const-string/jumbo p0, "srvcc_version"

    const/4 v0, 0x0

    .line 1429
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTotalCallCount(I)I
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTotalCallCount(I)I

    move-result p0

    return p0
.end method

.method public getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 888
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 889
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p0, :cond_0

    .line 890
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoCallCount(I)I
    .locals 0

    .line 809
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getVideoCallCount(I)I

    move-result p0

    return p0
.end method

.method public handleAllowedNetworkTypeChanged(IJ)V
    .locals 3

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    aget-wide v1, v0, p1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    return-void

    .line 980
    :cond_0
    aput-wide p2, v0, p1

    .line 981
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {p2, p3}, Lcom/sec/internal/helper/ImsCallUtil;->isNrAvailable(J)Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrPreferredMode(IZ)V

    return-void
.end method

.method public handleDedicatedEventAfterHandover(I)V
    .locals 0

    .line 2041
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleDedicatedEventAfterHandover(I)V

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public hasActiveCall(I)Z
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasActiveCall(I)Z

    move-result p0

    return p0
.end method

.method public hasCsCall(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1258
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasCsCall(IZ)Z

    move-result p0

    return p0
.end method

.method public hasCsCall(IZ)Z
    .locals 4

    .line 1264
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    .line 1266
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 1268
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1269
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "only one PS incoming call exists"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1275
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1277
    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v3, p0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1283
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasCsCall: numPsCall="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callState["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public hasDialingOrIncomingCall()Z
    .locals 2

    .line 1476
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasDialingOrIncomingCallOnCS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1477
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SD has already CS dialing or incoming call on SIM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1479
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasDialingOrIncomingCall()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1480
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SD has already PS dialing or incoming call on SIM"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z
    .locals 0

    .line 2085
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasDsdaDialingOrIncomingVtOnOtherSlot(I)Z

    move-result p0

    return p0
.end method

.method public hasEmergencyCall(I)Z
    .locals 0

    .line 1136
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasEmergencyCall(I)Z

    move-result p0

    return p0
.end method

.method public hasEstablishedCall(I)Z
    .locals 0

    .line 1164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasEstablishedCall(I)Z

    move-result p0

    return p0
.end method

.method public hasOutgoingCall(I)Z
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasOutgoingCall(I)Z

    move-result p0

    return p0
.end method

.method public hasRingingCall()Z
    .locals 1

    const/4 v0, -0x1

    .line 1214
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasRingingCall(I)Z

    move-result p0

    return p0
.end method

.method public hasRingingCall(I)Z
    .locals 0

    .line 1219
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasRingingCall(I)Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 1

    .line 362
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttSettingObserver:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->init()V

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->init()V

    .line 365
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIdcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->init()V

    return-void
.end method

.method public isCallBarringByNetwork(I)Z
    .locals 1

    const-string/jumbo p0, "ss_callbarring_by_network"

    const/4 v0, 0x0

    .line 1436
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCallServiceAvailable(ILjava/lang/String;)Z
    .locals 8

    .line 628
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 629
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 630
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 635
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 637
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "UserAgent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 642
    :cond_1
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isRegistering()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 645
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 646
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v5

    .line 645
    invoke-interface {v2, v4, v5, v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 647
    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    .line 650
    :cond_2
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->isDeregistring()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, " is not available due to Deregistring"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 655
    :cond_3
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 657
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 660
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 663
    :cond_4
    iget-boolean v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v4, :cond_5

    .line 664
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not available due to outOfService"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 668
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v5, " is not available due to unsupported N/W"

    const/16 v6, 0x12

    if-ne v2, v4, :cond_9

    .line 669
    iget v2, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v2, v6, :cond_6

    .line 670
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 671
    :cond_6
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v1, v2, :cond_7

    .line 672
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasActiveCall(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 676
    :cond_7
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 678
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 681
    :cond_9
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_b

    .line 684
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isInvite403DisabledService(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 685
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not available due to isInvite403DisabledService"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 689
    :cond_a
    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-nez v4, :cond_d

    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v4, v6, :cond_d

    .line 691
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 694
    :cond_b
    sget-object v4, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_c

    .line 696
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 697
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not available due to N/W suspend"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 700
    :cond_c
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_d

    const-string v4, "mmtel-call-composer"

    if-ne p2, v4, :cond_d

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 701
    invoke-static {p1, v4}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result v4

    if-nez v4, :cond_d

    .line 706
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "TMO: return false for composerauth 0 and callcomposer service case"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 710
    :cond_d
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getDisallowReregi()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 713
    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-nez v4, :cond_e

    iget v4, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v4, v6, :cond_e

    .line 715
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 720
    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_f

    .line 721
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Call Service is not available for delayedDeregiTimer"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 725
    :cond_f
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "mmtel"

    .line 727
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    iget p0, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-nez p0, :cond_10

    .line 728
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call Service is not available for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 733
    :cond_10
    invoke-virtual {v0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 632
    :cond_11
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isCsfbErrorCode(ILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/util/SipError;)Z
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->isCsfbErrorCode(Landroid/content/Context;ILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/util/SipError;)Z

    move-result p0

    return p0
.end method

.method public isEcbmMode(I)Z
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcbmMode:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isEmergencyRegistered(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableCallWaitingRule()Z
    .locals 0

    .line 1121
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEnableCallWaitingRule:Z

    return p0
.end method

.method protected isLTEDataModeEnabled(I)Z
    .locals 6

    .line 1055
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1056
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 1061
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {p0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPreferredNetworkType(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/16 v1, 0xe

    if-eq p0, v1, :cond_2

    const/16 v1, 0x12

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v0

    .line 1064
    :goto_1
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LTEDataMode : netType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " subid = "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move v1, v2

    .line 1066
    :catch_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "LTEDataMode : getPreferredNetworkType fail"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTEDataMode : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v0

    :cond_4
    :goto_3
    return v2
.end method

.method public isMdmiEnabled(I)Z
    .locals 1

    const-string p0, "enable_mdmi"

    const/4 v0, 0x0

    .line 2119
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isMmtelAcquiredEver()Z
    .locals 0

    .line 1126
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    return p0
.end method

.method public isNotifyRejectedCall(I)Z
    .locals 1

    const-string p0, "notify_rejected_call"

    const/4 v0, 0x0

    .line 1511
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isQSSSuccessAuthAndLogin(I)Z
    .locals 3

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2128
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;

    move-result-object p0

    .line 2129
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;->isSuccessAuthAndLogin()Z

    move-result p0

    .line 2130
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isQSSSuccessAuthAndLogin: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRegisteredOver3gppPsVoice(I)Z
    .locals 0

    .line 1082
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    return p0
.end method

.method public isRoaming(I)Z
    .locals 2

    .line 1074
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1077
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSilentRedialEnabled(Landroid/content/Context;I)Z
    .locals 1

    const-string/jumbo p0, "silent_redial"

    .line 1106
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0, v0, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected isVolteSettingEnabled()Z
    .locals 4

    .line 1049
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    .line 1050
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voiceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isVowifiEnabled(I)Z
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 1036
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1037
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getRoamPrefMode(Landroid/content/Context;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public notifyDSDAVideoCapa(I)V
    .locals 3

    .line 2171
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDSDAVideoCapa : phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p1, v1, :cond_0

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 2173
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEstablishedCall(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notifyDSDAVideoCapa : There is no active call on phoneId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2178
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->hasEstablishedCall(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->notifyDSDAVideoCapa(Z)V

    return-void
.end method

.method public notifyImsCallEventForVideo(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
    .locals 0

    .line 2014
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyImsCallEventForVideo(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    return-void
.end method

.method public notifyOnIncomingCall(II)V
    .locals 4

    .line 1846
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    .line 1853
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1855
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1857
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneIdFromExternalCall()I

    move-result v0

    goto :goto_0

    .line 1859
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 1864
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOnIncomingCall SD orig phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 1870
    :cond_1
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/SecImsNotifier;->onIncomingCall(II)V

    const/4 p1, 0x0

    .line 1872
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    return-void
.end method

.method public notifyProgressIncomingCall(ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1304
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->convertToSessionId(I)I

    move-result p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->proceedIncomingCall(ILjava/util/HashMap;Ljava/lang/String;)I

    return-void
.end method

.method protected onActiveDataSubscriptionChanged()V
    .locals 3

    .line 417
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onActiveDataSubscriptionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 419
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    .line 420
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unRegisterPhoneStateListener(I)V

    .line 422
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 423
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerPhoneStateListener(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCallModifyRequested(I)V
    .locals 3

    .line 1244
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallModifyRequested: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1248
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->MODIFY_REQUESTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;-><init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyCallStateEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public onConferenceParticipantAdded(ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConferenceParticipantRemoved(ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onConfigUpdated(ILjava/lang/String;)V
    .locals 3

    .line 1403
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigUpdated["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VOLTE_ENABLED"

    .line 1405
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LVC_ENABLED"

    .line 1406
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    .line 1407
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onServiceSwitched(ILandroid/content/ContentValues;)V

    :cond_1
    return-void
.end method

.method protected onImsCallEventForEstablish(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1366
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 1367
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1368
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_0

    .line 1369
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1370
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCallType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 1371
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImsCallEvent: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getSessionID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " releaseAllVideoCall due to the audio call"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1371
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseAllVideoCall()V

    .line 1377
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1378
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyDSDAVideoCapa(I)V

    .line 1380
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1381
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getTotalCallCount(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 1382
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/ims/extensions/WiFiManagerExt;->setImsCallEstablished(Landroid/content/Context;Z)V

    .line 1385
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1386
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    .line 1390
    :cond_3
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p3, v1, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V

    .line 1392
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 1393
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    const-string p2, "99991111222"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    goto :goto_0

    .line 1394
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1395
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1397
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->clearDialogList(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onImsConifgChanged(ILjava/lang/String;)V
    .locals 3

    .line 474
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: config changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected onImsIncomingCallEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Z)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    .line 1743
    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsIncomingCallEvent : sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " peerURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1744
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isDelayedIncoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1743
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-boolean v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    .line 1748
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getDelayRinging()Z

    move-result v1

    iput-boolean v1, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    .line 1749
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1750
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-nez v1, :cond_0

    const-string v0, "Not registered."

    .line 1752
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v2

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    return-void

    .line 1758
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isEnableVcid()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_1

    const-string v3, "VCID/MCID is enabled for only voice call, set Alertinfo null"

    .line 1759
    invoke-static {v8, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 1763
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isEnableVcid()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAlertInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->isVcidUrlExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    .line 1764
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getAlertInfo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/sec/internal/ims/servicemodules/volte2/vcid/VcidHelper;->isVcidCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "VCID is not capable, set Alertinfo null"

    .line 1765
    invoke-static {v8, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setAlertInfo(Ljava/lang/String;)V

    .line 1769
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v9

    .line 1770
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    .line 1772
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v10

    .line 1773
    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v10, v11, :cond_4

    const-string/jumbo v1, "same session exist."

    .line 1774
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 1775
    iget-boolean v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "something caused delay ringing false, notify to FW directly"

    .line 1776
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setDelayRinging(Z)V

    .line 1778
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setVideoCRBT(Z)V

    .line 1779
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p0, v9, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyOnIncomingCall(II)V

    :cond_3
    return-void

    .line 1782
    :cond_4
    invoke-static {v10}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "session is already Ending or Ended state"

    .line 1783
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1788
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1789
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1791
    sget-object v0, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    :cond_6
    move-object v10, v0

    .line 1794
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move-object v11, v2

    goto :goto_1

    :cond_8
    :goto_0
    const-string v0, "onImsNewIncomingCallEvent: Unexpected incoming call while volte is off."

    .line 1795
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSipErrorFactory:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;

    iget-object v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-boolean v12, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMmtelAcquiredEver:Z

    invoke-virtual {v0, v11, p1, v12, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorIncomingCallWithVolteOff(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZLcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    if-eq v0, v2, :cond_9

    .line 1800
    iget-object v11, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getSessionID()I

    move-result v12

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result v13

    invoke-interface {v11, v12, v13, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->rejectCall(IILcom/sec/ims/util/SipError;)I

    .line 1801
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v11

    if-nez v11, :cond_9

    return-void

    :cond_9
    move-object v11, v0

    .line 1807
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPreAlerting is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPreAlerting()Z

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPreAlerting()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    move-object v2, p1

    move/from16 v4, p2

    move-object v5, v11

    .line 1810
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->handlePreAlerting(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZZLcom/sec/ims/util/SipError;)V

    goto/16 :goto_3

    .line 1812
    :cond_a
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getIncomingCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v12

    if-nez v12, :cond_b

    const-string v0, "onImsIncomingCallEvent: mIncomingCallSession is null"

    .line 1814
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-ne v11, v2, :cond_c

    .line 1819
    invoke-direct {p0, v1, v12, p1, v10}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->ignoreIncomingCallSession(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;)I

    move-result v5

    :cond_c
    move v11, v5

    .line 1822
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v1, v12

    move-object v2, p1

    move-object v3, v10

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setProfileForIncomingCallSession(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/Boolean;I)V

    .line 1823
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v11, :cond_e

    .line 1826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsIncomingCallEvent getCmcType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1828
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnIncomingCall(II)V

    .line 1832
    :cond_d
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1833
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mCmcServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onImsIncomingCallEvent(II)V

    goto :goto_2

    .line 1834
    :cond_e
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isNotifyRejectedCall(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1838
    :cond_f
    :goto_2
    iget-boolean v0, v6, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mDelayRinging:Z

    if-nez v0, :cond_10

    .line 1839
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result v0

    invoke-virtual {p0, v9, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyOnIncomingCall(II)V

    :cond_10
    :goto_3
    return-void
.end method

.method public onSendRttSessionModifyRequest(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSendRttSessionModifyResponse(IZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 1445
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimSubscribeIdChanged, SimSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    .line 1450
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unRegisterPhoneStateListener(I)V

    .line 1451
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerPhoneStateListener(I)V

    .line 1452
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->registerAllowedNetworkTypesListener(I)V

    return-void
.end method

.method protected onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V
    .locals 3

    .line 1461
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] handleReinvite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1465
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    .line 1467
    :cond_0
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1470
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1471
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->handleSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;Lcom/sec/internal/constants/Mno;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized onTextReceived(Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 577
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRttEventBySession(ILcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 578
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9

    .line 1308
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "publishDialog: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/4 v8, 0x0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public pushCallInternal()V
    .locals 0

    .line 1096
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCallInternal()V

    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2

    .line 609
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    const-string v1, "mmtel"

    .line 611
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 612
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_0
    const-string v1, "mmtel-video"

    .line 615
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 616
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_1
    const-string v1, "mmtel-call-composer"

    .line 619
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isCallServiceAvailable(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    .line 620
    invoke-virtual {v0, p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_2
    return-object v0
.end method

.method public registerAllowedNetworkTypesListener(I)V
    .locals 5

    .line 942
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 943
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const-string/jumbo v2, "registerAllowedNetworkTypesListener("

    if-nez v1, :cond_0

    .line 944
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")  : not ValidSubscriptionId"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 947
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->unregisterAllowedNetworkTypesListener(I)V

    .line 948
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 950
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")  : TelephonyManager null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 954
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    invoke-direct {v3, p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;I)V

    aput-object v3, v1, p1

    .line 955
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v3, v3, p1

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 956
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v3

    aput-wide v3, v1, p1

    .line 957
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkType:[J

    aget-wide v1, p0, p1

    invoke-static {v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->isNrAvailable(J)Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrPreferredMode(IZ)V

    return-void
.end method

.method protected registerMissedSmsReceiver(ZI)V
    .locals 4

    .line 2051
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/helper/ImsCallUtil;->getPhraseByMno(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2052
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missedcallSmsphrase = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    aput-boolean p1, v1, p2

    move p1, v3

    .line 2055
    :goto_1
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMaxPhoneCount:I

    if-ge v3, p2, :cond_2

    .line 2056
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsMissedCallSmsChecking:[Z

    aget-boolean p2, p2, v3

    if-eqz p2, :cond_1

    move p1, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 2059
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez p2, :cond_3

    .line 2060
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "register mMissedSmsIntentReceiver"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$4;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2070
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.provider.Telephony.SMS_RECEIVED"

    .line 2071
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2072
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 2073
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_4

    .line 2074
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 2075
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMissedSmsIntentReceiver:Landroid/content/BroadcastReceiver;

    :cond_4
    :goto_2
    return-void
.end method

.method protected registerPhoneStateListener(I)V
    .locals 3

    .line 402
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPhoneStateListener:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 409
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    .line 410
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    move-result-object v2

    if-nez v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->releaseSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)V

    return-void
.end method

.method public sendEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER;Lcom/sec/internal/helper/ImsCallUtil$EMERGENCY_TIMER_STATE;)V
    .locals 10

    .line 2020
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 2021
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    if-eqz v0, :cond_1

    .line 2022
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getTimerState(I)I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "], state["

    const-string/jumbo v3, "sendEmergencyCallTimerState: timer["

    if-ne v0, v1, :cond_0

    .line 2023
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is same, Just return"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2026
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setTimerState(II)V

    .line 2029
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;

    .line 2030
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    .line 2031
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2033
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEcholocateController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;)V

    :cond_1
    return-void
.end method

.method public sendMobileCareEvent(IIILjava/lang/String;)V
    .locals 7

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 468
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 467
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendMobileCareEvent(IIILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public sendQualityStatisticsEvent()V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->sendQualityStatisticsEvent()V

    return-void
.end method

.method public sendRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V
    .locals 0

    .line 854
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteNotifier:Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteNotifier;->notifyOnRtpLossRate(ILcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    return-void
.end method

.method public setDelayedDeregisterTimerRunning(IZ)V
    .locals 1

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsDeregisterTimerRunning:[Z

    aput-boolean p2, v0, p1

    .line 1898
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateCapabilities(I)V

    return-void
.end method

.method public setIsLteRetrying(IZ)V
    .locals 0

    .line 1880
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteRetrying:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setRatChanged(IZ)V
    .locals 0

    .line 1300
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRatChanged:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public setRttMode(I)V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 551
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setRttMode(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRttMode(II)V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v1, v0, p1

    .line 558
    aput p2, v0, p1

    .line 561
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRttMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 562
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionCount()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz p2, :cond_1

    .line 563
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v0, v0, p1

    sget v2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setRttMode(IZ)V

    goto :goto_1

    .line 565
    :cond_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setRttMode: RTT registration is skiped because the call session exist."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget p2, p2, p1

    if-ne v1, p2, :cond_2

    .line 568
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setRttMode: not updating sessions"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 571
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x30000016

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 572
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRttMode:[I

    aget p0, p0, p1

    invoke-interface {p2, p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setRttMode(II)V

    return-void
.end method

.method public setTtyMode(I)V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 511
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setTtyMode(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized setTtyMode(II)V
    .locals 4

    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v1, v0, p1

    .line 517
    aput p2, v0, p1

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTtyMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v2, v2, p1

    invoke-interface {v0, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setTtyMode(II)V

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v0, v0, p1

    if-ne v1, v0, :cond_0

    .line 524
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "setTtyMode: not updating sessions"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 528
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 531
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "when non-registered status, do not pass TTY Mode"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    .line 535
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 536
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 542
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000015

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->setTtyMode(III)I

    .line 545
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->setTtyMode(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 537
    :cond_3
    :goto_0
    :try_start_3
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setTtyMode: do not call setTtyMode() for non IMS TTY operator"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTtyMode:[I

    aput v1, p2, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startLocalRingBackTone(III)I
    .locals 5

    .line 764
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    .line 765
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v1

    .line 767
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-lez v2, :cond_0

    .line 768
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "has Outgoing call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    goto :goto_0

    .line 770
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 771
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 772
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v2, "has Alerting call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-ltz v0, :cond_2

    .line 775
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Use IMS RBT when WiFi Calling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->startLocalRingBackTone(III)I

    move-result p0

    return p0

    .line 780
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Do Not Use IMS RBT when non WiFi Calling"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public stopLocalRingBackTone()I
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMediaSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method protected terminateMoWfcWhenWfcSettingOff(I)V
    .locals 2

    .line 1356
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1357
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 1358
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1359
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 1360
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->terminateMoWfcWhenWfcSettingOff(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1331
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const-string v1, "]"

    const-string v2, " Feature: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "["

    if-eqz v0, :cond_3

    move v0, v4

    .line 1332
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 1333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v5, ", ["

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1334
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1335
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Emergency Registered - PhoneId <"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1337
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "phoneId <"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "> - Registered : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1340
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v7, v5, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1343
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isEmergencyRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Emergency Registered"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1346
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Registered: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1349
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    aget-wide v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    return-object v5
.end method

.method public transfer(ILjava/lang/String;)V
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsExternalCallController:Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transfer(ILjava/lang/String;)V

    return-void
.end method

.method public triggerPsRedial(III)Z
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->triggerPsRedial(IIILcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method protected unRegisterPhoneStateListener(I)V
    .locals 2

    .line 429
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterPhoneStateListener:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    .line 432
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getPhoneStateListener(I)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 434
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPhoneStateListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method unregisterAllowedNetworkTypesListener(I)V
    .locals 3

    .line 985
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 986
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 987
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 989
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterAllowedNetworkTypesListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") : TelephonyManager null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 992
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 993
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mAllowedNetworkTypesListener:[Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$AllowedNetworkTypesListener;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void
.end method

.method public updateCapabilities(I)V
    .locals 0

    .line 604
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    return-void
.end method

.method public updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateEccUrn(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 863
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateCategoryList(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eccCategoryList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    .line 867
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    const-string v6, "/"

    .line 868
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 869
    aget-object v6, v5, v3

    .line 870
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 871
    array-length p2, v5

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    aget-object p2, v5, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v2

    .line 877
    :goto_1
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 878
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->isRequiredKorSpecificURN(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 879
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->convertEccCatToUrnSpecificKor(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 881
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->convertEccCatToUrn(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "urn:service:sos"

    :goto_2
    return-object p0
.end method

.method public updateNrSaModeOnStart(II)V
    .locals 2

    .line 2137
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSupportVoWiFiDisable5GSAFromConfiguration(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2141
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

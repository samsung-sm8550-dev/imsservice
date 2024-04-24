.class public Lcom/sec/internal/ims/cmstore/mcs/MCSClient;
.super Landroid/os/Handler;
.source "MCSClient.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/MessageStoreClient;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

.field mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

.field private mBufferDBHandlingThread:Landroid/os/HandlerThread;

.field private mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

.field private mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

.field private final mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

.field private mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

.field public mIsProvisioned:Z

.field private mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

.field protected final mLock:Ljava/lang/Object;

.field private mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

.field private mMcsFcmPushNotificationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMcsFcmPushNotifier:Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;

.field protected final mMcsProvisioningListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ICentralMsgStoreServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetAPIHandlingThread:Landroid/os/HandlerThread;

.field private mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

.field private mPhoneId:I

.field private mProvisionHandlingThread:Landroid/os/HandlerThread;

.field private mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

.field private mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppRequestHandler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMessagePreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMessageScheduler(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcsContactSync(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvisionWorkflow(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmsc(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->startProvisioning()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;)V
    .locals 2

    .line 532
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    .line 74
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    .line 83
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 84
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    .line 85
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mIsProvisioned:Z

    .line 88
    iput v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;

    .line 91
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    .line 94
    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    .line 533
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    .line 534
    iput p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    .line 535
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 536
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageService:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 537
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->msc:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-void
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 698
    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;-><init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    return-object v0
.end method

.method private initializeRetryAdapter()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "initializeRetryAdapter "

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->initRetryMapAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-void
.end method

.method private initializeSimInfo()V
    .locals 3

    .line 622
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 624
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .locals 4

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v3, "registerDefaultNetworkCallback"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 718
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 719
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private startProvisioning()V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v2, "startProvisioning"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->isRcsRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "not RCS ready"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "not network connection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 587
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->registerDefaultNetworkCallback()V

    return-void

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "not samsung msg app"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRegCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isRegistrationCodeInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v2, "registration code is expired, remove it"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRegCode(Ljava/lang/String;)V

    .line 600
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->unregisterNetworkCallback()V

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 728
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v3, "unregisterNetworkCallback"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 729
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 730
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/Binder;
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    return-object p0
.end method

.method public getClientID()I
    .locals 0

    .line 809
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    return p0
.end method

.method public getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .locals 0

    .line 893
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object p0
.end method

.method public getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;
    .locals 0

    .line 878
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentIMSI()Ljava/lang/String;
    .locals 0

    .line 883
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    return-object p0
.end method

.method public declared-synchronized getMcsFcmPushNotificationListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMcsProvisioningListener()Landroid/os/RemoteCallbackList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ICentralMsgStoreServiceListener;",
            ">;"
        }
    .end annotation

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;
    .locals 0

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mRetryMapAdapter:Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    return-object p0
.end method

.method public bridge synthetic getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    move-result-object p0

    return-object p0
.end method

.method public getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;
    .locals 0

    .line 888
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    return-object p0
.end method

.method public getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    return-object p0
.end method

.method public getProvisionStatus()Z
    .locals 0

    .line 741
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mIsProvisioned:Z

    return p0
.end method

.method public getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    return-object p0
.end method

.method public getRcsConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "root/*"

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;

    move-result-object v0

    .line 803
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigurationValue: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    .line 804
    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 631
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 690
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v0, "HANDLE_MCS_PROVISION_COMPLETED"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 684
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_DEREGISTER"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 685
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_2

    .line 686
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->disableMCS()V

    goto/16 :goto_1

    .line 678
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_GET_ACCOUNT"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 679
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_2

    .line 680
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->getAccount()V

    goto/16 :goto_1

    .line 672
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_UPDATE_ACCOUNT"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 673
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_2

    .line 674
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->updateAccountInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 666
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_RE_AUTHENTICATION"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 667
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_2

    .line 668
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->requestMcsReAuthentication()V

    goto/16 :goto_1

    .line 658
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_GET_SD"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz v0, :cond_2

    .line 660
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "getAll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 661
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 662
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->getSd(Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_MANAGE_SD"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 653
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_2

    .line 654
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->manageSd(ILjava/lang/String;)V

    goto :goto_1

    .line 642
    :pswitch_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "HANDLE_MCS_PROVISION_START"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 644
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 645
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 647
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    if-eqz p0, :cond_2

    .line 648
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->startProvisioning(Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :pswitch_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v1, "HANDLE_MCS_PROVISION_INIT"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->initializeSimInfo()V

    .line 635
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-nez p1, :cond_1

    .line 636
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v0, "Do not start for not MCS user"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 639
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public isRcsRegistered()Z
    .locals 7

    .line 607
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$Uris;->RCS_REGISTRATION_STATUS_URI:Landroid/net/Uri;

    .line 608
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v0, "registration_status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 612
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 609
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    move v2, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 616
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRcsRegistered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    if-ne v2, p0, :cond_2

    move v1, p0

    :cond_2
    return v1
.end method

.method public notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;Z)V
    .locals 3

    .line 926
    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppInitialSyncStatus, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SyncStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p5, "MessageApp"

    .line 929
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 930
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p3, p2, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    :cond_0
    return-void
.end method

.method public notifyAppNetworkOperationResult(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyAppOperationResult(Ljava/lang/String;I)V
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v2, "notifyAppOperationResult"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 942
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->notifyAppOperationResult(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyAppUIScreen(ILjava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 912
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " msgType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rowIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MessageApp"

    .line 914
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 915
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .locals 7

    .line 843
    new-instance p1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    .line 844
    new-instance p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    .line 845
    new-instance p1, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageStrategyManager:Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    .line 847
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "cloud message service buffer DB thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    .line 848
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "cloud message service NetAPI thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    .line 849
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "cloud message service Provision thread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionHandlingThread:Landroid/os/HandlerThread;

    .line 850
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 851
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 852
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 854
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 855
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 856
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    .line 857
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->initializeRetryAdapter()V

    .line 858
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->createBufferDBInstance(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 859
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mHttpController:Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    .line 860
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-direct {v0, p1, p0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    .line 861
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-direct {p1, p2, p0, p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Landroid/os/Handler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    .line 862
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerCentralMsgStoreServiceListener()V

    .line 863
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-direct {p1, p0, p2, v0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;-><init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsContactSync:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    .line 864
    new-instance p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 866
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mAppRequestHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/AppRequestHandler;

    .line 867
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;

    iget p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotifier:Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;

    .line 868
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->startProvisioning()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 0
    return-void
.end method

.method public registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V
    .locals 5

    if-nez p1, :cond_0

    .line 746
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string p2, "listener: null"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "register listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1
    if-eqz p2, :cond_3

    .line 756
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mCloudMessagePreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    const/16 p2, 0x64

    goto :goto_0

    :cond_2
    const/16 p2, 0xc8

    .line 759
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 760
    invoke-interface {p1, p2, v1}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsRegistrationCompleted(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 762
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 765
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public requestMcsAccessToken(Z)Z
    .locals 4

    .line 783
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMcsAccessToken: forceRefresh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 786
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string/jumbo v0, "requestMcsAccessToken: workflow is null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_2

    .line 790
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->isValidAccessToken()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 791
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mProvisionWorkflow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->requestMcsAccessToken()V

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V
    .locals 4

    monitor-enter p0

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMcsFcmPushNotificationListener: listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 557
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsFcmPushNotificationListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProvisionStatus(Z)V
    .locals 3

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProvisionStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mIsProvisioned:Z

    return-void
.end method

.method public showInitsyncIndicator(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;)V
    .locals 5

    if-nez p1, :cond_0

    .line 770
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    const-string v0, "listener: null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 777
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 779
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateDelay(IJ)Z
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delayed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateEvent(I)V
    .locals 0

    .line 565
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

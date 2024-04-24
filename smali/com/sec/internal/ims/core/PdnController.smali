.class public Lcom/sec/internal/ims/core/PdnController;
.super Landroid/os/Handler;
.source "PdnController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IPdnController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field protected static final ECC_IWLAN:Ljava/lang/String; = "IWLAN"

.field protected static final EVENT_CLEAR_EMERGENCY_QUALIFIEDNETWORK:I = 0x70

.field protected static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x6e

.field protected static final EVENT_EPDG_CONNECTION_CHANGED:I = 0x68

.field protected static final EVENT_EPDG_IKEERROR:I = 0x6d

.field protected static final EVENT_LINK_PROPERTIES_CHANGED:I = 0x6f

.field protected static final EVENT_PDN_CONNECTED:I = 0x6c

.field protected static final EVENT_PDN_DISCONNECTED:I = 0x67

.field protected static final EVENT_REQUEST_NETWORK:I = 0x65

.field protected static final EVENT_REQUEST_STOP_PDN:I = 0x6b

.field protected static final EVENT_STOP_PDN_COMPLETED:I = 0x66

.field protected static final EVENT_WIFI_CONNECTED:I = 0x69

.field protected static final EVENT_WIFI_DISCONNECTED:I = 0x6a

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final PROPERTY_ECC_PATH:Ljava/lang/String; = "ril.subtype"

.field static final TEMP_SA_DISABLE:I = 0x4

.field static final TEMP_SA_ENABLE:I = 0x3

.field protected static mDataState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActiveDataPhoneId:I

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mEPDNQN:[I

.field protected mEPDNintfName:[Ljava/lang/String;

.field protected mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsDisconnecting:Z

.field protected mNeedCellLocationUpdate:Z

.field protected final mNetworkCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            "Lcom/sec/internal/ims/core/NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNetworkStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/os/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

.field protected final mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTelephonyCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static synthetic $r8$lambda$49kIjLbUaVH4IkHMrny1jWCneV0(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->lambda$requestNetwork$1(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQ0V8XaUJLWEixkhkYbs42xVlDM(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$handlePcscfRestorationIntent$3(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYRAu7lhncSkaiUWpJkOiNwTJac(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$handlePcscfRestorationIntent$2(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yqTVopmRdnfRlV4t6dgoAOxOT9c(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$getCurrentCellIdentity$0(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    .line 85
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    .line 86
    const-class v0, Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    const/4 p2, 0x0

    .line 116
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 117
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    .line 119
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    .line 120
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    .line 121
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    .line 124
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 125
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 386
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$1;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 399
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$2;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$2;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1444
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$3;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$3;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string p2, "connectivity"

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 133
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 134
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    .line 135
    new-instance p2, Lcom/sec/internal/ims/core/ImsEpdgEventListener;

    invoke-direct {p2, p0, p3}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 137
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 138
    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    .line 139
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    .line 141
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    .line 145
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object p3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-direct {p2, p1, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1095
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1102
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineIpAddress: invalid address -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1096
    :cond_1
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "determineIpAddress: empty address."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1247
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    .line 1248
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 1252
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1254
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1255
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1259
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1260
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNetworkCapability(I)I
    .locals 0

    .line 0
    const/16 p0, 0xb

    if-eq p1, p0, :cond_2

    const/16 p0, 0xf

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private handleConnectedPdnType(IILcom/sec/internal/ims/core/NetworkCallback;Ljava/lang/String;)V
    .locals 4

    .line 769
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 771
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onPdnConnected: NetworkState is null!"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 782
    iget-object p3, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 783
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    .line 784
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 785
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "onPdnConnected: epdg network for ims pdn"

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 786
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p1

    .line 787
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 788
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p4

    invoke-interface {p3, p4, v2, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 789
    invoke-interface {p3, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(I)V

    goto :goto_0

    .line 791
    :cond_1
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const/16 p3, 0xf

    if-ne p1, p3, :cond_4

    const-string/jumbo p1, "ril.subtype"

    const-string p3, ""

    .line 794
    invoke-static {p1, p3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 795
    iget-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eccPath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string p3, "IWLAN"

    .line 796
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 797
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    .line 799
    :cond_3
    iget-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object p4, p3, p2

    .line 800
    sget-object p3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleConnectedPdnType: eccPath="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mEPDNintfName : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static synthetic lambda$getCurrentCellIdentity$0(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .locals 0

    .line 349
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isMatched(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handlePcscfRestorationIntent$2(ILjava/util/Map$Entry;)Z
    .locals 2

    .line 1472
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/NetworkCallback;

    iget v0, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1473
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/NetworkCallback;

    iget p1, p1, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handlePcscfRestorationIntent$3(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 1

    const/16 v0, 0xb

    .line 1475
    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfRestorationNotified(ILjava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$requestNetwork$1(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V
    .locals 0

    .line 550
    iget-object p2, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    return-void
.end method

.method private needRequestMobileNetwork(II)Z
    .locals 3

    .line 704
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v0

    .line 705
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    .line 706
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v1

    .line 707
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->isDataRoaming(I)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 708
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 709
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 711
    invoke-virtual {v1, p0, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq p0, v1, :cond_0

    if-nez p1, :cond_0

    if-ne v0, p2, :cond_0

    return p2

    :cond_0
    return v2
.end method

.method private onDefaultNetworkChanged()V
    .locals 5

    .line 1028
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultNetworkChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1030
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1032
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1033
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    goto :goto_0

    .line 1037
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1038
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    goto :goto_1

    .line 1041
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

.method private onEpdgConnected(ILjava/lang/String;Z)V
    .locals 6

    .line 875
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    const-string v1, "emergency"

    .line 876
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 877
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpdgEvent onEpdgConnected: emergency  connected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsEmergencyEpdgConnected="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 877
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 879
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    return-void

    :cond_0
    const-string v1, "ims"

    .line 883
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 887
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgEvent onEpdgConnected: apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " connected="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mIsEpdgConnected="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 887
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 891
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 892
    iget v1, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    const/16 v4, 0xb

    if-ne v1, v4, :cond_2

    move p2, v2

    goto :goto_0

    :cond_3
    move p2, v3

    .line 898
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgConnected: existCallBack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " connected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " dataRat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mobileDataRat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " voiceRat ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 898
    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_4

    .line 905
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    return-void

    :cond_4
    const/16 p2, 0x12

    if-eqz p3, :cond_7

    .line 911
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    .line 914
    :cond_5
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 915
    iget-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p3

    .line 916
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 917
    invoke-interface {v0, p2, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 918
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(I)V

    goto :goto_1

    .line 920
    :cond_6
    monitor-exit p3

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 923
    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p3

    if-nez p3, :cond_8

    return-void

    .line 926
    :cond_8
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 928
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p3

    if-ne p3, p2, :cond_9

    .line 930
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p3

    .line 937
    :cond_9
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p2

    .line 938
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 939
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v2

    invoke-interface {v1, p3, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 940
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgDisconnected(I)V

    goto :goto_2

    .line 942
    :cond_a
    monitor-exit p2

    :goto_3
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_b
    :goto_4
    return-void
.end method

.method private onEpdgIkeError(I)V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 868
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 869
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onIKEAuthFAilure(I)V

    goto :goto_0

    .line 871
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onLinkPropertiesChanged(ILandroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V
    .locals 6

    .line 837
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 839
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "ignore onLinkPropertiesChanged as requestStopNetwork preceded this"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged: networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 846
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged: linkProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    new-instance v0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v0, p4}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 849
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/NetworkCallback;->isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I

    move-result p4

    .line 850
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/NetworkCallback;->isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v2

    const/4 v3, 0x1

    if-ge p4, v3, :cond_1

    if-eqz v2, :cond_4

    .line 852
    :cond_1
    iput-object v0, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-lt p4, v3, :cond_3

    .line 855
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLinkPropertiesChanged: LinkProperties changed type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " call onLocalIpChanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne p4, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 856
    :goto_0
    invoke-interface {p3, p1, p2, v3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(ILandroid/net/Network;Z)V

    :cond_3
    if-eqz v2, :cond_4

    .line 860
    iget-object p4, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onLinkPropertiesChanged: LinkProperties changed call onPcscfAddressChanged"

    invoke-virtual {p4, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p1, p2, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 839
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 5

    .line 806
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnDisconnected: networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 809
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    const/16 v1, 0xb

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 814
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0, v4, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 815
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    .line 820
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object v0, v1, p2

    .line 823
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter p2

    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onDisconnected(I)V

    .line 826
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 827
    new-instance p1, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 828
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 829
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    .line 831
    :cond_3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onStopPdnCompleted()V
    .locals 5

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    .line 693
    :try_start_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 696
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 697
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_0

    .line 699
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 700
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onWifiConnected()V
    .locals 7

    .line 947
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onWifiConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 949
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 950
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 951
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 952
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 956
    :cond_1
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-interface {v3, v6, v2, v5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_0

    .line 960
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 961
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 962
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 966
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-interface {v3, v5, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_1

    .line 969
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 973
    :try_start_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v3, "mmtel"

    .line 975
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const/16 v5, 0x14

    .line 974
    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 976
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 977
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const/4 v3, 0x4

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 981
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 969
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private onWifiDisconnected()V
    .locals 7

    .line 987
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onWifiDisConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 989
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 991
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 992
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 996
    :cond_1
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-interface {v3, v6, v2, v5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1001
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 1002
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 1006
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-interface {v3, v5, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_1

    .line 1009
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1013
    :try_start_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v3, "mmtel"

    .line 1015
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const/16 v5, 0x14

    .line 1014
    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1016
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 1017
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const/4 v3, 0x3

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1021
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 1009
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 7

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 630
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v1

    .line 635
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 637
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 638
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 641
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 642
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestStopNetwork: network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callback is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v5, "exist"

    goto :goto_0

    :cond_1
    const-string v5, "null"

    .line 643
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 642
    invoke-virtual {v3, p2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 645
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    .line 646
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :try_start_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 650
    :try_start_3
    sget-object v5, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    const/16 p3, 0x66

    .line 660
    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 668
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->needRequestMobileNetwork(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    .line 669
    :goto_2
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    if-eqz v1, :cond_3

    const-wide/16 v5, 0x7d0

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x3e8

    :goto_3
    invoke-virtual {p0, p3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 671
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 672
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p3

    const/16 v1, 0xb

    if-ne p1, v1, :cond_5

    .line 673
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 676
    invoke-virtual {p3, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(Z)V

    .line 677
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_7

    .line 678
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p1

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p3

    invoke-virtual {p0, p1, p3, v3, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_4

    :cond_5
    if-ne p1, v0, :cond_7

    .line 681
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyEpdgConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 682
    invoke-virtual {p3, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyEpdgConnected(Z)V

    .line 685
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aput v4, p1, p2

    .line 686
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    :cond_7
    :goto_4
    return-void

    :catchall_0
    move-exception p0

    .line 671
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 638
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method


# virtual methods
.method protected applyEmergencyQualifiedNetowrk(I)V
    .locals 4

    const/16 v0, 0x70

    .line 1414
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1417
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEmergencyRat: set ePDN QN to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1418
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aget p0, p0, p1

    invoke-virtual {v0, p1, p0}, Lcom/sec/epdg/EpdgManager;->setEmergencyQualifiedNetwork(II)V

    const-wide/16 p0, 0xc8

    .line 1422
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1424
    sget-object p1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleep exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1427
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setEmergencyRat: em is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dump()V
    .locals 3

    .line 1364
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "History of PdnController:"

    .line 1367
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1369
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1370
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1371
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1069
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 1071
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1072
    sget-boolean v1, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    if-eqz v1, :cond_1

    .line 1073
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpAddressList: inetAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1078
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    .line 1080
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpAddressList: inetAddress IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1084
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1083
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public getAllCellInfo(IZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 292
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllCellInfo mNeedCellLocationUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    if-nez p2, :cond_0

    const/4 p2, -0x1

    if-ne v2, p2, :cond_1

    .line 307
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfoBySubId(I)Ljava/util/List;

    move-result-object p2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get latest cellInfo and store, subId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    :cond_1
    return-object v0
.end method

.method public getCellIdentity(IZ)Landroid/telephony/CellIdentity;
    .locals 1

    if-eqz p2, :cond_0

    .line 320
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p2

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p2

    if-nez p2, :cond_1

    .line 324
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "reget cid from ril since null restored value"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 329
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    return-object p2
.end method

.method public getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;
    .locals 2

    .line 335
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->getCellIdentity(IZ)Landroid/telephony/CellIdentity;

    move-result-object p0

    .line 337
    invoke-static {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->from(Landroid/telephony/CellIdentity;)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object p0

    return-object p0

    .line 340
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    .line 342
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getCurrentCellIdentity: getAllCellInfo null"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    sget-object p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-object p0

    .line 346
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;-><init>()V

    .line 347
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;-><init>()V

    .line 348
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 349
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 350
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-object p0
.end method

.method public getDataState(I)I
    .locals 1

    .line 1399
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1400
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getDefaultNetworkBearer()I
    .locals 3

    .line 1376
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1377
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1378
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    .line 1379
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1383
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNetworkBearer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v2, "CELLULAR"

    goto :goto_1

    :cond_1
    const-string v2, " WIFI"

    .line 1384
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1231
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p1, :cond_0

    .line 1233
    iget-object p1, p1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-eqz p1, :cond_0

    .line 1234
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1236
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDnsServersByNetType()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object p0

    return-object p0
.end method

.method public getEpdgPhysicalInterface(I)I
    .locals 1

    .line 268
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEpdgPhysicalInterface()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 270
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Network State is NULL"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1217
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p0, :cond_0

    .line 1218
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-eqz p0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1221
    monitor-exit v0

    return-object p0

    .line 1224
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIntfNameByNetType()Ljava/lang/String;
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1274
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p0, :cond_0

    .line 1181
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMobileDataRegState(I)I
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataRegState()I

    move-result p0

    return p0
.end method

.method public getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;
    .locals 2

    .line 363
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 364
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 368
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "NetworkState is not exist. Return default NetworkState."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    invoke-static {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->create(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceRegState(I)I
    .locals 0

    .line 262
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result p0

    return p0
.end method

.method public getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 439
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 489
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    goto/16 :goto_1

    .line 463
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;

    .line 464
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getListener()Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v2

    .line 465
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 464
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sec/internal/ims/core/PdnController;->onLinkPropertiesChanged(ILandroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V

    goto :goto_1

    .line 485
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onDefaultNetworkChanged()V

    goto :goto_1

    .line 481
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->onEpdgIkeError(I)V

    goto :goto_1

    .line 454
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    .line 455
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->-$$Nest$fgetmNetwork(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/sec/internal/ims/core/PdnController;->onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V

    goto :goto_1

    .line 446
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_1

    .line 477
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiDisconnected()V

    goto :goto_1

    .line 473
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiConnected()V

    goto :goto_1

    .line 469
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->onEpdgConnected(ILjava/lang/String;Z)V

    goto :goto_1

    .line 459
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_1

    .line 450
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onStopPdnCompleted()V

    goto :goto_1

    .line 442
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_b
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

.method protected handlePcscfRestorationIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "V4"

    .line 1455
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v0, "V6"

    .line 1458
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ","

    if-eqz v1, :cond_2

    .line 1459
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1460
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "PhoneId"

    const/4 v1, 0x0

    .line 1462
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1463
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1464
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pcscfList for restoration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "invalid pcscf restoration intent"

    .line 1467
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1470
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1471
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda4;-><init>()V

    .line 1474
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1475
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasEmergencyServiceOnly(I)Z
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initSequentially()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 151
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->create(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 155
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/PdnController;->registerTelephonyCallback(I)V

    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 158
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 160
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.UPDATE_PCSCF_RESTORATION"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .locals 4

    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 1142
    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    .line 1143
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1149
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1150
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isConnected: No callback exists"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    monitor-exit v0

    return v2

    .line 1153
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 1154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_7

    .line 1156
    iget-object v0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-eq v0, p1, :cond_3

    goto :goto_3

    .line 1160
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/NetworkCallback;->isDisconnectRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1161
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isConnected: Disconnect msg is in queue for networkType ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v2

    :cond_4
    if-eqz p1, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_1

    .line 1171
    :cond_5
    iget-boolean p0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    goto :goto_2

    .line 1169
    :cond_6
    :goto_1
    iget-object p0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    .line 1173
    :goto_2
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected:  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] networktype ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_7
    :goto_3
    return v2

    :catchall_0
    move-exception p0

    .line 1154
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isDataRoaming(I)Z
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result p0

    return p0
.end method

.method public isDisconnecting()Z
    .locals 0

    .line 1341
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    return p0
.end method

.method public isEmergencyEpdgConnected(I)Z
    .locals 0

    .line 1198
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEpdgAvailable(I)Z
    .locals 0

    .line 1193
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEpdgConnected(I)Z
    .locals 0

    .line 1189
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEpsOnlyReg(I)Z
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInternationalRoaming(I)Z
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isInternationalRoaming()Z

    move-result p0

    return p0
.end method

.method public isNeedCellLocationUpdate()Z
    .locals 0

    .line 358
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    return p0
.end method

.method public isNetworkAvailable(III)Z
    .locals 5

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 1284
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 1286
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkAvailable: isEpdgConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " getDataNetworkType()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1286
    invoke-static {v2, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p3, 0x12

    const/4 v2, 0x0

    if-ne p1, p3, :cond_3

    if-eq p2, v1, :cond_3

    .line 1289
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p0

    if-ne p0, p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 1291
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .locals 0

    .line 1297
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPendedEPDGWeakSignal(I)Z
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result p0

    return p0
.end method

.method public isPsOnlyReg(I)Z
    .locals 0

    .line 281
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result p0

    return p0
.end method

.method public isVoiceRoaming(I)Z
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result p0

    return p0
.end method

.method public isWifiConnected()Z
    .locals 3

    .line 1203
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1205
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isWifiConnected: Default NW is null "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1209
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 1210
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc

    .line 1211
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    .line 1212
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method notifyDataConnectionState(IIZI)V
    .locals 4

    .line 1301
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyDataConnectionState"

    invoke-static {v0, p4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1303
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1308
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "initialize PendedEPDGWeakSignal flag"

    .line 1309
    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 1310
    invoke-virtual {p0, p4, v2}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 1313
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnectionState: needNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEpdgConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " dataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dataRegState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1313
    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1319
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    .line 1320
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1323
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1324
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    :cond_2
    if-nez p3, :cond_3

    .line 1327
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p3

    if-ne p1, p3, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p3

    if-eq p2, p3, :cond_5

    .line 1328
    :cond_3
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1329
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 1331
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p1

    .line 1332
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1333
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v2

    invoke-interface {p3, v0, v2, p4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_0

    .line 1335
    :cond_4
    monitor-exit p1

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V
    .locals 6

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 721
    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->setPdnEndTime(I)V

    .line 722
    move-object v0, p3

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PDN SETUP TIME : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnEndTime(I)J

    move-result-wide v2

    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnStartTime(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 731
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore onPdnConnected: network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as requestStopNetwork preceded this"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 736
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 742
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPdnConnected: network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 743
    iput-object p4, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    const/4 v2, 0x1

    .line 744
    iput-boolean v2, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    .line 746
    new-instance v3, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v3, v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 748
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPdnConnected: link properties "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 750
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sec/internal/ims/core/PdnController;->handleConnectedPdnType(IILcom/sec/internal/ims/core/NetworkCallback;Ljava/lang/String;)V

    .line 752
    iget-object p2, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {p2}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 753
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/NetworkCallback;->isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I

    move-result p2

    if-lt p2, v2, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 755
    :goto_0
    invoke-interface {p3, p1, p4, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(ILandroid/net/Network;Z)V

    .line 757
    :cond_4
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/NetworkCallback;->isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 758
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p1, p4, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V

    .line 760
    :cond_5
    iput-object v3, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    goto :goto_1

    .line 763
    :cond_6
    iput-object v3, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 764
    iget-object p0, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {p0, p1, p4}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    :goto_1
    return-void

    .line 737
    :cond_7
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onPdnConnected: linkProperties or interface name is null, wait for next onPdnConnected()"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 728
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 415
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readPcscfFromLinkProperties: lp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "not null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    return-object p0

    .line 421
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object p1

    .line 422
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 423
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 424
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0:0:0:0:0:0:0:0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "::"

    .line 426
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 429
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readPcscfFromLinkProperties: Valid pcscf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTelephonyCallback(I)V
    .locals 5

    .line 171
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 172
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPhoneStateListener subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-gez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    if-eqz v2, :cond_2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPhoneStateListener: callback exits subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->getSubId()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    .line 183
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->unRegisterTelephonyCallback(I)V

    .line 187
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;II)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {v0, p1, p0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public removeRouteToHostAddress(ILjava/lang/String;)Z
    .locals 3

    .line 1122
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRouteToHostAddress: hostAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1132
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {p0, p1, p2}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->removeRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 7

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNetwork: networkType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v3, "null"

    goto :goto_0

    .line 539
    :cond_0
    iget v3, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v0, :cond_3

    .line 541
    iget v1, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-eq v1, p1, :cond_1

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 545
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 549
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 550
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda9;

    invoke-direct {p2, p3, p1, v0}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 556
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 557
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    if-eqz v1, :cond_5

    .line 558
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Wait until ongoing stop request done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x66

    .line 563
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p2, "requestNetwork: Unexpected event missing case. Send EVENT_STOP_PDN_COMPLETED again"

    .line 564
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 568
    :cond_4
    monitor-exit v0

    return-void

    .line 570
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_2

    :cond_6
    move v2, v0

    .line 574
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkCapability(I)I

    move-result v3

    .line 579
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 580
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->needRequestMobileNetwork(II)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    if-eqz v0, :cond_8

    const/16 v3, 0xc

    .line 588
    :cond_8
    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPdnConnectivity: transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " needRequestMobileNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 591
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 593
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    if-nez v2, :cond_9

    .line 596
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    if-lez v2, :cond_9

    .line 597
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 598
    new-instance v3, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 602
    :cond_9
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 604
    new-instance v3, Lcom/sec/internal/ims/core/NetworkCallback;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/sec/internal/ims/core/NetworkCallback;-><init>(Lcom/sec/internal/ims/core/PdnController;ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)V

    .line 605
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v4, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xf

    if-ne p1, v4, :cond_a

    .line 609
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_a
    :goto_3
    if-eq p1, v1, :cond_b

    if-nez p1, :cond_c

    :cond_b
    if-eqz v0, :cond_d

    .line 613
    :cond_c
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_5

    .line 615
    :cond_d
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 621
    :goto_4
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onNetworkRequestFail()V

    .line 624
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void

    :catchall_0
    move-exception p0

    .line 570
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public requestRouteToHostAddress(ILjava/lang/String;)Z
    .locals 4

    .line 1110
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1112
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {p0, p1, v0}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1115
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress: hostAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " networkType="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " address="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1115
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public resetNetworkState(I)V
    .locals 0

    .line 373
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 375
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    const/4 p1, 0x1

    .line 377
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 380
    sget p1, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    const/4 p1, 0x0

    .line 381
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    :cond_0
    return-void
.end method

.method public setDataState(II)V
    .locals 0

    .line 1406
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEmergencyQualifiedNetowrk(II)V
    .locals 0

    .line 1410
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aput p2, p0, p1

    return-void
.end method

.method public setPendedEPDGWeakSignal(IZ)V
    .locals 5

    .line 210
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPendedEPDGWeakSignal"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 213
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 214
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p0, :cond_0

    const-string/jumbo p0, "setPendedEPDGWeakSignal, networkState is not exist."

    .line 216
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p2

    .line 221
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_3

    const/16 v3, 0xe

    if-eq v1, v3, :cond_3

    if-nez p2, :cond_3

    :cond_1
    const-string p2, "VzW/ATT/TMOUS/DISH : LOST_LTE_WIFI_CONNECTION:12"

    .line 226
    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I
    .locals 3

    .line 531
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPdnConnectivity: networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x65

    .line 532
    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .locals 5

    .line 1050
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 1052
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPdnConnectivity: network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callback is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v4, "exist"

    goto :goto_0

    :cond_0
    const-string v4, "null"

    .line 1053
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1052
    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v1, :cond_1

    .line 1055
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkCallback;->setDisconnectRequested()V

    goto :goto_1

    .line 1057
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestStopNetwork: callback not found"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1058
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1059
    monitor-exit v0

    const/4 p0, 0x2

    return p0

    .line 1062
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x6b

    .line 1064
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1062
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .locals 1

    .line 1045
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/PdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 1348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsEpdgConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isWifiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVopsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataRoaming:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataConnectionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVoiceRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmergencyOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsDisconnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mPendedEPDGWeakSignal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmcbsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1360
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translateNetworkBearer(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne p0, p1, :cond_1

    return p0

    .line 1394
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bearer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public unRegisterTelephonyCallback(I)V
    .locals 2

    .line 194
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterTelephonyCallback:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->unregisterTelephonyCallbackForSlot(ILandroid/telephony/TelephonyCallback;)V

    .line 200
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

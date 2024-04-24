.class public final Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.super Ljava/lang/Object;
.source "ContactCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;,
        Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;,
        Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;
    }
.end annotation


# static fields
.field private static final DELAY_REFRESH_COUNT:I = 0x12c

.field private static final DELAY_REFRESH_TIME:I = 0x12c

.field private static final LOG_TAG:Ljava/lang/String; = "ContactCache"

.field private static final MAX_COUNT:I = 0x3e8


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field private final mCapabilitiesCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

.field protected mContactCurCount:I

.field protected final mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/Contact;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field protected mCountryCode:Ljava/lang/String;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mIsBlockedContactChange:Z

.field protected mIsBlockedInitialContactSyncBeforeRegi:Z

.field private mIsContactUpdated:Z

.field protected mIsLimiting:Z

.field protected mIsThrottle:Z

.field protected mLastRawId:Ljava/lang/String;

.field private mLastRefreshTimeInMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMno:Lcom/sec/internal/constants/Mno;

.field protected mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

.field private mPrevRefreshTimeInMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartIndex:I

.field final mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$IKtDxFcije4IlbWOQC0DUet_UTM(Lcom/sec/internal/ims/servicemodules/options/ContactCache;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$setThrottleContactSync$0(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$PwvAmTJsOpX-DvSYbppsROWhpkk(Lcom/sec/internal/ims/servicemodules/options/ContactCache;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$startContactSync$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jXTk-_ktlXHrVRXnFt8V6B-2LWk(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$startContactSync$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    .line 69
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    .line 77
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    .line 83
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    .line 87
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 88
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    .line 89
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    .line 90
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 91
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 100
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 107
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ContactCacheHandler"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    .line 111
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpContactList()V
    .locals 6

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/Contact;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x28

    if-le v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "ContactId ("

    .line 439
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    RawId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getRawId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "    Name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getContactNumberList()Ljava/util/ArrayList;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    const-string v5, "    Number: "

    .line 444
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "    E164: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 447
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 0
    return-object p1
.end method

.method private isAllowedContactSync(I)Z
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v0

    const-string/jumbo v1, "rcs_contact_sync_in_switch_off"

    const/4 v2, 0x1

    .line 675
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 677
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p0, v3, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 681
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: rcs is off in customer."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_1
    if-nez p0, :cond_2

    if-nez v1, :cond_2

    .line 684
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: CONTACT_SYNC_IN_SWITCH_OFF is false."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 686
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 687
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: Chn always false."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 691
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: contact sync is allowed"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method private synthetic lambda$setThrottleContactSync$0(ZI)V
    .locals 3

    .line 459
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setThrottleContactSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-eq v1, p1, :cond_3

    .line 461
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-nez p1, :cond_3

    .line 462
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz p1, :cond_3

    .line 463
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz p1, :cond_2

    .line 464
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processChangeDuringLimiting(I)V

    .line 467
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    add-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setThrottleContactSync : Limiting, mStartIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo p1, "setThrottleContactSync : try to resync"

    .line 470
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$startContactSync$1(I)V
    .locals 1

    .line 815
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Explicit GC after sync"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 816
    invoke-static {}, Lcom/sec/internal/helper/os/SystemWrapper;->explicitGc()V

    return-void
.end method

.method private synthetic lambda$startContactSync$2()V
    .locals 6

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 777
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactSync: operator is unknown. bail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 781
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    .line 784
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 785
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "startContactSync: start caching contacts."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 787
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->refresh(I)Z

    move-result v3

    .line 789
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 790
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 791
    invoke-virtual {p0, v4, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(ZI)V

    goto :goto_0

    .line 793
    :cond_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 794
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 797
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 799
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 800
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 801
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    const-string/jumbo v1, "startContactSync: removed, check removed contacts."

    .line 806
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    move-result v3

    goto :goto_1

    .line 808
    :cond_4
    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    if-eqz v4, :cond_5

    .line 809
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 810
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    .line 813
    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    if-nez v1, :cond_6

    .line 814
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;I)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 817
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    const-string/jumbo v1, "startContactSync: Done. contact updated."

    .line 822
    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 823
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 824
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;->onChanged()V

    goto :goto_3

    :cond_7
    const-string/jumbo p0, "startContactSync: Done. contact no found."

    .line 827
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method private refresh(I)Z
    .locals 14

    const-string/jumbo v0, "refresh: found "

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 311
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh: cc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 320
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setProjection()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "contact_last_updated_timestamp > ?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .line 322
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v8, v10

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "raw_contact_id LIMIT "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x3e8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 326
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 327
    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "refresh: mStartIndex "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 328
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "N,REFR:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x12060000

    invoke-static {v12, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 330
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v4, :cond_2

    :try_start_1
    const-string/jumbo p0, "refresh: no contact found"

    .line 332
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 420
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return v10

    .line 335
    :cond_2
    :try_start_3
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-nez v5, :cond_3

    .line 336
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh: set mPrevRefreshTimeInMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    iput v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " contacts. mLastRefreshTimeInMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    .line 342
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contacts."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N,REFR:FOUND:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x12060001

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 348
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    move v0, v10

    .line 350
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/2addr v0, v3

    .line 351
    rem-int/lit16 v2, v0, 0x12c
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    const-wide/16 v5, 0x12c

    .line 355
    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 361
    :catch_0
    :cond_4
    :try_start_5
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 363
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 364
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    .line 365
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    :try_start_6
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-gt v9, v11, :cond_5

    .line 373
    sget-object v9, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refresh: ContactUpdated, rawId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, p1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 377
    :cond_5
    iget v9, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    if-ne v0, v9, :cond_6

    .line 378
    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    .line 381
    :cond_6
    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_1

    .line 386
    :cond_7
    invoke-virtual {p0, v7, v8}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 388
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/options/Contact;

    if-nez v9, :cond_8

    .line 395
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/options/Contact;

    :cond_8
    if-nez v9, :cond_9

    .line 400
    new-instance v9, Lcom/sec/internal/ims/servicemodules/options/Contact;

    invoke-direct {v9, v2, v5}, Lcom/sec/internal/ims/servicemodules/options/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_9
    invoke-virtual {v9, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setId(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setName(Ljava/lang/String;)V

    .line 406
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    if-nez v8, :cond_a

    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    const-string v6, "[- ()]"

    const-string v11, ""

    .line 407
    invoke-virtual {v8, v6, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-direct {v2, v7, v6}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v9, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->insertContactNumberIntoList(Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;)V

    .line 410
    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 367
    :catch_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exception in cur.getString"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 412
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refresh: mLastRawId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_3

    :cond_c
    move v3, v10

    .line 415
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 416
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 418
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->dumpContactList()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 420
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    return v3

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_d

    .line 330
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_4
    throw p0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception p0

    .line 421
    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh: Can not refresh : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x12060002

    const-string p1, "N,REFR:ER"

    .line 422
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v10
.end method

.method private setProjection()[Ljava/lang/String;
    .locals 4

    const-string p0, "data1"

    const-string v0, "data4"

    const-string v1, "contact_id"

    const-string/jumbo v2, "raw_contact_id"

    const-string v3, "display_name"

    .line 294
    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "mx"

    .line 272
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "*67"

    .line 253
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*82"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v2, "parsing for special character"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .line 255
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v1, "#"

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    const-string p2, "mx"

    .line 262
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 263
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/internal/helper/UriUtil;->isValidNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    return-object p1

    :cond_6
    :goto_0
    return-object v0
.end method

.method public dump()V
    .locals 3

    .line 880
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 882
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 883
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method getAllNumber()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getCapabilitiesNumberWithContactId()Ljava/util/List;

    move-result-object v2

    .line 233
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getAllNumbersInContactDB()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "data1"

    const-string v3, "data4"

    .line 588
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 594
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 595
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    .line 597
    :try_start_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getAllNumbersInContactDB: no contact found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 630
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v1

    .line 600
    :cond_1
    :try_start_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllNumbersInContactDB: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " contacts."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    move v4, v3

    .line 605
    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 606
    rem-int/lit16 v6, v4, 0x12c
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_3

    const-wide/16 v6, 0x12c

    .line 610
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 615
    :catch_0
    :cond_3
    :try_start_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 616
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 618
    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 623
    :cond_4
    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 625
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 630
    :cond_5
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_6

    .line 595
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception p0

    .line 631
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllNumbersInContactDB: Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getAndFlushRemovedNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBlockedInitialContactSyncBeforeRegi()Z
    .locals 0

    .line 704
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    return p0
.end method

.method public getContactProviderStatus()I
    .locals 8

    .line 853
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 856
    sget-object p0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "provider_status"

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x1

    const/4 v6, -0x1

    :try_start_0
    new-array v2, p0, [Ljava/lang/String;

    const-string/jumbo p0, "status"

    const/4 v7, 0x0

    aput-object p0, v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 857
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 859
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 857
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    .line 863
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 864
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactProviderStatus: Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_1
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getContactProviderStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public getContacts()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/Contact;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-object v0
.end method

.method public getIsBlockedContactChange()Z
    .locals 0

    .line 696
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    return p0
.end method

.method public getLastRefreshTime(I)J
    .locals 3

    .line 174
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastRefreshTime: mLastRefreshTimeInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "data1"

    const-string v3, "data4"

    .line 181
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "contact_id = ?"

    .line 188
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    .line 190
    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    const/4 p1, 0x0

    .line 191
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 193
    :try_start_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getNumberlistByContactId: no contact found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 216
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    .line 196
    :cond_1
    :try_start_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberlistByContactId: found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 200
    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 201
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 202
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 211
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 216
    :cond_4
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_5

    .line 191
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 217
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberlistByContactId: Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method isAllowedContactSync()Z
    .locals 4

    .line 655
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    .line 656
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 657
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method isAllowedInitialContactSyncBeforeRegi(I)Z
    .locals 1

    const-string/jumbo p0, "rcs_initial_contact_sync_before_regi"

    const/4 v0, 0x1

    .line 670
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isReady(I)Z
    .locals 2

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[- ()]"

    const-string v1, ""

    .line 280
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-eqz v0, :cond_0

    const-string v0, "US"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-nez p0, :cond_1

    .line 287
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "normalize: invalid number."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 290
    :cond_1
    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method onStartContactSync()V
    .locals 3

    .line 758
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onStartContactSync : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-nez v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 761
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->startContactSync()V

    goto :goto_0

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartContactSync : Sync In Progress. Sync will start later, mIsThrottle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method processChangeDuringLimiting(I)V
    .locals 10

    .line 479
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processChangeDuringLimiting: Start."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 489
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setProjection()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "contact_last_updated_timestamp > ?"

    .line 491
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "raw_contact_id"

    .line 494
    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 496
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    const-string/jumbo p0, "processChangeDuringLimiting: no contact found"

    .line 498
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 500
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "processChangeDuringLimiting: found 0, removed"

    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    goto/16 :goto_5

    .line 505
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processChangeDuringLimiting: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 507
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 508
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 512
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processChangeDuringLimiting: rawId > mLastRawId, rawId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mLastRawId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 518
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 519
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 520
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 521
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 523
    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 528
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 530
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/options/Contact;

    if-nez v8, :cond_4

    .line 532
    new-instance v8, Lcom/sec/internal/ims/servicemodules/options/Contact;

    invoke-direct {v8, v2, v4}, Lcom/sec/internal/ims/servicemodules/options/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_4
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setId(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setName(Ljava/lang/String;)V

    .line 537
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    if-nez v7, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const-string v5, "[- ()]"

    const-string v9, ""

    .line 538
    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {v2, v6, v5}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->insertContactNumberIntoList(Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;)V

    .line 541
    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v2, v3

    goto/16 :goto_0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 545
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 546
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processChangeDuringLimiting: Done. contact updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 548
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;->onChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz p1, :cond_9

    .line 553
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_8

    .line 496
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    throw p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 554
    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processChangeDuringLimiting: Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_7
    return-void
.end method

.method processRemovedContact()Z
    .locals 5

    .line 559
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processRemovedContact: Start."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAllNumber()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 564
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAllNumbersInContactDB()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 570
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "processRemovedContact: start remove"

    .line 573
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 575
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    const-string/jumbo v3, "processRemovedContact: No numbers in Contact DB"

    .line 571
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processRemovedContact: Done. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " numbers removed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    :cond_5
    :goto_2
    const-string/jumbo p0, "processRemovedContact: No cached numbers. return"

    .line 565
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public registerListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetRefreshTime(I)V
    .locals 4

    .line 847
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendMessageContactSync()V
    .locals 7

    .line 708
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 709
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageContactSync: block the contact sync."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    goto :goto_0

    .line 712
    :cond_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 714
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 715
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedInitialContactSyncBeforeRegi(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 716
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendMessageContactSync: block the initial contact sync before regi."

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    goto :goto_1

    .line 719
    :cond_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 721
    :goto_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 725
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageContactSync: Try contact sync after 3 sec."

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 727
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setIsBlockedContactChange(Z)V
    .locals 0

    .line 700
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    return-void
.end method

.method public setLastRefreshTime(JI)V
    .locals 3

    .line 169
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastRefreshTime: mLastRefreshTimeInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMno(Lcom/sec/internal/constants/Mno;)V
    .locals 3

    .line 837
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMno: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 840
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_0

    .line 841
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    .line 842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMno: mCountryCode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setThrottleContactSync(ZI)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-void
.end method

.method public start()V
    .locals 5

    .line 128
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    .line 130
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BackgroundHandler"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 131
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 132
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 134
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: Contact observer for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    invoke-static {v0, v2, v1, v3, p0}, Lcom/sec/ims/extensions/Extensions$ContentResolver;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method startContactSync()V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->startContactSync(Lcom/sec/internal/constants/Mno;)V

    return-void
.end method

.method startContactSync(Lcom/sec/internal/constants/Mno;)V
    .locals 3

    .line 769
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startContactSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 771
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 774
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 6

    .line 148
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 157
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 158
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

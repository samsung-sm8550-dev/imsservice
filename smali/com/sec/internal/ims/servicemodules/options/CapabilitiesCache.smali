.class public Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
.super Ljava/lang/Object;
.source "CapabilitiesCache.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilitiesCache"

.field static final MaxCacheSize:I = 0x2710

.field private static final PERSIST_MAX_SIZE:I = 0x64

.field private static final PERSIST_TIMEOUT:I = 0x1f4


# instance fields
.field final mCapabilitiesList:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

.field mCapabilityStorageHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field mIsPersistPosted:Z

.field private mPersistTimeout:Z

.field private mPhoneId:I

.field private mThread:Landroid/os/HandlerThread;

.field mUriListToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-g7gO9T8CxnTWX6AbbtekqBZc4E(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/ims/options/Capabilities;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->lambda$persistToContactDB$4(Lcom/sec/ims/options/Capabilities;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JVeoQjHc7vvMNge9sUNoAQGYVIY(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->lambda$tryPersist$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$KDdYzZwS7CLPgqIyp9MRNPChOzw(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->lambda$loadCapabilityStorage$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$PebhuszOucK_3vMpZ8XbAdaX0N8(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->lambda$resetCapabilityStorage$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ReIeXP5yr0hgw097Z8gwcELFOIs(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->lambda$sendRCSCInfoToHQM$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$gcvB8lccySgpdDaY3aScVqiFN8Y(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->lambda$deleteNonRcsDataFromContactDB$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$rzjZU-WnTW40LhpYliCJbKjhNHk(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->lambda$tryPersist$3(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CapabilityStorage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mIsPersistPosted:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mContext:Landroid/content/Context;

    .line 67
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    .line 68
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->initCapabilityStorage()V

    return-void
.end method

.method private getAmountCapabilities()I
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getAmountCapabilities()I

    move-result p0

    return p0
.end method

.method private getAmountRcsCapabilities()I
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getAmountRcsCapabilities()I

    move-result p0

    return p0
.end method

.method public static getMaxCacheSize()I
    .locals 1

    .line 0
    const/16 v0, 0x2710

    return v0
.end method

.method private hasCapabilitiesCache(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method private initCapabilityStorage()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    return-void
.end method

.method private synthetic lambda$deleteNonRcsDataFromContactDB$5()V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteNonRcsDataFromContactDB()V

    return-void
.end method

.method private synthetic lambda$loadCapabilityStorage$0()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->load()V

    return-void
.end method

.method private synthetic lambda$persistToContactDB$4(Lcom/sec/ims/options/Capabilities;Z)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V

    return-void
.end method

.method private synthetic lambda$resetCapabilityStorage$1()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->reset()V

    return-void
.end method

.method private synthetic lambda$sendRCSCInfoToHQM$6()V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getAmountCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NCAP"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getAmountRcsCapabilities()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NRCS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mContext:Landroid/content/Context;

    const-string v2, "RCSC"

    invoke-static {v1, p0, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private synthetic lambda$tryPersist$2()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: try remainder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilitiesCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryPersist$3(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 92
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mIsPersistPosted:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mIsPersistPosted:Z

    .line 100
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", timeout = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CapabilitiesCache"

    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mIsPersistPosted:Z

    .line 95
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPersistTimeout:Z

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->persist()V

    :cond_2
    :goto_1
    return-void
.end method

.method private resetCapabilityStorage()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/ims/options/Capabilities;)V
    .locals 5

    const-string v0, "CapabilitiesCache"

    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 156
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {p0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string p0, "add: null CapexInfo."

    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clear()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 319
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->resetCapabilityStorage()V

    return-void
.end method

.method public deleteNonRcsDataFromContactDB()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump()V
    .locals 3

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilitiesCache"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sizeInUse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-boolean v0, Lcom/sec/ims/extensions/Extensions$Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    .line 352
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public get(I)Lcom/sec/ims/options/Capabilities;
    .locals 6

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 279
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get: found. Id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilitiesCache"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->get(J)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->hasCapabilitiesCache(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: found. Uri "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilitiesCache"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getAllCapabilities()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getAllCapabilities()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesCache()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesForPolling(IJJJZ)Ljava/util/TreeMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJZ)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 310
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getCapabilitiesForPolling(IJJJZ)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilitiesNumberWithContactId()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorage:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getCapabilitiesNumberWithContactId()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrashedUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 337
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUpdatedUriList()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 327
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 328
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAvailable(J)Z
    .locals 2

    .line 272
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadCapabilityStorage()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public persistCachedUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 265
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistCachedUri: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilitiesCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 267
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    :cond_0
    return-void
.end method

.method persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/ims/options/Capabilities;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public remove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilitiesCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 167
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    :cond_2
    return-void
.end method

.method public sendRCSCInfoToHQM()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilitiesCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilitiesList:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method tryPersist(Z)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mCapabilityStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public update(Lcom/sec/ims/util/ImsUri;JJLjava/lang/String;JLjava/util/Date;Ljava/util/List;Ljava/lang/String;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JJ",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    const/4 v15, 0x0

    if-nez v8, :cond_0

    return v15

    .line 180
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    const-string v7, "CapabilitiesCache"

    if-nez v1, :cond_1

    .line 184
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: Add new capabilities from Unknown Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    new-instance v5, Lcom/sec/ims/options/Capabilities;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v15, v5

    move-wide/from16 v5, v16

    move-object v13, v7

    move-object/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 186
    invoke-virtual {v0, v15}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    move-object v1, v15

    goto :goto_0

    :cond_1
    move-object v13, v7

    .line 197
    :goto_0
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update: feature changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v2

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 199
    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    cmp-long v2, v9, v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v3, p9

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v3, p9

    .line 201
    :goto_2
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    .line 202
    invoke-virtual {v1, v8}, Lcom/sec/ims/options/Capabilities;->setUri(Lcom/sec/ims/util/ImsUri;)V

    .line 203
    invoke-virtual {v1, v9, v10}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    move-wide/from16 v3, p4

    .line 204
    invoke-virtual {v1, v3, v4}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    .line 205
    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->isAvailable(J)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    move-object/from16 v3, p6

    .line 206
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setPidf(Ljava/lang/String;)V

    .line 207
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    if-eqz v14, :cond_4

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, ","

    invoke-virtual {v14, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setExtFeature(Ljava/util/List;)V

    .line 214
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update: setting last seen in capabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v1, v11, v12}, Lcom/sec/ims/options/Capabilities;->setLastSeen(J)V

    move-object/from16 v3, p10

    move-object v4, v13

    if-eqz v3, :cond_5

    .line 217
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setPAssertedId(Ljava/util/List;)V

    .line 220
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 221
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 222
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    .line 223
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    .line 224
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 225
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const/4 v3, 0x0

    .line 226
    invoke-virtual {v1, v3}, Lcom/sec/ims/options/Capabilities;->setLegacyLatching(Z)V

    .line 227
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    const-string/jumbo v6, "update: Legacy Latching clear !!"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 231
    :goto_3
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mUriListToUpdate:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v8, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->tryPersist(Z)V

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V

    return v2
.end method

.method public updateContactInfo(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/ims/options/Capabilities;)V
    .locals 9

    const-string v0, "CapabilitiesCache"

    if-eqz p6, :cond_0

    .line 243
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateContactInfo: update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    invoke-virtual {p6, p2, p3, p4}, Lcom/sec/ims/options/Capabilities;->updateCapabilities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_0
    iget p6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContactInfo: new capabilities update for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p6, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    new-instance p6, Lcom/sec/ims/options/Capabilities;

    const-wide/16 v6, -0x1

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 249
    invoke-virtual {p0, p6}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    .line 252
    :goto_0
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p6, p2}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    .line 253
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->mPhoneId:I

    invoke-virtual {p6, p2}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    if-eqz p5, :cond_1

    .line 256
    invoke-virtual {p0, p1, p6}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistCachedUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V

    :cond_1
    const/4 p1, 0x0

    .line 259
    invoke-virtual {p0, p6, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V

    return-void
.end method

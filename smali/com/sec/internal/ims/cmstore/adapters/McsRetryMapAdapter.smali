.class public Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;
.super Ljava/lang/Object;
.source "McsRetryMapAdapter.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private final transient mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/utils/RetryParam;",
            ">;"
        }
    .end annotation
.end field

.field private messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    .line 18
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p0, "McsRetryMapAdapter Constructor"

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized checkAndIncreaseRetry(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->increaseRetryCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p2, "checkAndIncreaseRetry, Already exhausted Max Counts"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return v0

    .line 41
    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 33
    :cond_2
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p2, "checkAndIncreaseRetry, param or mMap is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRetryHistory()V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string v1, "clearRetryCounter: retry history cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRetryCount(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 121
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRetryParam(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/utils/RetryParam;
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized increaseRetryCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 5

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 57
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    .line 59
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increaseRetryCount, Already Exists in Map with retried count :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 61
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    const-string p2, "increaseRetryCount, removed key retry limit reached "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return v2

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->setRetryCount(I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "increaseRetryCount, New to Map, added entry for request and errorCode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    invoke-direct {v1, p1, v3, p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)V

    .line 69
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    return v3

    .line 73
    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initRetryMapAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    monitor-enter p0

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAlreadyInRetry(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isAlreadyInRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 50
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Z
    .locals 3

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryApi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time Exhausted, Last Retry Val: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1, p2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 110
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retryLastApi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 114
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

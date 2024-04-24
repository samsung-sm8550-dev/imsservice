.class public Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
.super Ljava/lang/Object;
.source "RetryStackAdapter.java"


# static fields
.field private static final sInstance:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;


# instance fields
.field public TAG:Ljava/lang/String;

.field private mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    .line 30
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
    .locals 1

    .line 56
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    return-object v0
.end method

.method private push(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryStack()V

    return-void
.end method

.method private saveRetryStack()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "save retryStack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 139
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 141
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRetryStackData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 62
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRetryHistory()V
    .locals 2

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    const-string v1, "clearRetryCounter: retry history cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 121
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryStack()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const-string/jumbo v1, "retry_total_counter"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const-string v1, "last retry time"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initRetryStackAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    monitor-enter p0

    .line 186
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    .line 189
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRetryStackData()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 192
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 193
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 194
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Stack;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;
    :try_end_1
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    .line 206
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z
    .locals 3

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTotalRetryCounter()I

    move-result p1

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMaxRetryCounter()I

    move-result p0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 1

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 106
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryStack()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-object v0

    .line 102
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryApi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1, p2, p0, p3, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method public declared-synchronized retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z
    .locals 4

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retryLastApi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0, p1, v2, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 182
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveRetryLastFailedTime(J)V
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastRetryTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->mStack:Ljava/util/Stack;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;

    if-nez v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retried: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 84
    monitor-exit p0

    return v0

    .line 86
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->push(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 79
    :cond_2
    :goto_0
    monitor-exit p0

    return v0
.end method

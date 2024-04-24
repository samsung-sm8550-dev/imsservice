.class public Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;
.super Lcom/sec/internal/helper/httpclient/HttpController;
.source "CmsHttpController.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpController;-><init>()V

    .line 24
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    return-void
.end method


# virtual methods
.method public getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    return-object p0
.end method

.method protected getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/OkHttpClient;
    .locals 8

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    const-string v1, "getOkHttpClient"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->sOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/32 v5, 0x7fffffff

    if-ltz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 64
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 67
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 68
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getRetryOnConnectionFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 70
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getTrustAllCertMangers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 71
    aget-object v2, v1, v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 72
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://wsg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    if-eqz v3, :cond_5

    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 76
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->isReuseConnection()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 78
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getConnectionSpecs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 79
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 81
    :cond_6
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 82
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->configConnectionSpec()Lokhttp3/ConnectionSpec;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 83
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 74
    :cond_7
    :goto_0
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseProxy()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 92
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 95
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->mCookieJar:Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 97
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 87
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->TAG:Ljava/lang/String;

    const-string p1, "Could not load keystore "

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;
.source "HttpAdapterVzw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .line 74
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "close httpUrlConnection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    const/4 p0, 0x1

    return p0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 7

    .line 66
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "connect httpUrlConnection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->tryToConnectHttpUrlConnection()V

    .line 68
    new-instance v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget-object v3, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v3

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget-object v4, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResStatusMessage(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget-object v5, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v5

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 69
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[B)V

    return-object v0
.end method

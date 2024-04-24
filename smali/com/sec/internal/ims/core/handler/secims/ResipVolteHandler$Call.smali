.class Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Call"
.end annotation


# instance fields
.field isConference:Z

.field mCallType:I

.field mLock:Ljava/util/concurrent/CountDownLatch;

.field mParam:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

.field mPeer:Lcom/sec/ims/util/NameAddr;

.field mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

.field mSessionId:I

.field mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, -0x1

    .line 235
    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    .line 236
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 241
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 242
    new-instance p1, Lcom/sec/ims/util/NameAddr;

    invoke-direct {p1, p3, p2}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    .line 243
    iput v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V
    .locals 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mLock:Ljava/util/concurrent/CountDownLatch;

    .line 236
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mResponse:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->isConference:Z

    .line 247
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mUa:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 248
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mPeer:Lcom/sec/ims/util/NameAddr;

    const/4 p1, -0x1

    .line 249
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$Call;->mSessionId:I

    return-void
.end method

.class final Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;
.super Ljava/lang/Object;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LastSentDeliveryAck"
.end annotation


# instance fields
.field public mNetworkType:I

.field public mPdu:[B

.field public mRetryCount:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1463
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    .line 1464
    iput p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    const/4 p1, 0x0

    .line 1465
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mRetryCount:I

    return-void
.end method

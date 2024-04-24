.class Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;
.super Ljava/lang/Object;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsSmsTracker"
.end annotation


# instance fields
.field public mContentType:Ljava/lang/String;

.field private final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDestAddress:Ljava/lang/String;

.field public mMessageId:I

.field public mPdu:[B

.field public mPhoneId:I

.field public mRetryCount:I

.field public mSentComplete:Z

.field public mStatusReportRequested:Z

.field public mToken:I


# direct methods
.method private constructor <init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;III[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1427
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    .line 1428
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mData:Ljava/util/HashMap;

    .line 1429
    iput p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 1430
    iput p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1431
    iput p5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    .line 1432
    iput-object p6, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPdu:[B

    .line 1433
    iput-object p7, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1434
    iput-object p8, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    .line 1435
    iput-boolean p9, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    .line 1436
    iput-boolean p10, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1452
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mData:Ljava/util/HashMap;

    return-object p0
.end method

.method public getMessageId()I
    .locals 0

    .line 1448
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    return p0
.end method

.method public getRetryCount()I
    .locals 0

    .line 1444
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    return p0
.end method

.method public getToken()I
    .locals 0

    .line 1440
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    return p0
.end method

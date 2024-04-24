.class Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;
.super Ljava/lang/Object;
.source "OptionsRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OptionsRequest"
.end annotation


# static fields
.field static final DONE:I = 0x2

.field static final FAILED:I = 0x3

.field static final INIT:I = 0x0

.field static final REQUESTED:I = 0x1


# instance fields
.field private errorResponseCode:I

.field private isIncoming:Z

.field private lastSeen:I

.field private mExtFeature:Ljava/lang/String;

.field private mMyCaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyFeatures:J

.field private mPhoneId:I

.field private mState:I

.field private mTimestamp:Ljava/util/Date;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private reason:Ljava/lang/String;

.field private txId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)V
    .locals 2

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 465
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 473
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 474
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 475
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 476
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 477
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 478
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 479
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 465
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 483
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 484
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 485
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    .line 486
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 487
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 488
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 489
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 490
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    const/4 v1, 0x0

    .line 465
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    .line 494
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 495
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    const-wide/16 v2, 0x0

    .line 496
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    .line 497
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    .line 498
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    const/4 p1, -0x1

    .line 499
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    .line 500
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    .line 501
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getErrorResponseCode()I
    .locals 0

    .line 573
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->errorResponseCode:I

    return p0
.end method

.method getExtFeature()Ljava/lang/String;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-object p0
.end method

.method getLastSeen()I
    .locals 0

    .line 553
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    return p0
.end method

.method getMyCaps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyCaps:Ljava/util/List;

    return-object p0
.end method

.method getMyFeatures()J
    .locals 2

    .line 521
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mMyFeatures:J

    return-wide v0
.end method

.method getPhoneId()I
    .locals 0

    .line 517
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mPhoneId:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->reason:Ljava/lang/String;

    return-object p0
.end method

.method getState()I
    .locals 0

    .line 509
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    return p0
.end method

.method getTimestamp()Ljava/util/Date;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mTimestamp:Ljava/util/Date;

    return-object p0
.end method

.method getTxId()Ljava/lang/String;
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    return-object p0
.end method

.method getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method isIncoming()Z
    .locals 0

    .line 529
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    return p0
.end method

.method public setErrorResponseCode(I)V
    .locals 0

    .line 577
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->errorResponseCode:I

    return-void
.end method

.method setExtFeature(Ljava/lang/String;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mExtFeature:Ljava/lang/String;

    return-void
.end method

.method setIncoming(Z)V
    .locals 0

    .line 541
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->isIncoming:Z

    return-void
.end method

.method setLastSeen(I)V
    .locals 0

    .line 557
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->lastSeen:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->reason:Ljava/lang/String;

    return-void
.end method

.method setState(I)V
    .locals 0

    .line 505
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->mState:I

    return-void
.end method

.method setTxId(Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$OptionsRequest;->txId:Ljava/lang/String;

    return-void
.end method

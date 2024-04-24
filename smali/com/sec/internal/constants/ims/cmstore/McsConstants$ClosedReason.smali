.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$ClosedReason;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClosedReason"
.end annotation


# static fields
.field public static final ALL_PARTICIPANTS_LEFT:I = 0x1

.field public static final LEFT_BY_SERVER:I = 0x2

.field public static final REASON_DEFAULT:I = -0x1

.field public static final SD_LEAVE_CHAT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

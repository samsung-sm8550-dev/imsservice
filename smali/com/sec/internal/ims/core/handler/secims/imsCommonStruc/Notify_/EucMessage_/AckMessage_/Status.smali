.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage_/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final ERROR:I = 0x1

.field public static final OK:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "OK"

    const-string v1, "ERROR"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage_/Status;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage_/Status;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

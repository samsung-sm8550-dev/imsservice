.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotificationStatus;
.super Ljava/lang/Object;
.source "NotificationStatus.java"


# static fields
.field public static final NOTIFICATION_CANCELED:I = 0x4

.field public static final NOTIFICATION_DELIVERED:I = 0x0

.field public static final NOTIFICATION_DISPLAYED:I = 0x1

.field public static final NOTIFICATION_INTERWORKING_MMS:I = 0x3

.field public static final NOTIFICATION_INTERWORKING_SMS:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "NOTIFICATION_INTERWORKING_MMS"

    const-string v1, "NOTIFICATION_CANCELED"

    const-string v2, "NOTIFICATION_DELIVERED"

    const-string v3, "NOTIFICATION_DISPLAYED"

    const-string v4, "NOTIFICATION_INTERWORKING_SMS"

    .line 13
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotificationStatus;->names:[Ljava/lang/String;

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

    .line 15
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/NotificationStatus;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

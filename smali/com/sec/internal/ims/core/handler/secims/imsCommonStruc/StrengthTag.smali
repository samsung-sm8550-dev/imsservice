.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/StrengthTag;
.super Ljava/lang/Object;
.source "StrengthTag.java"


# static fields
.field public static final MANDATORY:I = 0x0

.field public static final OPTIONAL:I = 0x1

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MANDATORY"

    const-string v1, "OPTIONAL"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/StrengthTag;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/StrengthTag;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

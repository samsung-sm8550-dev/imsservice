.class public final enum Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;
.super Ljava/lang/Enum;
.source "ImSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

.field public static final enum NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

.field public static final enum SNF_NOTIFICATION_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

.field public static final enum SNF_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;
    .locals 3

    .line 95
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_NOTIFICATION_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->NORMAL:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    .line 97
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    const-string v1, "SNF_SESSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    .line 98
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    const-string v1, "SNF_NOTIFICATION_SESSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->SNF_NOTIFICATION_SESSION:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->$values()[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;
    .locals 1

    .line 95
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;
    .locals 1

    .line 95
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$SessionType;

    return-object v0
.end method

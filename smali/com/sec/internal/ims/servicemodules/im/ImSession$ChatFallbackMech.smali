.class public final enum Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;
.super Ljava/lang/Enum;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ChatFallbackMech"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field public static final enum MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field public static final enum NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;
    .locals 3

    .line 2705
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2706
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2707
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    const-string v1, "MESSAGE_REVOCATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2708
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    const-string v1, "NETWORK_INTERWORKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2705
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->$values()[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2705
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;
    .locals 1

    .line 2705
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;
    .locals 1

    .line 2705
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    return-object v0
.end method

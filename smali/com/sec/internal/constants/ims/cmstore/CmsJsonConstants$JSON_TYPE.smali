.class public final enum Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;
.super Ljava/lang/Enum;
.source "CmsJsonConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JSON_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

.field public static final enum CHAT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

.field public static final enum DEFAULT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

.field public static final enum IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;
    .locals 3

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->CHAT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    const-string v1, "CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->CHAT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    .line 21
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    const-string v1, "IMDN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    const-string v1, "DEFAULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    .line 19
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->$values()[Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    return-object v0
.end method

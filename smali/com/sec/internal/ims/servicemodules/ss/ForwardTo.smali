.class Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;
.super Ljava/lang/Object;
.source "UtConfigData.java"


# instance fields
.field fwdElm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;",
            ">;"
        }
    .end annotation
.end field

.field target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 130
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    return-void
.end method

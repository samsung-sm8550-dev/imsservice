.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$2:Z

    iput p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$2:Z

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda16;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->$r8$lambda$-wA3DiJkQQNPfZLBv7PByHF62es(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Ljava/lang/String;ZI)V

    return-void
.end method

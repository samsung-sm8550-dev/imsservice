.class public final synthetic Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda2;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda2;->f$0:I

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->$r8$lambda$9PZNE4qVhGxqIo-5_cnqMdfHHko(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)V

    return-void
.end method

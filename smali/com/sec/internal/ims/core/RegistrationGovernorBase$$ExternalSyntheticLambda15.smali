.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->$r8$lambda$VpOsEnYir4ZIDoNjPEF8e8_qDtI(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

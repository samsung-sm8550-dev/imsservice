.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->$r8$lambda$olMBm16rFSRo-Mbw_opQyyzDB30(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/RegisterTask;)I

    move-result p0

    return p0
.end method

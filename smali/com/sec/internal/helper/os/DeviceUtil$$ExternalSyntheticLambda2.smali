.class public final synthetic Lcom/sec/internal/helper/os/DeviceUtil$$ExternalSyntheticLambda2;
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
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/sec/internal/helper/os/DeviceUtil;->$r8$lambda$ZTPkMZJRWcjB8-164vJAx2-tRjQ(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

.field public final synthetic f$1:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    iput-object p2, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda2;->f$1:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda2;->f$1:Landroid/os/PersistableBundle;

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->$r8$lambda$LnenmnrgRO0wSw3R_fmpvwkf7mE(Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V

    return-void
.end method

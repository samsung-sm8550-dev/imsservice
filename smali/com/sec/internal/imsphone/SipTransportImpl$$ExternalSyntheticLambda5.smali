.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/SipMsg;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/SipMsg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$VO2lOseUh-Ni8vItkLFoLmKUFko(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda29;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipMsg;->$r8$lambda$QqQn_omtOCcTEXmj9yo4HIbqHew(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

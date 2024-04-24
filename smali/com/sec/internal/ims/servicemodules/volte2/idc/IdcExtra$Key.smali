.class public Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Key;
.super Ljava/lang/Object;
.source "IdcExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field public static final REQ_ID:Ljava/lang/String; = "req_id"

.field public static final SDP:Ljava/lang/String; = "sdp"

.field public static final SHOULD_RETRY:Ljava/lang/String; = "should_retry"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

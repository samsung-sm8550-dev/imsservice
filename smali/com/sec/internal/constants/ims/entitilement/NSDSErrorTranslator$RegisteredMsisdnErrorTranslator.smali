.class Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$RegisteredMsisdnErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegisteredMsisdnErrorTranslator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(I)I
    .locals 2

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_0

    const/16 v0, 0x405

    if-eq p0, v0, :cond_0

    const/16 v0, 0x425

    if-eq p0, v0, :cond_0

    const/16 v0, 0x457

    if-eq p0, v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not translate nsds error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegisteredMsisdnErrorTranslator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x44c

    :goto_0
    return p0
.end method

.class public Lcom/sec/internal/ims/config/exception/InvalidHeaderException;
.super Ljava/lang/Exception;
.source "InvalidHeaderException.java"


# static fields
.field private static final serialVersionUID:J = 0x7438fe91297d5f30L


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;->message:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;->message:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sec/internal/ims/config/exception/InvalidHeaderException;->message:Ljava/lang/String;

    return-object p0
.end method

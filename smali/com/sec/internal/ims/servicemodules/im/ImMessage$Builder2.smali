.class Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;
.super Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;
.source "ImMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder<",
        "Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;-><init>()V

    return-void
.end method


# virtual methods
.method protected self()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;
    .locals 0

    .line 0
    return-object p0
.end method

.method protected bridge synthetic self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;->self()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder2;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/sec/internal/omanetapi/nms/data/Users$User;
.super Ljava/lang/Object;
.source "Users.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/omanetapi/nms/data/Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;
    }
.end annotation


# instance fields
.field public mDisplayText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display-text"
    .end annotation
.end field

.field public mEndpoint:[Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpoint"
    .end annotation
.end field

.field public mEntity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entity"
    .end annotation
.end field

.field public mOwn:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "yourown"
    .end annotation
.end field

.field public mRole:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "roles"
    .end annotation
.end field

.field public mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

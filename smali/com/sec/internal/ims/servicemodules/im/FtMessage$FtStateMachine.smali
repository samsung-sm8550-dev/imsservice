.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
.super Lcom/sec/internal/helper/StateMachine;
.source "FtMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "FtStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .line 993
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->this$0:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 994
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected abstract getState(Ljava/lang/Integer;)Lcom/sec/internal/helper/State;
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 998
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getStateId()I
.end method

.method protected abstract initState(Lcom/sec/internal/helper/State;)V
.end method

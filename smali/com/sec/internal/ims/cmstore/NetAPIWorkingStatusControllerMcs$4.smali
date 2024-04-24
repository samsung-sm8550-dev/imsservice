.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;
.super Landroid/content/BroadcastReceiver;
.source "NetAPIWorkingStatusControllerMcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMcsFcmInstanceIdServiceReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN"

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getMcsFcmInstanceIdServiceReceiver: onReceive: INTENT_REFRESH_FCM_REGISTRATION_TOKEN"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)I

    move-result p2

    const-string v0, "Refresh FCM registration token"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",NC:REG_TK_REF"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, -0x6ffdfffe

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;
.super Landroid/content/BroadcastReceiver;
.source "NSDSModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->registerNsdsAppFlowReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 405
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: app flow result arrived "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 408
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlotId isn\'t matched about intent"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mscheduleNsdsAppFlowRetryIf(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

    .line 415
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "completed"

    const-string v3, "activate_after_oos"

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const-string v5, "com.sec.vsim.ericssonnsds.CHECK_REG_STATE"

    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    const-string/jumbo v1, "sim_deactivation_cause"

    .line 417
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fputmInvalidFingerPrintDate(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/util/Date;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.samsung.nsds.action.E911_AID_INFO_RECEIVED"

    .line 422
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mscheduleE911CheckTimer(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmBaseFlowImpl(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "com.samsung.nsds.action.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED"

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mhandleResultAfterEntitlementCheck(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "event_list"

    .line 430
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 431
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: entitlement push notification arrived "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const-string v4, "ENTMT_UPDATE"

    .line 433
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 434
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    goto :goto_0

    :cond_4
    const-string v4, "E911_ADDR_UPDATE"

    .line 435
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 436
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->queueEntitlementCheck(II)V

    goto :goto_0

    :cond_5
    const-string v0, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 439
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mhandleResultAfterConfigRetrieval(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/content/Intent;)V

    .line 443
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 445
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmBaseFlowImpl(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 447
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 448
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ATT_AutoOn] onReceive: start VoWIFI Toggle AutoOn"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const-string/jumbo v0, "retry_count"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fputmWfcAutoOnRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)V

    .line 450
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->handleVoWifToggleOnEvent()V

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$5;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmWfcAutoOnRetryCount(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mscheduleRetryWFCAutoOnTimer(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;I)V

    :cond_7
    return-void
.end method

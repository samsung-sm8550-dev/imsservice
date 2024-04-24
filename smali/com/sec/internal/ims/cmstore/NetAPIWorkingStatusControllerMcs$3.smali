.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;
.super Landroid/content/BroadcastReceiver;
.source "NetAPIWorkingStatusControllerMcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMcsFcmIntentServiceReceiver()Landroid/content/BroadcastReceiver;
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

    .line 268
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p1, "phoneId"

    const/4 v0, -0x1

    .line 271
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMcsFcmIntentServiceReceiver: onReceive: phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN"

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",NC:REG_TK_RCV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffdffff

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string/jumbo v0, "senderId"

    .line 276
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getFcmSenderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fcmRegistrationToken"

    .line 278
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fcmRegistrationTokenRefreshed"

    const/4 v4, 0x0

    .line 279
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v4, v5

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive FCM registration token, isValidRegi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p1, v6}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMcsFcmIntentServiceReceiver: onReceive: senderId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cursenderId: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " token: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isFcmRegistrationTokenRefreshed: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " oldFcmTokenEmpty: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmOldFcmToken(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 287
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fputmOldFcmToken(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {p0, v2, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->sendFcmRegistrationSuccess(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getFcmRetryCount()I

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMcsFcmIntentServiceReceiver: onReceive: EVENT_RECEIVE_FCM_REGISTRATION_TOKEN failure retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x3

    if-ge v0, p1, :cond_2

    .line 294
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveFcmRetryCount(I)V

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    const/16 p1, 0xe

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 297
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",NC:REG_TK_FAIL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, -0x6ffdfff8

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmOldFcmToken(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->-$$Nest$fgetmOldFcmToken(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->sendFcmRegistrationSuccess(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

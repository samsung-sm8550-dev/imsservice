.class Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;
.super Landroid/os/Handler;
.source "SmsServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Landroid/os/Looper;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 335
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message timeout - what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", obj : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mRetransCount :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmRetransCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmSmsLogger(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_TIMEOUT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "the pending message doesn\'t exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 344
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 347
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 348
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fputMAX_RETRANS_COUNT(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)V

    .line 351
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    .line 352
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/vnd.3gpp.sms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 353
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v3

    :cond_4
    move v8, v3

    .line 355
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " tpMR = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v4, :cond_c

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    goto/16 :goto_2

    .line 384
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmRetransCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result p1

    if-ge p1, v4, :cond_d

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$mretryToSendMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto/16 :goto_2

    .line 367
    :cond_6
    sget-object p1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v2, p1, :cond_7

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmRetransCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result p1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetMAX_RETRANS_COUNT(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v3

    if-lt p1, v3, :cond_a

    .line 368
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 372
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v4, "3"

    const/16 v5, 0x198

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_2

    .line 369
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v4, "3"

    const/16 v5, 0x194

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 370
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmRetransCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result p0

    move v4, v8

    move v8, p0

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$monReceiveSMSAckInternal(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V

    goto :goto_2

    .line 374
    :cond_a
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmRetransCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result p1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetMAX_RETRANS_COUNT_SPR(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v2

    if-lt p1, v2, :cond_b

    .line 375
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v4, "3"

    const/16 v5, 0x321

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 376
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    .line 377
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 p0, -0x1

    move v4, v8

    move v8, p0

    .line 376
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$monReceiveSMSAckInternal(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V

    goto :goto_2

    .line 379
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$mretryToSendMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_2

    .line 358
    :cond_c
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result p1

    const/16 v2, 0x66

    if-ne p1, v2, :cond_d

    .line 359
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v4, "3"

    const/4 v5, 0x0

    const-string v6, "FF"

    const/4 v7, 0x1

    move v3, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 361
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    const/16 v5, 0x2713

    .line 362
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 p0, -0x1

    move v4, v8

    move v8, p0

    .line 361
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$monReceiveSMSAckInternal(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V

    :cond_d
    :goto_2
    return-void
.end method

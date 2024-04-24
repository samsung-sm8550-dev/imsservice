.class Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;
.super Ljava/lang/Object;
.source "CloudMessageBufferSchedulingHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->registerNmsEventListPushListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public largePollingPushNotification(Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;)V
    .locals 0

    .line 0
    return-void
.end method

.method public nmsEventListPushNotification(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)V
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nmsEventListPushNotification"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v0

    .line 93
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v6, v0, v4

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 96
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->isEmpty()Z

    move-result v4

    .line 99
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v5

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 99
    invoke-virtual {v5, v2, p1, v3, v0}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->insertContainer(Ljava/lang/Long;Lcom/sec/internal/omanetapi/nms/data/NmsEventList;ILjava/lang/Long;)V

    goto/16 :goto_1

    :cond_0
    if-nez v6, :cond_3

    .line 103
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 106
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 107
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMcsNmsEventList(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 111
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v0

    .line 112
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 113
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->peekFirstIndex()J

    move-result-wide v2

    add-long v6, v0, v4

    cmp-long p1, v2, v6

    if-nez p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->popFirstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "handleNmsEvent: firstEntry is null"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    .line 122
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    .line 123
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 124
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionRestartToken(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionIndex(J)V

    .line 126
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->RECEIVE_NOTIFICATION:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 127
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMcsNmsEventList(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 129
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 130
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete: Process nmsEventList from the NotificationListContainer, savedIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " currIndex:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionIndex()J

    move-result-wide v0

    .line 132
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "NotificationListContainer is empty, all the disordered notifications have been proceeded, remove UPDATE_SUBSCRIPTION_CHANNEL_DELAY"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->removeUpdateSubscriptionChannelEvent()V

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->updateDelayedSubscriptionChannel()V

    :cond_4
    return-void
.end method

.method public syncBlockfilterPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncConfigPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncContactPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncMessagePushNotification(Ljava/lang/String;I)V
    .locals 5

    .line 158
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v0

    .line 160
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncMessagePushNotification  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " initStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "init"

    .line 162
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "initial sync not complete yet, no need to upload data"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_UPLOAD_PENDING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p2, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->updateLineUploadStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    return-void

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    :cond_1
    return-void
.end method

.method public syncStatusPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

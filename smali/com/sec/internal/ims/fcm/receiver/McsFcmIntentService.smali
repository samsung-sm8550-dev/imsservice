.class public Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;
.super Landroid/app/IntentService;
.source "McsFcmIntentService.java"


# static fields
.field private static final FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "fcmRegistrationToken"

.field private static final FCM_REGISTRATION_TOKEN_REFRESHED:Ljava/lang/String; = "fcmRegistrationTokenRefreshed"

.field private static final INTENT_RECEIVE_FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final SENDER_ID:Ljava/lang/String; = "senderId"

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private sendFcmRegistrationToken(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phoneId"

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "senderId"

    .line 54
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fcmRegistrationToken"

    .line 55
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "fcmRegistrationTokenRefreshed"

    .line 56
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    sget-object p1, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "sendFcmRegistrationToken: sendBroadcast INTENT_RECEIVE_FCM_REGISTRATION_TOKEN"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .line 30
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "phoneId"

    const/4 v2, -0x1

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "senderId"

    .line 32
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fcmRegistrationTokenRefreshed"

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 34
    sget-object v3, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent: phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " senderId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isFcmRegistrationTokenRefreshed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 38
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v4

    const-string v5, "FCM"

    invoke-virtual {v4, v2, v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHandleIntent: fcmRegistrationToken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, "null"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, v1, v2, v4, p1}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->sendFcmRegistrationToken(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 44
    :try_start_2
    sget-object v4, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHandleIntent: fail to get fcmRegistrationToken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0, v1, v2, v3, p1}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->sendFcmRegistrationToken(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 47
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

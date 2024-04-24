.class public final Lcom/sec/internal/imsphone/ImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;,
        Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;,
        Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_PDU_IMS:Ljava/lang/String; = "com.sec.internal.google.ImsSmsImpl.PduTest"

.field private static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final EVENT_SMS_DELIVER_REPORT_RETRY:I = 0x4

.field private static final EVENT_SMS_NO_RESPONSE_TIMEOUT:I = 0x2

.field private static final EVENT_SMS_RETRY:I = 0x1

.field private static final EVENT_SMS_SEND_DELAYED_MESSAGE:I = 0x3

.field private static final GSM_NETWORK_TYPE:I = 0x2

.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final LOG_TAG_HEAD:Ljava/lang/String; = "ImsSmsImpl"

.field private static final MAP_KEY_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field private static final MAP_KEY_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field private static final MAP_KEY_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final MAP_KEY_STATUS_REPORT:Ljava/lang/String; = "statusReport"

.field private static final MAP_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final MAX_SEND_RETRIES_1:I = 0x1

.field private static final MAX_SEND_RETRIES_2:I = 0x2

.field private static final MAX_SEND_RETRIES_4:I = 0x4

.field private static final PDU_TYPE_RECEIVED_CDMA_SMS:I = 0x1

.field private static final PDU_TYPE_RECEIVED_GSM_SMS:I = 0x0

.field private static final RIL_CODE_RP_ERROR:I = 0x8000

.field private static final RIL_CODE_RP_ERROR_END:I = 0x80ff

.field private static final RP_CAUSE_CONGESTION:I = 0x2a

.field private static final RP_CAUSE_DESTINATION_OUT_OF_ORDER:I = 0x1b

.field private static final RP_CAUSE_MEMORY_CAP_EXCEEDED:I = 0x16

.field private static final RP_CAUSE_NETWORK_OUT_OF_ORDER:I = 0x26

.field private static final RP_CAUSE_NONE_ERROR:I = 0x0

.field private static final RP_CAUSE_NOT_COMPATIBLE_PROTOCOL:I = 0x62

.field private static final RP_CAUSE_PROTOCOL_ERROR:I = 0x6f

.field private static final RP_CAUSE_REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field private static final RP_CAUSE_RESOURCES_UNAVAILABLE:I = 0x2f

.field private static final RP_CAUSE_SMS_TRANSFER_REJECTED:I = 0x15

.field private static final RP_CAUSE_TEMPORARY_FAILURE:I = 0x29

.field private static final RP_CAUSE_UNIDENTIFIED_SUBSCRIBER:I = 0x1c

.field private static final RP_CAUSE_UNKNOWN_SUBSCRIBER:I = 0x1e

.field private static final SEND_RETRY_DELAY:I = 0x7530

.field private static final TIMER_STATE:I = 0x1fbd0

.field private static final TIMER_STATE_FOR_O2C:I = 0x7530

.field private static final TP_CAUSE_INVALID_SME_ADDRESS:I = 0xc3

.field private static final TP_CAUSE_SM_REJECTED_OR_DUPLICATE:I = 0xc5


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkType:I

.field private final mDeliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mImsSmsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRetryCount:I

.field private mPhoneId:I

.field private mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

.field private mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

.field private mSmsc:Ljava/lang/String;

.field private mStatusMsgIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTpmr:I


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/imsphone/ImsSmsImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/imsphone/ImsSmsImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsLogger(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentNetworkType(Lcom/sec/internal/imsphone/ImsSmsImpl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTokenByMessageId(Lcom/sec/internal/imsphone/ImsSmsImpl;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getTokenByMessageId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendDelayedMessage(Lcom/sec/internal/imsphone/ImsSmsImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSendDelayedMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStatusReport(Lcom/sec/internal/imsphone/ImsSmsImpl;IILjava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleStatusReport(IILjava/lang/String;[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monReceiveSMSSuccssAcknowledgment(Lcom/sec/internal/imsphone/ImsSmsImpl;IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSmsPduTestReceived(Lcom/sec/internal/imsphone/ImsSmsImpl;ILjava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->onSmsPduTestReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 141
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    const-string v0, ""

    .line 121
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 122
    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    .line 125
    new-instance v1, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener-IA;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    .line 134
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    .line 1305
    new-instance v1, Lcom/sec/internal/imsphone/ImsSmsImpl$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/imsphone/ImsSmsImpl$2;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSmsImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    .line 143
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const/4 p1, -0x1

    .line 145
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->registerSmsEventListener()V

    .line 153
    :cond_1
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_2

    .line 154
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.internal.google.ImsSmsImpl.PduTest"

    .line 155
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "register for intent action=com.sec.internal.google.ImsSmsImpl.PduTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    :cond_2
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 161
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl$1;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private canFallback(I)Z
    .locals 8

    const/4 v0, 0x0

    .line 1199
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1200
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1201
    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1202
    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1205
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string v4, "46000"

    .line 1206
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v7

    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/internal/constants/Mno;

    .line 1208
    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v7

    .line 1210
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    .line 1211
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v3, "gsm.operator.isroaming"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1212
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p1, v7, :cond_8

    .line 1215
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->isVolteSupported(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    .line 1213
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fallback always over NAS (cdmaless / volte roaming)"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1218
    :cond_5
    sget-object p1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, p1, :cond_6

    return v0

    .line 1220
    :cond_6
    sget-object p1, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x12

    if-ne v2, p1, :cond_7

    .line 1221
    new-instance p1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1222
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result p1

    if-eq p1, v6, :cond_8

    .line 1223
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 1224
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Block fallback for Play in VoWiFi international roaming"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1227
    :cond_7
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1228
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_8

    return v0

    .line 1233
    :cond_8
    iget p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_9

    .line 1234
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "serviceState is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1238
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceState.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_a

    return v7

    :cond_a
    return v0

    .line 1245
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No permission for telephony service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private canFallbackForTimeout()Z
    .locals 8

    const/4 v0, 0x0

    .line 1252
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1253
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1254
    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1255
    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1258
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string v4, "46000"

    .line 1259
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v7

    :cond_1
    new-array v3, v6, [Lcom/sec/internal/constants/Mno;

    .line 1261
    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v7

    .line 1263
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 1264
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Block timeout fallback for Orange in VoWiFi roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1266
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1267
    :cond_4
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1268
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "serviceState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1272
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceState.getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_6

    .line 1274
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CanFallbackForTimeout() : SmsFallbackDefaultSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    .line 1279
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No permission for telephony service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CanFallbackForTimeout() : SmsFallback is not Supported"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1288
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "token"

    .line 1289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "messageId"

    .line 1290
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "destAddr"

    .line 1291
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pdu"

    .line 1292
    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "contentType"

    .line 1293
    invoke-virtual {p0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "retryCount"

    .line 1294
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "statusReport"

    .line 1295
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getSmsFallback()Z
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 690
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->getSmsFallback(I)Z

    move-result p0

    return p0
.end method

.method private getTPMR([B)B
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 670
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    aget-byte v0, p1, p0

    if-lez v0, :cond_2

    .line 677
    array-length v1, p1

    add-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 681
    :cond_1
    aget-byte p0, p1, v2

    :cond_2
    :goto_0
    return p0
.end method

.method private getTokenByMessageId(I)I
    .locals 2

    .line 495
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 496
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 498
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 499
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getMessageId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;ZI)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 760
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    .line 761
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V

    goto/16 :goto_0

    .line 762
    :cond_0
    sget-object v6, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_1

    .line 763
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 764
    :cond_1
    sget-object v6, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_2

    .line 765
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 766
    :cond_2
    sget-object v6, Lcom/sec/internal/constants/Mno;->UPC_CH:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_3

    .line 767
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 768
    :cond_3
    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 769
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 770
    :cond_4
    sget-object v6, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_5

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 771
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 772
    :cond_5
    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_6

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    .line 773
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    goto/16 :goto_0

    .line 774
    :cond_6
    sget-object v6, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_7

    .line 775
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 776
    :cond_7
    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    .line 777
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    goto :goto_0

    .line 778
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 779
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 780
    :cond_9
    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 781
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_a
    if-eqz v4, :cond_b

    .line 782
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 783
    invoke-virtual {p5, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 784
    invoke-virtual {p5, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v6, 0x4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move-object v5, p5

    .line 785
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_b
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move-object v5, p5

    .line 787
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7

    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x198

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1039
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1036
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1037
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 6

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    if-eqz p5, :cond_0

    .line 1075
    iget v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    .line 1076
    iput v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1077
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1078
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1080
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 9

    .line 1111
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorCause()I

    move-result v7

    .line 1112
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result v8

    .line 1113
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v4

    if-eqz v8, :cond_4

    const/16 p4, 0x9

    if-eq v8, p4, :cond_2

    const/4 p4, 0x2

    if-eq v8, p4, :cond_1

    const/4 p4, 0x3

    if-eq v8, p4, :cond_0

    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1142
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1131
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1128
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    .line 1134
    :cond_2
    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry to send over 1x"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    .line 1135
    invoke-direct {p0, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallback(I)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 v3, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1136
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1138
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    :cond_4
    const/16 p4, 0x2714

    if-ne p3, p4, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1118
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1123
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 1144
    :goto_0
    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< SEND_SMS_CDMA : token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " messageId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reasonCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorCause = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorClass = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6

    if-lez p3, :cond_0

    const v0, 0x8000

    if-ge p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1065
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1066
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1067
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1069
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 7

    const/4 v2, -0x1

    const/16 v4, 0x1f8

    if-ne p3, v4, :cond_0

    if-ne p6, v2, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    const/16 v6, 0x3e7

    if-ne p3, v6, :cond_1

    .line 990
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting SMS resend timer. 999 error ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v5, p6

    :goto_0
    const/16 v6, 0x198

    if-eq p3, v6, :cond_2

    if-ne p3, v4, :cond_4

    :cond_2
    if-eq v5, v2, :cond_4

    if-eqz p5, :cond_4

    .line 995
    iget v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x1

    if-ge v2, v4, :cond_3

    add-int/2addr v2, v4

    .line 996
    iput v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 997
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 998
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    int-to-long v2, v5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    .line 1000
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1001
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1004
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 10

    const/16 v0, 0x101

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p2, v0, :cond_3

    if-eq p4, v2, :cond_1

    if-eq p4, v1, :cond_0

    .line 1162
    invoke-virtual {p0, p1, v3, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_0

    .line 1152
    :cond_0
    invoke-virtual {p0, p1, v1, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_0

    .line 1155
    :cond_1
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result p2

    if-nez p2, :cond_2

    .line 1156
    invoke-virtual {p0, p1, v2, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_0

    .line 1158
    :cond_2
    invoke-virtual {p0, p1, v3, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    .line 1165
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onMemoryAvailableResult token = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1169
    :cond_3
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v8

    if-eq p4, v2, :cond_7

    if-eq p4, v1, :cond_6

    const/4 p5, 0x4

    if-eq p4, p5, :cond_4

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, v8

    .line 1191
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    .line 1172
    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallback(I)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 1173
    iget-object p5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry SMS Over SGs/CS"

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1174
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1176
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x3

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1180
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    .line 1183
    :cond_7
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result p5

    if-nez p5, :cond_8

    .line 1184
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultSuccess(II)V

    goto :goto_1

    :cond_8
    const/4 v7, 0x2

    const/4 v9, 0x2

    move-object v4, p0

    move v5, p1

    move v6, p2

    .line 1187
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    move p4, v3

    .line 1193
    :goto_1
    iget-object p5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< SEND_SMS : token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " messageId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reasonCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (1:Ok 2:Error 3:Retry 4:Fallback)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V
    .locals 9

    const/16 v0, 0x2711

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq p3, v0, :cond_4

    const/16 v0, 0x2712

    const/16 v4, 0x9

    const/16 v5, 0x13

    if-eq p3, v0, :cond_2

    const/16 v0, 0x2714

    if-eq p3, v0, :cond_1

    if-eqz p5, :cond_0

    .line 823
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x6b

    .line 824
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 826
    :cond_0
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 827
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 816
    :cond_1
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 817
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_0
    move v7, v2

    goto :goto_2

    :cond_2
    if-eqz p5, :cond_3

    .line 807
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    goto :goto_1

    .line 809
    :cond_3
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 810
    invoke-virtual {p4, v5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_0

    :cond_4
    if-eqz p5, :cond_5

    .line 797
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x69

    .line 798
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 800
    :cond_5
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 801
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_1
    const/4 v2, 0x2

    goto :goto_0

    :goto_2
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 830
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method private handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 8

    const/4 v4, -0x1

    const/16 v6, 0x9

    const/16 v7, 0x198

    if-ne p6, v4, :cond_3

    if-eqz p3, :cond_2

    .line 956
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 958
    sget-object v2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    if-eq p3, v7, :cond_0

    const/16 v1, 0x1e8

    if-ne p3, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 959
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 960
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 961
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 963
    :cond_1
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 964
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 967
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x193

    if-eq p3, v4, :cond_5

    const/16 v4, 0x194

    if-eq p3, v4, :cond_5

    if-eq p3, v7, :cond_5

    const/16 v4, 0x1f4

    if-eq p3, v4, :cond_5

    const/16 v4, 0x1f7

    if-eq p3, v4, :cond_5

    const/16 v4, 0x1f8

    if-eq p3, v4, :cond_5

    const/16 v4, 0x64

    if-lt p3, v4, :cond_5

    const/16 v4, 0x2bb

    if-gt p3, v4, :cond_5

    if-eqz p5, :cond_5

    .line 972
    iget v4, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v7, 0x4

    if-ge v4, v7, :cond_4

    const/4 v3, 0x1

    add-int/2addr v4, v3

    .line 973
    iput v4, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 974
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 975
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    int-to-long v2, p6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 977
    :cond_4
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 978
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 981
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 11

    .line 435
    iget v7, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 436
    iget v8, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    .line 438
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallbackForTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v3, v0

    const-string v0, "application/vnd.3gpp.sms"

    .line 443
    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v9, " reason = timeOut"

    const-string v10, " messageId = "

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, v7

    move v2, v8

    .line 444
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    .line 445
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoResponseTimeout: onSendSmsResult token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    const/16 v5, 0x1f

    const/4 v6, 0x2

    move-object v0, p0

    move v1, v7

    move v2, v8

    .line 447
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 449
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoResponseTimeout: onSendSmsResponse token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 454
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 455
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNoResponseTimeout : send next delayed message."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7

    const/16 v0, 0x193

    if-eq p3, v0, :cond_2

    const/16 v0, 0x198

    if-eq p3, v0, :cond_2

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_0

    const/16 v0, 0x258

    if-lt p3, v0, :cond_2

    :cond_0
    const/16 v0, 0x2c4

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1049
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1045
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1046
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1047
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    move-object/from16 v2, p6

    .line 835
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getTpdu()[B

    move-result-object v3

    .line 837
    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le v4, v7, :cond_0

    .line 838
    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    move/from16 v4, p4

    add-int/lit16 v8, v4, -0x8000

    .line 842
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v9

    const/4 v10, 0x4

    const/16 v11, 0x13

    const/16 v12, 0x2a

    const/16 v13, 0x29

    const/4 v14, 0x1

    if-eqz v9, :cond_6

    if-eq v8, v13, :cond_1

    if-ne v8, v12, :cond_6

    :cond_1
    if-nez v2, :cond_2

    .line 847
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "imsSmsTracker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 848
    :cond_2
    iget v1, v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    if-ge v1, v14, :cond_3

    add-int/2addr v1, v14

    .line 849
    iput v1, v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 850
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 851
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 855
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 858
    invoke-static/range {p7 .. p7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_4

    .line 860
    aget v2, v2, v6

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    .line 862
    :goto_2
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 863
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    .line 865
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orange, RP# "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isRoaming is true and DataNetworkType is IWLAN, so CS fallback does not done"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v14

    goto :goto_3

    .line 869
    :cond_5
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 870
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 871
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orange, set errorcause as fallbackIMS due to RP# "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 874
    :cond_6
    invoke-direct {p0, v1, v3, v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z

    move-result v2

    const/4 v9, 0x2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 876
    :cond_7
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    const/16 v1, 0x15

    if-ne v8, v1, :cond_8

    const/16 v1, 0xc5

    if-ne v3, v1, :cond_8

    .line 880
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 881
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Forced success for NTT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v14

    goto :goto_4

    .line 882
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 883
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 884
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_3
    move v9, v10

    goto :goto_4

    :cond_9
    if-eq v8, v12, :cond_a

    const/16 v1, 0x6f

    if-eq v8, v1, :cond_a

    const/16 v1, 0x2f

    if-eq v8, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v8, v1, :cond_a

    if-eq v8, v13, :cond_a

    const/16 v1, 0x62

    if-ne v8, v1, :cond_b

    :cond_a
    move v9, v7

    .line 895
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRPError: rpCause= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", tpCause= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v9

    move-object/from16 v5, p5

    .line 896
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method private handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 2

    .line 1103
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1104
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1106
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6

    if-eqz p3, :cond_1

    const/16 v0, 0x19f

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1011
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1012
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1013
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 1015
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1016
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1019
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleSendDelayedMessage()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 394
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    if-eqz v1, :cond_0

    .line 396
    iget-boolean v2, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    if-nez v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 398
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V

    :cond_0
    return-void
.end method

.method private handleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 9

    .line 405
    iget v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    const/4 v1, 0x0

    .line 406
    iput-boolean v1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0x1fbd0

    const/4 v6, 0x2

    .line 408
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 409
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    const-string v7, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPdu:[B

    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTPRDintoTPDU([B)V

    .line 415
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 420
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 422
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 423
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 422
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 426
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 427
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 417
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exception during sms retry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 420
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 421
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 419
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 420
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 421
    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_4

    .line 422
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 423
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 422
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 426
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 427
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 426
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 431
    :cond_5
    :goto_2
    throw v0
.end method

.method private handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6

    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    const/16 v0, 0x2bb

    if-gt p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1025
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1026
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1027
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1029
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleStatusReport(IILjava/lang/String;[B)V
    .locals 6

    .line 472
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDeliveryPendingList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 473
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 476
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 477
    iget v4, v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    if-ne v4, p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget v0, v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {p0, v0, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 481
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "statusReport is not matched. But, the messageId is forcibly saved."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p0, v1, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    :cond_2
    return-void
.end method

.method private handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 6

    const/16 v2, 0x190

    if-eq p3, v2, :cond_0

    const/16 v2, 0x193

    if-eq p3, v2, :cond_0

    const/16 v2, 0x194

    if-eq p3, v2, :cond_0

    const/16 v2, 0x1e8

    if-eq p3, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p3, v2, :cond_2

    const/16 v2, 0x258

    if-ge p3, v2, :cond_2

    :cond_0
    if-eqz p5, :cond_2

    .line 1088
    iget v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1089
    iput v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1090
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1091
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1093
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 1094
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1095
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1098
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7

    const/16 v0, 0x198

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1e0

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1059
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1055
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1056
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1057
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 10

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    move-object v1, p5

    const/16 v2, 0x190

    const/16 v4, 0x9

    const/16 v6, 0x13

    const/4 v7, 0x0

    if-lt v3, v2, :cond_2

    const/16 v2, 0x257

    if-gt v3, v2, :cond_2

    if-eqz v1, :cond_2

    .line 923
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsSmsTracker.mRetryCount =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget v2, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v8, 0x1

    if-ge v2, v8, :cond_0

    add-int/2addr v2, v8

    .line 925
    iput v2, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 926
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 927
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_0
    if-eqz p6, :cond_1

    .line 930
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 931
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 933
    :cond_1
    invoke-virtual {p4, v7}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 934
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 935
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x309

    if-eq v3, v1, :cond_4

    const/16 v1, 0x320

    if-ne v3, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 948
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz p6, :cond_5

    .line 940
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 941
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 943
    :cond_5
    invoke-virtual {p4, v7}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 944
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 945
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z
    .locals 3

    .line 900
    sget-object p0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v0, 0x6f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_2

    const/16 p0, 0xc3

    if-eq p2, p0, :cond_1

    if-eq p3, v0, :cond_1

    const/16 p0, 0x1e

    if-eq p3, p0, :cond_1

    const/16 p0, 0x1c

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 905
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_5

    const/16 p0, 0x29

    if-eq p3, p0, :cond_4

    const/16 p0, 0x2a

    if-eq p3, p0, :cond_4

    const/16 p0, 0x2f

    if-eq p3, p0, :cond_4

    const/16 p0, 0x62

    if-eq p3, p0, :cond_4

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    .line 911
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_7

    if-ne p3, v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    .line 913
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/Mno;->SPARK:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_9

    const/16 p0, 0x45

    if-ne p3, p0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :cond_9
    return v2
.end method

.method private isTPRDset([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 650
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 653
    :cond_0
    aget-byte v1, p1, v0

    if-lez v1, :cond_3

    .line 657
    array-length v2, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-le v2, v1, :cond_3

    aget-byte p1, p1, v1

    and-int/lit8 v1, p1, 0x1

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_2

    return v3

    :cond_2
    return v0

    .line 658
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isTPRDset() sca is wrong: return false"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v0
.end method

.method private onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 10

    move-object v0, p0

    move v3, p3

    move v4, p4

    .line 716
    iget v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 717
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveSMSAck: mno = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " messageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reasonCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " retryAfter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v7, v2

    .line 721
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    if-eqz v6, :cond_3

    .line 724
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    const/4 v9, 0x2

    .line 725
    invoke-virtual {v2, v9, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 727
    :cond_1
    iput-boolean v5, v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    .line 729
    iget-boolean v2, v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    if-eqz v2, :cond_2

    .line 731
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_2

    .line 732
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 738
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    move-object/from16 v5, p6

    .line 741
    invoke-virtual {v5, p3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setMessageRef(I)V

    const/16 v2, 0x2710

    if-ge v2, v4, :cond_4

    const/16 v2, 0x2af8

    if-ge v4, v2, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p6

    move v5, v7

    .line 745
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V

    return-void

    :cond_4
    const v2, 0x8000

    if-ge v2, v4, :cond_5

    const v2, 0x80ff

    if-ge v4, v2, :cond_5

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move v7, p1

    .line 751
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    return-void

    :cond_5
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move v8, p5

    .line 755
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;ZI)V

    return-void
.end method

.method private onSmsPduTestReceived(ILjava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming PduTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method private registerSmsEventListener()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz v0, :cond_0

    .line 384
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    :cond_0
    return-void
.end method

.method private resultToCause(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x29

    goto :goto_0

    :cond_0
    const/16 p0, 0x6f

    goto :goto_0

    :cond_1
    const/16 p0, 0x16

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 12

    .line 507
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "pdu"

    .line 508
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "destAddr"

    .line 509
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v2, "contentType"

    .line 510
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    const-string v2, "messageId"

    .line 511
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v11, 0x1

    if-nez p2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gt v2, v11, :cond_0

    .line 515
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    move v2, v11

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 520
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_1
    move v11, v2

    .line 524
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> SEND_SMS : token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " destAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " statusReportRequested = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " smsSent = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-virtual {p2, v2, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-boolean p2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p2, :cond_2

    .line 527
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pdu = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    if-eqz v11, :cond_4

    .line 531
    iget p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 532
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_3

    .line 533
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 534
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    .line 533
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 537
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 538
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x1fbd0

    .line 537
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private setTPMRintoTPDU([BI)V
    .locals 5

    if-eqz p1, :cond_4

    .line 545
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 548
    aget-byte v1, p1, v0

    if-lez v1, :cond_4

    .line 552
    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 557
    :cond_1
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 558
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->updateTPMR(I)V

    .line 562
    :cond_2
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    const/16 v4, 0xff

    and-int/2addr v1, v4

    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    if-lt v1, v4, :cond_3

    .line 564
    iput v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_0

    :cond_3
    add-int/2addr v1, v2

    .line 567
    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    .line 569
    :goto_0
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.radio.tpmr_sms"

    invoke-direct {p0, p2, v1, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 571
    iget p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    .line 572
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTPMRintoTPDU mTpmr : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private setTPRDintoTPDU([B)V
    .locals 3

    if-eqz p1, :cond_2

    .line 635
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 638
    aget-byte p0, p1, p0

    if-lez p0, :cond_2

    .line 642
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_2

    aget-byte v0, p1, p0

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 646
    aput-byte v0, p1, p0

    :cond_2
    :goto_0
    return-void
.end method

.method private setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 587
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_0

    move-object p3, v1

    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    .line 594
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    const-string v3, ","

    if-eqz v2, :cond_1

    .line 596
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 599
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_4

    if-eqz v2, :cond_3

    .line 605
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 606
    aget-object v5, v2, v4

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 608
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 611
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_5

    add-int/lit8 v1, p1, 0x1

    .line 613
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 614
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 618
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :try_start_0
    const-string/jumbo v2, "utf-8"

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 623
    :catch_0
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTelephonyProperty: utf-8 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v2, 0x5b

    if-le v1, v2, :cond_6

    .line 626
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " property="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " propVal="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 631
    :cond_6
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 5

    const/4 p2, 0x4

    new-array p2, p2, [B

    .line 260
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_0

    aput-byte v3, p2, v3

    aput-byte v3, p2, v2

    int-to-byte p3, p1

    aput-byte p3, p2, v1

    aput-byte v3, p2, v0

    goto :goto_0

    .line 267
    :cond_0
    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->resultToCause(I)I

    move-result p3

    int-to-byte v4, p3

    aput-byte v4, p2, v3

    const/16 v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    aput-byte v3, p2, v0

    move v3, p3

    .line 275
    :goto_0
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p3, v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 276
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 277
    iput-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    .line 279
    :cond_1
    new-instance p3, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    invoke-direct {p3, p2, v3, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;-><init>([BII)V

    iput-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    .line 280
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "> SMS_ACK : messageRef = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public acknowledgeSms(III[B)V
    .locals 4

    .line 366
    array-length p2, p4

    const/4 p3, 0x4

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 368
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    int-to-byte v2, v0

    .line 371
    aput-byte v2, p2, v0

    int-to-byte v2, v0

    const/4 v3, 0x1

    .line 372
    aput-byte v2, p2, v3

    int-to-byte v2, p1

    .line 373
    aput-byte v2, p2, v1

    .line 374
    array-length v1, p4

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, p2, v2

    .line 375
    array-length v1, p4

    invoke-static {p4, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p3, p4, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 377
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "> SMS_ACK_WITH_PDU : messageRef = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 3

    .line 306
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 307
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeSmsReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", statusMsgId = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0, p1, p1, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->acknowledgeSms(III)V

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 9

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simslot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 315
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 319
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 320
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 315
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    const-string v3, "3GPP"

    :goto_1
    if-eqz v2, :cond_1

    .line 323
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 324
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v0, "3GPP2"

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "3gpp"

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    const-string p0, "3gpp2"

    return-object p0

    :cond_3
    return-object v1

    :catchall_2
    move-exception p0

    .line 324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    throw p0
.end method

.method public handleRetryDeliveryReportAck(Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;)V
    .locals 2

    if-nez p1, :cond_0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sentDeliveryAck is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 466
    :cond_0
    iget v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 467
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    :cond_1
    return-void
.end method

.method public onMemoryAvailable(I)V
    .locals 22

    move-object/from16 v9, p0

    move/from16 v15, p1

    const/16 v3, 0x101

    .line 287
    iget-object v4, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "application/vnd.3gpp.sms"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v12

    .line 288
    new-instance v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    iget v11, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const/4 v14, 0x0

    const/16 v1, 0x101

    const/16 v16, 0x0

    iget-object v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const-string v18, "application/vnd.3gpp.sms"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v10, v0

    move/from16 v13, p1

    move v3, v15

    move v15, v1

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker-IA;)V

    .line 289
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    :try_start_0
    iget-object v10, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v11, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const/4 v12, 0x0

    iget-object v13, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const-string v14, "application/vnd.3gpp.sms"

    const/16 v15, 0x101

    const/16 v16, 0x1

    invoke-interface/range {v10 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 295
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMemoryAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 297
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not send onMemoryAvailable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 298
    invoke-virtual {v9, v3, v0, v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    .line 299
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMemoryAvailableResult token = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 338
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->updateTPMR(I)V

    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 22

    move-object/from16 v9, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v0, p6

    .line 189
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;-><init>()V

    .line 195
    iget v12, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mLastRetryCount:I

    const-string v11, "3gpp"

    .line 197
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/vnd.3gpp.sms"

    goto :goto_0

    :cond_0
    const-string v2, "application/vnd.3gpp2.sms"

    :goto_0
    move-object/from16 v18, v2

    .line 200
    :try_start_0
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 201
    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    .line 202
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 203
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 205
    array-length v4, v2

    invoke-static {v2, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    array-length v2, v2

    array-length v4, v0

    invoke-static {v0, v10, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    invoke-virtual {v1, v3, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 210
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    .line 213
    invoke-direct {v9, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->isTPRDset([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    invoke-direct {v9, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getTPMR([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_1

    .line 217
    :cond_1
    iget v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-direct {v9, v3, v2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTPMRintoTPDU([BI)V

    .line 220
    :goto_1
    iget v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    move-object/from16 v17, v0

    move/from16 v19, v1

    move v0, v2

    move-object/from16 v16, v3

    goto :goto_2

    :cond_2
    const-string v2, "3gpp2"

    .line 223
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 224
    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    .line 225
    invoke-virtual {v1, v0, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 226
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v0

    .line 227
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getTpdu()[B

    move-result-object v2

    .line 228
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    move/from16 v19, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    move v0, v10

    move/from16 v19, v0

    :goto_2
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v0

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move v7, v12

    move/from16 v8, v19

    .line 232
    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v1

    .line 233
    new-instance v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    iget v3, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v4, v10

    move-object v10, v2

    move-object v5, v11

    move v11, v3

    move v3, v12

    move-object v12, v1

    move-object v1, v13

    move/from16 v13, p1

    move v8, v14

    move v14, v3

    move v7, v15

    move v15, v0

    :try_start_1
    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker-IA;)V

    .line 235
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 236
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_4
    invoke-direct {v9, v2, v4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v11

    move-object v1, v13

    move v8, v14

    move v7, v15

    .line 240
    :goto_3
    iget-object v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not send sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, " messageId = "

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 242
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    .line 244
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendSmsResult token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v7

    goto :goto_4

    :cond_5
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x1f

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v11, v7

    move v7, v0

    .line 246
    invoke-virtual/range {v1 .. v7}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 248
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendSmsResponse token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_4
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void
.end method

.method public setRetryCount(II)V
    .locals 0

    .line 344
    iput p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mLastRetryCount:I

    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    return-void
.end method

.method public updateTPMR(I)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v0, "persist.radio.tpmr_sms"

    const-string v1, "0"

    .line 577
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 580
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    :goto_1
    return-void
.end method

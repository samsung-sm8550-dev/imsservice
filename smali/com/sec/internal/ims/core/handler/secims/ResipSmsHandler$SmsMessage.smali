.class public Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;
.super Ljava/lang/Object;
.source "ResipSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsMessage"
.end annotation


# instance fields
.field callId:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field errorCode:I

.field isDeliveryReport:Z

.field isEmergency:Z

.field localuri:Ljava/lang/String;

.field msgId:I

.field pdu:[B

.field smsc:Ljava/lang/String;

.field ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIZLjava/lang/String;Z)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->ua:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 90
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->smsc:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->localuri:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->contentType:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->pdu:[B

    .line 94
    iput p6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->msgId:I

    .line 95
    iput-boolean p7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isDeliveryReport:Z

    .line 96
    iput-object p8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->callId:Ljava/lang/String;

    .line 97
    iput-boolean p9, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSmsHandler$SmsMessage;->isEmergency:Z

    return-void
.end method

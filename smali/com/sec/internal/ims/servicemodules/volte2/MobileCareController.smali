.class public Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;
.super Ljava/lang/Object;
.source "MobileCareController.java"


# static fields
.field public static final ACTIONCALLDROP:Ljava/lang/String; = "com.samsung.intent.action.IMS_CALL_DROP"

.field public static final ACTIONQUALITYSTATISTICS:Ljava/lang/String; = "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

.field public static final CALLTYPE:Ljava/lang/String; = "CallType"

.field public static final ERRORREASON:Ljava/lang/String; = "ErrorReason"

.field public static final ERRORSTRING:Ljava/lang/String; = "ErrorString"

.field public static final EVENTNAME:Ljava/lang/String; = "H015"

.field public static final EVENTTYPE:Ljava/lang/String; = "event_type"

.field private static final LOG_TAG:Ljava/lang/String; = "MobileCareController"

.field public static final NETWORKTYPE:Ljava/lang/String; = "NetworkType"

.field public static final RSRP:Ljava/lang/String; = "RSRP"

.field public static final RSRQ:Ljava/lang/String; = "RSRQ"

.field public static final TIMEINFO:Ljava/lang/String; = "TimeInfo"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mErrorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLteBand:I

.field private mLteRsrp:[I

.field private mLteRsrq:[I

.field protected mQualityStatisticsValid:Z

.field private mSignalLevel:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mQualityStatisticsValid:Z

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->initErrorList()V

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 62
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    .line 63
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    .line 64
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    .line 65
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 66
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string v0, "CscFeature_Common_SupportHuxDeviceQualityStatistics"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mQualityStatisticsValid:Z

    :cond_0
    return-void
.end method

.method private getCurrentTimeShort()Ljava/lang/String;
    .locals 6

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 187
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 190
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "000"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initErrorList()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x244

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x454

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x45a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x4b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    const/16 v0, 0x6a6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getLteBand()I
    .locals 0

    .line 229
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    return p0
.end method

.method public getLteRsrp(I)I
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget p0, p0, p1

    return p0
.end method

.method public getLteRsrq(I)I
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget p0, p0, p1

    return p0
.end method

.method public getSignalLevel(I)I
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    aget p0, p0, p1

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onLteBancChanged(Ljava/lang/String;)V
    .locals 3

    .line 212
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 214
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    .line 216
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received LTE Band is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mLteBand is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteBand:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSignalStrengthsChanged(ILandroid/telephony/SignalStrength;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 198
    new-instance v0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-direct {v0, p2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;-><init>(Landroid/telephony/SignalStrength;)V

    .line 199
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrp()I

    move-result v1

    aput v1, p2, p1

    .line 200
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrq()I

    move-result v1

    aput v1, p2, p1

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLevel()I

    move-result p2

    aput p2, p0, p1

    goto :goto_0

    .line 203
    :cond_0
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getLteSignalStrength is null"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    const/4 v0, -0x1

    aput v0, p2, p1

    .line 205
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aput v0, p2, p1

    .line 206
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mSignalLevel:[I

    aput v0, p0, p1

    :goto_0
    return-void
.end method

.method public sendMissedCallSms(Landroid/content/Intent;)V
    .locals 4

    .line 161
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    const-string/jumbo v1, "subscription"

    const/4 v2, -0x1

    .line 162
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 163
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSlotId(I)I

    move-result p1

    .line 164
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/internal/helper/ImsCallUtil;->getPhraseByMno(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 166
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    aget-object v0, v0, v2

    .line 168
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x50000008

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x70b

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FLCD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    const-string v2, "PSCI"

    invoke-static {p1, v1, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendMobileCareEvent(IIILjava/lang/String;Z)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mErrorSet:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p2

    .line 104
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMobileCareEvent : isVideo ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] isePDG ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] mRSRP ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mRSRQ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mErrorCode ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] mErrorDesc ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.IMS_CALL_DROP"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CallType"

    .line 111
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "NetworkType"

    .line 112
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "TimeInfo"

    .line 113
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->getCurrentTimeShort()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "ErrorReason"

    .line 114
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {p3}, Lcom/sec/ims/volte2/data/VolteConstants$ErrorCode;->toString(I)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string p2, "ErrorString"

    .line 115
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrp:[I

    aget p2, p2, p1

    const-string p3, "RSRP"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mLteRsrq:[I

    aget p1, p2, p1

    const-string p2, "RSRQ"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 121
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendMobileCareEvent : Don\'t need to send event"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendQualityStatisticsEvent()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mQualityStatisticsValid:Z

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendQualityStatisticsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event_type"

    const-string v2, "H015"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.vzw.qualitydatalog"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public sendTelephonyNotResponding(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;",
            ">;)V"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TERMINATE,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const-string v2, ","

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    goto :goto_0

    :cond_2
    const-string p1, "REQUESTED_BY_TELEPHONY"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x11010007

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 153
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/16 v0, 0x463

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "FLCD"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    const-string v1, "PSCI"

    invoke-static {v2, v0, v1, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->mContext:Landroid/content/Context;

    invoke-static {v2, p0, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    .line 157
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "terminate not responding session"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

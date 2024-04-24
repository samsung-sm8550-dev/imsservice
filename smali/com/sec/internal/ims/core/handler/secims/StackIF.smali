.class public Lcom/sec/internal/ims/core/handler/secims/StackIF;
.super Ljava/lang/Object;
.source "StackIF.java"

# interfaces
.implements Lcom/sec/internal/ims/core/handler/secims/IStackIF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;,
        Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;
    }
.end annotation


# static fields
.field private static final FROM_PATTERN:Ljava/util/regex/Pattern;

.field private static final GROUPCHAT_ALIAS_PATTERN:Ljava/util/regex/Pattern;

.field private static final GROUPCHAT_SUBJECT_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMEI_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMPU_SIP_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMPU_TEL_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String; = "StackIF"

.field private static final PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final PHONE_NUMBER_XML_PATTERN:Ljava/util/regex/Pattern;

.field private static final P_ACCESS_NETWORK_PATTERN:Ljava/util/regex/Pattern;

.field private static final SDP_O_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SESSION_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEXTPLAIN_CONTENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEXTPLAIN_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final TO_PATTERN:Ljava/util/regex/Pattern;

.field private static final USERNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XCAP_USER_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# instance fields
.field private final mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mHandle:I

.field private final mIdcServiceEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mLock:Ljava/lang/Object;

.field private mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

.field private final mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/ImsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSipHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mStackDumpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/DumpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mUaListenerList:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/StackEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUaRegisterResponseRawSip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}"

    .line 234
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)"

    .line 236
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "sip:[#*0-9+-]*[0-9+-]+"

    .line 238
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_SIP_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "tel:[#*0-9+-]*[0-9+-]+"

    .line 239
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_TEL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "imei:+[0-9+-]+"

    .line 240
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "username=\"+[^\"]+"

    .line 241
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "P-Access-Network-Info:+[^\n]+"

    .line 242
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->P_ACCESS_NETWORK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "o=+[0-9:+-]+"

    .line 244
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SDP_O_LINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\"+[0-9+-]+\""

    .line 245
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, ">[0-9+-]{4,}<"

    .line 246
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_XML_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "target>+.+</.*target"

    .line 247
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->XCAP_USER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "From: +[#*0-9+-]*[0-9+-]+"

    .line 248
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->FROM_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "To: +[#*0-9+-]*[0-9+-]+"

    .line 249
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TO_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "session-description>.+</session-description"

    .line 250
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SESSION_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "From: \"+[^\"]+"

    .line 252
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_ALIAS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "Subject:+[^\n]+"

    .line 253
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_SUBJECT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "Content-type: +text/plain"

    .line 254
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\n\n.[^\n]+"

    .line 256
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_CONTENT_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 306
    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    .line 284
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 285
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, -0x1

    .line 304
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    .line 316
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 318
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mLock:Ljava/lang/Object;

    .line 322
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 323
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 324
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 325
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 326
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 327
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 328
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 329
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 330
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 331
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 332
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 333
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 334
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 335
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 336
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 337
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 338
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 339
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 340
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 341
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 342
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 343
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 344
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 345
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 346
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 347
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 348
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 349
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 350
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 351
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 352
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 353
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 354
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 355
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 356
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIdcServiceEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-void
.end method

.method private static ImsLogC(ILjava/lang/String;Z)V
    .locals 0

    .line 2505
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method public static checkLogEnable()Z
    .locals 1

    .line 3326
    sget-boolean v0, Lcom/sec/ims/extensions/Extensions$Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private createDeviceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/DeviceTuple;)I
    .locals 8

    const-string v0, "StackIF"

    const-string v1, "createDevicetupleoffset enter"

    .line 1072
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v0, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1080
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1082
    iget-object v3, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    .line 1083
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getDeviceCapabilityElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1082
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v6, v4, 0x1

    .line 1084
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_0

    .line 1088
    :cond_0
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createDeviceCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1093
    :goto_1
    iget-object v3, p2, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1095
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    const-string v4, "description"

    .line 1096
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    .line 1097
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1096
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v7, v5, 0x1

    .line 1099
    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v6

    aput v6, v3, v5

    move v5, v7

    goto :goto_2

    .line 1103
    :cond_2
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createDescriptionsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v1

    .line 1106
    :goto_3
    iget-object v4, p2, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 1108
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    const-string v5, "note"

    .line 1109
    iget-object v6, p2, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    .line 1110
    invoke-static {v5, v6}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1109
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v7, v2, 0x1

    .line 1111
    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v6

    aput v6, v4, v2

    move v2, v7

    goto :goto_4

    .line 1115
    :cond_4
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createNotesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_5

    :cond_5
    move p0, v1

    .line 1120
    :goto_5
    iget-object v2, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1121
    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    .line 1125
    :goto_6
    iget-object p2, p2, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1126
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_7

    :cond_7
    move p2, v1

    .line 1130
    :goto_7
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->startDeviceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v1, :cond_8

    .line 1134
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDeviceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_8
    if-eq v0, v1, :cond_9

    .line 1139
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDeviceCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v3, v1, :cond_a

    .line 1144
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDescriptions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq p0, v1, :cond_b

    .line 1149
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addNotes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq p2, v1, :cond_c

    .line 1154
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1159
    :cond_c
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->endDeviceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private createPersonTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/PersonTuple;)I
    .locals 6

    const-string v0, "StackIF"

    const-string v1, "createPersonTupleOffset enter"

    .line 1296
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p2, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-lez v0, :cond_2

    .line 1303
    new-array v0, v0, [I

    const-string v3, "note"

    .line 1304
    iget-object v4, p2, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    .line 1305
    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1304
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v5, v1, 0x1

    .line 1306
    invoke-direct {p0, p1, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v4

    aput v4, v0, v1

    move v1, v5

    goto :goto_1

    .line 1308
    :cond_1
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createNotesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v2

    .line 1312
    :goto_2
    iget-object v0, p2, Lcom/sec/ims/presence/PersonTuple;->mTimestamp:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1313
    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v2

    .line 1317
    :goto_3
    iget-object p2, p2, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 1318
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_4

    :cond_4
    move p2, v2

    .line 1322
    :goto_4
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->startPersonTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v0, v2, :cond_5

    .line 1327
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    if-eq p2, v2, :cond_6

    .line 1333
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addStatusIcon(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_6
    if-eq p0, v2, :cond_7

    .line 1339
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addNotes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1345
    :cond_7
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->endPersonTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private createServiceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/ServiceTuple;)I
    .locals 7

    const-string v0, "createServiceTupleOffset enter"

    const-string v1, "StackIF"

    .line 1166
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p2, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 1193
    iget-wide v3, p2, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    .line 1194
    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getMediaCapabilityElements(J)Ljava/util/List;

    move-result-object v0

    .line 1195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 1196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v6, v4, 0x1

    .line 1197
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v5

    aput v5, v3, v4

    move v4, v6

    goto :goto_0

    .line 1201
    :cond_0
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->createMediaCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    .line 1206
    :goto_1
    iget-object v0, p2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1207
    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    .line 1211
    :goto_2
    iget-object v3, p2, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1212
    invoke-virtual {p1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v2

    .line 1216
    :goto_3
    iget-object v4, p2, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1217
    invoke-virtual {p1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v2

    .line 1221
    :goto_4
    iget-object v5, p2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1222
    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_5

    :cond_5
    move v5, v2

    .line 1226
    :goto_5
    iget-object v6, p2, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1227
    invoke-virtual {p1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_6

    :cond_6
    move v6, v2

    .line 1232
    :goto_6
    iget-object p2, p2, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1233
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1234
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->startStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1235
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->addBasic(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1236
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->endStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_7

    :cond_7
    move p2, v2

    .line 1240
    :goto_7
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->startServiceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v0, v2, :cond_8

    .line 1244
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addServiceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_8
    if-eq v3, v2, :cond_9

    .line 1250
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addTupleId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v4, v2, :cond_a

    .line 1256
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addDisplaytext(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v5, v2, :cond_b

    .line 1262
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v6, v2, :cond_c

    .line 1268
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq p2, v2, :cond_e

    .line 1273
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p0, v2, :cond_d

    .line 1283
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addMediaCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1289
    :cond_d
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->endServiceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0

    :cond_e
    const-string/jumbo p0, "requestPublish: service tuple status (either basic or other status) is required"

    .line 1276
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private findAndRemoveRequest(I)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    .locals 3

    .line 2465
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    monitor-enter v0

    .line 2466
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2468
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2469
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    .line 2471
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    if-ne v2, p1, :cond_0

    .line 2472
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 2473
    monitor-exit v0

    return-object v1

    .line 2476
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I
    .locals 10

    .line 1654
    iget-object v0, p2, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 1656
    new-array v0, v0, [I

    .line 1658
    iget-object v3, p2, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v6, v4, 0x1

    .line 1659
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_0

    .line 1661
    :cond_0
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->createElementsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    .line 1664
    :goto_1
    iget-object v0, p2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1670
    iget-object v0, p2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1672
    iget-object v3, p2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    .line 1674
    iget-object v5, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1675
    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_3

    :cond_2
    move v5, v1

    .line 1679
    :goto_3
    iget-object v6, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1680
    invoke-virtual {p1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_4

    :cond_3
    move v6, v1

    .line 1684
    :goto_4
    iget-object v7, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1685
    invoke-virtual {p1, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_5

    :cond_4
    move v7, v1

    .line 1688
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "element attr: ns: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " val: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "StackIF"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->startAttribute(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v5, v1, :cond_5

    .line 1694
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addNameSpace(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    if-eq v6, v1, :cond_6

    .line 1698
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_6
    if-eq v7, v1, :cond_7

    .line 1702
    invoke-static {p1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    add-int/lit8 v4, v2, 0x1

    .line 1705
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->endAttribute(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    aput v5, v0, v2

    move v2, v4

    goto :goto_2

    .line 1707
    :cond_8
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->createAttributesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    goto :goto_6

    :cond_9
    move v0, v1

    .line 1713
    :goto_6
    iget-object v2, p2, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1714
    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_7

    :cond_a
    move v2, v1

    .line 1716
    :goto_7
    iget-object v3, p2, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1717
    invoke-virtual {p1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_8

    :cond_b
    move v3, v1

    .line 1719
    :goto_8
    iget-object p2, p2, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 1720
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_9

    :cond_c
    move p2, v1

    .line 1722
    :goto_9
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->startElement(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v1, :cond_d

    .line 1725
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addNameSpace(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v3, v1, :cond_e

    .line 1728
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq p2, v1, :cond_f

    .line 1731
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v0, v1, :cond_10

    .line 1734
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addAttributes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    if-eq p0, v1, :cond_11

    .line 1737
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addElements(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1740
    :cond_11
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->endElement(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    monitor-enter v0

    .line 368
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    if-nez v1, :cond_1

    .line 369
    const-class v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    :try_start_1
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    if-nez v2, :cond_0

    .line 371
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;-><init>()V

    sput-object v2, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 372
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->init()V

    .line 374
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 376
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2615
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 2622
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo v0, "xxx.xxx.xxx.xxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2624
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo v0, "xxxx:xxxx:xxxx:xxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2627
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_SIP_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->replaceImpuPatterns(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2629
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_TEL_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->replaceImpuPatterns(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2631
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "imei:xxxxxxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2633
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo v0, "username=xxxxxxxxxxxxxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2635
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->P_ACCESS_NETWORK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "P-Access-Network-Info: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2638
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SDP_O_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "o=xxxxxxxxxxxxxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2640
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "\"xxxxxxxxxxxxxxx\""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2642
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_XML_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ">xxxxxxxxxxxxxxx<"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2644
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->XCAP_USER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo v0, "target>xxxxxxxxxxxxxxx</target"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2646
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->FROM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "From: xxxxxxxxxxxxxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2648
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "To: xxxxxxxxxxxxxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2650
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SESSION_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo v0, "session-description>xxxxxxxxxxxxxxx</session-description"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2653
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_ALIAS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "From: \"xxxxxxxx\""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2655
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_SUBJECT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "Subject: xxxxxxxx"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2658
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2659
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_CONTENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2661
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2662
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 2661
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2664
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\n\nxxxxx"

    .line 2666
    invoke-virtual {v1, p0, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 2667
    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 2669
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private init()V
    .locals 0

    :try_start_0
    const-string/jumbo p0, "sec-ims"

    .line 361
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 363
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private native initCmc(Ljava/lang/Object;)V
.end method

.method private native initStack(Ljava/lang/Object;)V
.end method

.method private planiTimeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I
    .locals 0

    .line 645
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->startRequestUpdateTimeInPlani(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 646
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 647
    invoke-static {p1, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->addTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 648
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->endRequestUpdateTimeInPlani(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private native processCommandBuffer([BI)V
.end method

.method private static declared-synchronized processMessage([BI)V
    .locals 7

    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    monitor-enter v0

    .line 2484
    :try_start_0
    new-array v1, p1, [B

    .line 2486
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 2487
    :try_start_1
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2488
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2489
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->getRootAsImsBuffer(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;

    move-result-object p0

    .line 2490
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->trid()J

    move-result-wide v2

    .line 2491
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msgType()B

    move-result p1

    const-string v4, "StackIF"

    .line 2492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    const-string p1, "StackIF"

    const-string v2, "Processing Notify"

    .line 2494
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msg(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    const-string p1, "StackIF"

    const-string v4, "Processing Response"

    .line 2497
    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    long-to-int v2, v2

    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;-><init>()V

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msg(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;

    invoke-direct {p1, v2, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processResponse(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;)V

    .line 2500
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2501
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2500
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2676
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v2

    .line 2678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UNSL]< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SECIMSJ"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processNotify: id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StackIF"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2711

    const/4 v5, 0x2

    const-string/jumbo v6, "processNotify: msg not found."

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v2, v3, :cond_6

    .line 2684
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v8, :cond_5

    .line 2686
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2687
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v10

    .line 2689
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v2, v7

    .line 2690
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->serviceListLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2691
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->serviceList(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2694
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v2, v7

    .line 2695
    :goto_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->impuListLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2696
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->impuList(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2698
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegistrationStatus - handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " serviceList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " regiType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2701
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->regiType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiType;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ecmpMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->ecmpMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " retryAfter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2705
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()J

    move-result-wide v13

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " reason header "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2706
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->reasonHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2698
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->reasonHeader()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v6}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2709
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v9, :cond_61

    .line 2711
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->regiType()I

    move-result v3

    if-nez v3, :cond_2

    .line 2715
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()J

    move-result-wide v14

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->ecmpMode()I

    move-result v16

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    .line 2716
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object v13, v2

    .line 2713
    invoke-virtual/range {v9 .. v17}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegistered(ILjava/util/List;Ljava/util/List;Lcom/sec/ims/util/SipError;JILjava/lang/String;)V

    goto/16 :goto_1e

    :cond_2
    if-eq v3, v8, :cond_3

    if-ne v3, v5, :cond_61

    .line 2718
    :cond_3
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2719
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()J

    move-result-wide v12

    if-ne v3, v5, :cond_4

    move v14, v8

    goto :goto_2

    :cond_4
    move v14, v7

    :goto_2
    move-object v11, v2

    invoke-virtual/range {v9 .. v14}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onDeregistered(ILcom/sec/ims/util/SipError;JZ)V

    goto/16 :goto_1e

    .line 2723
    :cond_5
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_6
    const/16 v3, 0x2729

    const-string v9, "Handle: "

    if-ne v2, v3, :cond_7

    const-string/jumbo v2, "receive registered impu"

    .line 2726
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_61

    .line 2728
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;

    .line 2729
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2730
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;->impu()Ljava/lang/String;

    move-result-object v1

    .line 2731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - impu: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2731
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_61

    .line 2735
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegImpuNotification(ILjava/lang/String;)V

    goto/16 :goto_1e

    :cond_7
    const/16 v3, 0x271d

    if-ne v2, v3, :cond_8

    .line 2739
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_61

    .line 2740
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;

    .line 2741
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->respCode()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->respReason()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 2742
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->handle()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v1

    .line 2743
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_61

    .line 2745
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onSubscribed(ILcom/sec/ims/util/SipError;)V

    goto/16 :goto_1e

    :cond_8
    const/16 v3, 0x2717

    if-ne v2, v3, :cond_9

    .line 2750
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_61

    const-string v2, "RegiInfoChanged"

    .line 2751
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    .line 2753
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2754
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_61

    .line 2756
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegInfoNotification(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V

    goto/16 :goto_1e

    :cond_9
    const/16 v3, 0x2712

    if-ne v2, v3, :cond_c

    .line 2761
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v5, :cond_b

    .line 2762
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;

    .line 2763
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistrationAuth - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nonce "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2765
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->nonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2764
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_a

    const-string v3, "calling onISIMAuthRequested."

    .line 2769
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->nonce()Ljava/lang/String;

    move-result-object v3

    .line 2771
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->recvMng()J

    move-result-wide v4

    long-to-int v1, v4

    .line 2770
    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onISIMAuthRequested(ILjava/lang/String;I)V

    goto/16 :goto_1e

    :cond_a
    const-string v0, " mUaListener not found."

    .line 2773
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 2776
    :cond_b
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_c
    const/16 v3, 0x2714

    if-ne v2, v3, :cond_d

    .line 2779
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_61

    .line 2780
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 2781
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallStatus - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->session()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2782
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_d
    const/16 v3, 0x2715

    if-ne v2, v3, :cond_e

    .line 2789
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_61

    .line 2790
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    .line 2792
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_e
    const/16 v3, 0x271e

    if-ne v2, v3, :cond_f

    .line 2795
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_61

    .line 2796
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    .line 2798
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_f
    const/16 v3, 0x271f

    if-ne v2, v3, :cond_10

    .line 2801
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_61

    .line 2802
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    .line 2804
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_10
    const/16 v3, 0x2733

    if-ne v2, v3, :cond_11

    .line 2807
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_61

    .line 2808
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    .line 2810
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_11
    const/16 v3, 0x2716

    if-ne v2, v3, :cond_15

    .line 2813
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_61

    .line 2814
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    if-nez v1, :cond_12

    const-string v0, "cc is null"

    .line 2816
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2820
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfCallChanged: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2821
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " participants "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2820
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v2

    new-array v3, v2, [Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move v5, v7

    .line 2825
    :goto_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 2826
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_13
    :goto_4
    if-ge v7, v2, :cond_14

    .line 2829
    aget-object v5, v3, v7

    .line 2830
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2830
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2834
    :cond_14
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_15
    const/16 v3, 0x2718

    if-ne v2, v3, :cond_16

    .line 2837
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    const-string v2, "ReferReceived:"

    .line 2839
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_16
    const/16 v3, 0x2719

    if-ne v2, v3, :cond_18

    .line 2843
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    if-nez v1, :cond_17

    const-string/jumbo v0, "rs is null"

    .line 2845
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2849
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReferStatus: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2849
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_18
    const/16 v3, 0x271b

    if-ne v2, v3, :cond_1a

    .line 2854
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_61

    .line 2855
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    if-nez v1, :cond_19

    const-string v0, "modCallData is null"

    .line 2857
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2861
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModifyCall - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->session()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", oldCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2862
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->oldType()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", newCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->newType()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2861
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_1a
    const/16 v3, 0x271a

    if-ne v2, v3, :cond_1d

    .line 2868
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1c

    .line 2869
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    if-nez v1, :cond_1b

    const-string/jumbo v0, "ur is null"

    .line 2871
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2875
    :cond_1b
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateRouteTable - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " op "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2877
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->operation()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " addr "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2876
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_61

    const-string v3, "calling UpdateRouteTable."

    .line 2881
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->operation()I

    move-result v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onUpdateRouteTableRequested(IILjava/lang/String;)V

    goto/16 :goto_1e

    .line 2885
    :cond_1c
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_1d
    const/16 v3, 0x2727

    if-ne v2, v3, :cond_1e

    .line 2888
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v8, :cond_61

    .line 2889
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2890
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v1

    const-string v2, "calling onUpdate Pani"

    .line 2891
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_61

    .line 2895
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onUpdatePani()V

    goto/16 :goto_1e

    :cond_1e
    const/16 v3, 0x272a

    const-string v10, "]"

    if-ne v2, v3, :cond_1f

    .line 2899
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v8, :cond_61

    .line 2900
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2901
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StackIF["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "calling onRefreshRegNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_61

    .line 2906
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRefreshRegNotification(I)V

    goto/16 :goto_1e

    :cond_1f
    const/16 v3, 0x4e28

    if-ne v2, v3, :cond_20

    const-string v2, "Echolocate Notify receive"

    .line 2910
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_61

    .line 2912
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    .line 2913
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_20
    const/16 v3, 0x4e24

    if-ne v2, v3, :cond_21

    .line 2916
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    const-string v2, "ReceiveSmsNotification: "

    .line 2918
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_21
    const/16 v3, 0x4e23

    if-ne v2, v3, :cond_22

    .line 2922
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    const-string v2, "SmsRpAckNotification: "

    .line 2924
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_22
    const/16 v3, 0x2713

    const-string v11, "MM/dd/yyyy HH:mm:ss.SSS"

    if-ne v2, v3, :cond_34

    .line 2928
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_61

    .line 2929
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    .line 2930
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v11, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2931
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2933
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->origin()I

    move-result v4

    if-nez v4, :cond_23

    return-void

    .line 2938
    :cond_23
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_24

    .line 2939
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_24
    move-object v4, v5

    :goto_5
    const-string v6, "\r\n"

    .line 2944
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2946
    array-length v9, v6

    move-object v12, v5

    move v11, v7

    :goto_6
    if-ge v11, v9, :cond_27

    aget-object v13, v6, v11

    .line 2947
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_25

    move-object v12, v13

    .line 2951
    :cond_25
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cseq"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 2952
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_26
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2957
    :cond_27
    :goto_7
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2958
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->phoneId()J

    move-result-wide v11

    long-to-int v9, v11

    .line 2959
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIPMSG["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2961
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->rawContentsLength()I

    move-result v11

    new-array v12, v8, [B

    aput-byte v7, v12, v7

    if-lez v11, :cond_28

    .line 2964
    new-array v12, v11, [B

    move v13, v7

    :goto_8
    if-ge v13, v11, :cond_28

    .line 2966
    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->rawContents(I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 2970
    :cond_28
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v13, "phoneId"

    .line 2971
    invoke-virtual {v11, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    .line 2972
    invoke-virtual {v11, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "rawContents"

    .line 2973
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2975
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v12

    if-nez v12, :cond_29

    .line 2976
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[-->] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    iget-object v12, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v12, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_9

    .line 2979
    :cond_29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[<--] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v12, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v12, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2981
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "register"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const-string v11, "200"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 2983
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    iget v12, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    :cond_2a
    :goto_9
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-eqz v11, :cond_2b

    .line 2988
    invoke-interface {v11}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 2990
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v15

    const-string v18, ""

    const-string v19, ""

    .line 2991
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->hexContents()Ljava/lang/String;

    move-result-object v20

    move-object v13, v4

    move/from16 v16, v9

    move-object/from16 v17, v3

    .line 2988
    invoke-interface/range {v11 .. v20}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2995
    :cond_2b
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isEngMode()Z

    move-result v11

    if-nez v11, :cond_32

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v11

    if-nez v11, :cond_2c

    goto :goto_f

    .line 3007
    :cond_2c
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->mno()I

    move-result v11

    .line 3008
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoInverse(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 3010
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->isRcsProfile()Z

    move-result v12

    if-eqz v12, :cond_2e

    if-eqz v11, :cond_2d

    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v11

    if-eqz v11, :cond_2d

    goto :goto_a

    :cond_2d
    move v11, v7

    goto :goto_b

    :cond_2e
    :goto_a
    move v11, v8

    :goto_b
    move/from16 v17, v11

    if-eqz v11, :cond_30

    .line 3017
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v17, :cond_2f

    .line 3019
    invoke-static {v10, v4}, Lcom/sec/internal/log/IMSLog;->dx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 3021
    :cond_2f
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move-object v12, v4

    goto :goto_d

    :cond_30
    move-object v12, v5

    .line 3025
    :goto_d
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 3026
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v2

    if-ne v2, v8, :cond_31

    move v15, v8

    goto :goto_e

    :cond_31
    move v15, v7

    :goto_e
    const/16 v18, 0x0

    move-object v11, v4

    move-object v13, v6

    move-object v14, v3

    move/from16 v16, v9

    invoke-direct/range {v11 .. v18}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V

    .line 3025
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    goto :goto_11

    .line 2996
    :cond_32
    :goto_f
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 2998
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v2

    if-ne v2, v8, :cond_33

    move v15, v8

    goto :goto_10

    :cond_33
    move v15, v7

    :goto_10
    const/16 v17, 0x0

    move-object v11, v5

    move-object v12, v4

    move-object v13, v6

    move-object v14, v3

    move/from16 v16, v9

    invoke-direct/range {v11 .. v17}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V

    .line 2997
    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    .line 3029
    :goto_11
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_34
    const/16 v3, 0x2722

    if-ne v2, v3, :cond_37

    .line 3032
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;

    .line 3033
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 3034
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3035
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 3037
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->xcapMessage()Ljava/lang/String;

    move-result-object v3

    .line 3039
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3041
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-eqz v4, :cond_35

    .line 3042
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v9

    const/4 v10, 0x1

    const/16 v12, 0x64

    .line 3044
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->direction()I

    move-result v13

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    move-object v11, v3

    move-object v14, v2

    .line 3042
    invoke-interface/range {v9 .. v17}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    :cond_35
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    const-string v11, ""

    .line 3047
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->direction()I

    move-result v1

    if-eqz v1, :cond_36

    move v13, v8

    goto :goto_12

    :cond_36
    move v13, v7

    :goto_12
    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v9, v4

    move-object v10, v3

    move-object v12, v2

    invoke-direct/range {v9 .. v15}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V

    .line 3046
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    goto/16 :goto_1e

    :cond_37
    const/16 v3, 0x2723

    if-ne v2, v3, :cond_38

    .line 3049
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;

    .line 3050
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_38
    const/16 v3, 0x4e21

    if-ne v2, v3, :cond_3a

    .line 3052
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_39

    .line 3053
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;

    .line 3054
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;->id()J

    move-result-wide v2

    long-to-int v2, v2

    .line 3055
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;->delay()J

    move-result-wide v3

    long-to-int v1, v3

    .line 3056
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    if-eqz v0, :cond_61

    .line 3057
    invoke-interface {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;->onAlarmRequested(II)V

    goto/16 :goto_1e

    .line 3060
    :cond_39
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_3a
    const/16 v3, 0x4e22

    if-ne v2, v3, :cond_3c

    .line 3063
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_3b

    .line 3064
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;

    .line 3065
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;->id()J

    move-result-wide v1

    long-to-int v1, v1

    .line 3066
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    if-eqz v0, :cond_61

    .line 3067
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;->onAlarmCancelled(I)V

    goto/16 :goto_1e

    .line 3070
    :cond_3b
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_3c
    const/16 v3, 0x2afc

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2afa

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2afd

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2aff

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2afb

    if-eq v2, v3, :cond_60

    const/16 v3, 0x4a38

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2b00

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2ee1

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2ee4

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2ee5

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2ee3

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2ee2

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2af9

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2b01

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2b02

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2b03

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2b04

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2b05

    if-eq v2, v3, :cond_60

    const/16 v3, 0x2b06

    if-eq v2, v3, :cond_60

    const/16 v3, 0x4e2d

    if-eq v2, v3, :cond_60

    const/16 v3, 0x4e2c

    if-eq v2, v3, :cond_60

    const/16 v3, 0x4e2b

    if-ne v2, v3, :cond_3d

    goto/16 :goto_1d

    :cond_3d
    const/16 v3, 0x2afe

    if-eq v2, v3, :cond_5f

    const/16 v3, 0x2b07

    if-ne v2, v3, :cond_3e

    goto/16 :goto_1c

    :cond_3e
    const/16 v3, 0x4650

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x4651

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x4653

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x4652

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x4654

    if-eq v2, v3, :cond_5e

    const/16 v3, 0x4655

    if-ne v2, v3, :cond_3f

    goto/16 :goto_1b

    :cond_3f
    const/16 v3, 0x32c9

    if-eq v2, v3, :cond_5d

    const/16 v3, 0x32ca

    if-eq v2, v3, :cond_5d

    const/16 v3, 0x32cb

    if-eq v2, v3, :cond_5d

    const/16 v3, 0x32cc

    if-eq v2, v3, :cond_5d

    const/16 v3, 0x32cd

    if-ne v2, v3, :cond_40

    goto/16 :goto_1a

    :cond_40
    const/16 v3, 0x36b1

    if-eq v2, v3, :cond_5c

    const/16 v3, 0x36b2

    if-eq v2, v3, :cond_5c

    const/16 v3, 0x36b3

    if-eq v2, v3, :cond_5c

    const/16 v3, 0x36b4

    if-eq v2, v3, :cond_5c

    const/16 v3, 0x36b5

    if-ne v2, v3, :cond_41

    goto/16 :goto_19

    :cond_41
    const/16 v3, 0x3a99

    if-ne v2, v3, :cond_42

    const-string/jumbo v2, "received NOTIFY_OPTIONS_RECEIVED"

    .line 3123
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_42
    const/16 v3, 0x4e25

    if-ne v2, v3, :cond_43

    .line 3126
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    .line 3127
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_43
    const/16 v3, 0x4e26

    if-ne v2, v3, :cond_44

    const-string/jumbo v2, "received NOTIFY_X509_CERT_VERIFY_REQUEST"

    .line 3129
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    .line 3132
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 3134
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onX509CertVerifyRequested(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;)V

    goto/16 :goto_1e

    :cond_44
    const/16 v3, 0x271c

    if-ne v2, v3, :cond_45

    .line 3136
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;

    .line 3137
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;->calledPartyNumber()Ljava/lang/String;

    move-result-object v1

    .line 3138
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_45
    const/16 v3, 0x4e27

    if-ne v2, v3, :cond_48

    .line 3140
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;

    .line 3141
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    move v3, v7

    :goto_13
    if-ge v3, v5, :cond_61

    .line 3143
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 3144
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v7

    .line 3145
    :goto_14
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->ipAddrListLength()I

    move-result v9

    if-ge v8, v9, :cond_46

    .line 3146
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->ipAddrList(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_46
    if-eqz v4, :cond_47

    .line 3149
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->hostname()Ljava/lang/String;

    move-result-object v8

    .line 3150
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->port()J

    move-result-wide v9

    long-to-int v9, v9

    .line 3149
    invoke-virtual {v4, v8, v6, v9, v2}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onDnsResponse(Ljava/lang/String;Ljava/util/List;II)V

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_48
    const/16 v3, 0x3e81

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x3e82

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x3e83

    if-eq v2, v3, :cond_5b

    const/16 v3, 0x3e84

    if-ne v2, v3, :cond_49

    goto/16 :goto_18

    :cond_49
    const/16 v3, 0x4269

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x426a

    if-eq v2, v3, :cond_5a

    const/16 v3, 0x426b

    if-ne v2, v3, :cond_4a

    goto/16 :goto_17

    :cond_4a
    const/16 v3, 0x2720

    if-ne v2, v3, :cond_4b

    .line 3163
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_61

    .line 3164
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    .line 3165
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_4b
    const/16 v3, 0x2721

    if-ne v2, v3, :cond_4c

    .line 3168
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_61

    .line 3169
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 3170
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_4c
    const/16 v3, 0x2735

    if-ne v2, v3, :cond_4d

    .line 3173
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_61

    .line 3174
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/QuantumSecurityStatusEvent;

    .line 3175
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_4d
    const/16 v3, 0x2726

    if-ne v2, v3, :cond_4e

    .line 3178
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_61

    .line 3179
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    .line 3180
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_4e
    const/16 v3, 0x4e29

    if-ne v2, v3, :cond_50

    .line 3183
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_61

    .line 3184
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;

    .line 3186
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v11, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3188
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;

    .line 3189
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;->tag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;->value()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_4f

    .line 3193
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3195
    :cond_4f
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_50
    const/16 v3, 0x2725

    if-ne v2, v3, :cond_51

    .line 3198
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_61

    .line 3199
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    .line 3200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMF Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3201
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->event()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->volume()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->duration()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Endbit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->endbit()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3200
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_51
    const/16 v3, 0x272e

    if-eq v2, v3, :cond_59

    const/16 v3, 0x272f

    if-eq v2, v3, :cond_59

    const/16 v3, 0x2730

    if-eq v2, v3, :cond_59

    const/16 v3, 0x2731

    if-eq v2, v3, :cond_59

    const/16 v3, 0x2732

    if-ne v2, v3, :cond_52

    goto/16 :goto_16

    :cond_52
    const/16 v3, 0x4e2a

    if-ne v2, v3, :cond_53

    .line 3213
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x51

    if-ne v2, v3, :cond_61

    .line 3214
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    .line 3215
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_53
    const/16 v3, 0x2728

    if-ne v2, v3, :cond_54

    .line 3218
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_61

    .line 3219
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    .line 3220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3221
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->len()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3220
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_54
    const/16 v3, 0x272c

    if-ne v2, v3, :cond_55

    const-string/jumbo v2, "receive contact activated"

    .line 3225
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;

    .line 3227
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;->handle()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v1

    .line 3228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_61

    .line 3231
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onContactActivated(I)V

    goto/16 :goto_1e

    :cond_55
    const/16 v3, 0x272d

    if-ne v2, v3, :cond_57

    const-string/jumbo v2, "receive contact uri in reg-event"

    .line 3234
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;

    .line 3236
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v11

    .line 3238
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3239
    :goto_15
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriListLength()I

    move-result v2

    if-ge v7, v2, :cond_56

    .line 3240
    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriList(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 3242
    :cond_56
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->emergencyNumbers()Ljava/lang/String;

    move-result-object v15

    .line 3243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uri size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3244
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uri_list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", emergencyNumbers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3243
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->isRegi()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v13

    .line 3247
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriType()Ljava/lang/String;

    move-result-object v14

    .line 3248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contactUriType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v10, :cond_61

    .line 3251
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 3252
    invoke-virtual/range {v10 .. v15}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_57
    const/16 v3, 0x2734

    if-ne v2, v3, :cond_58

    const-string/jumbo v2, "receive cmc info"

    .line 3255
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3257
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    .line 3258
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 3260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CmcInfo - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->sessionId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_58
    const/16 v3, 0x2738

    if-ne v2, v3, :cond_61

    const-string/jumbo v2, "receive current location discovery during emergency call"

    .line 3263
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x54

    if-ne v2, v3, :cond_61

    .line 3265
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;-><init>()V

    .line 3266
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CurrentLocationDiscoveryDuringEmergencyCall;

    .line 3267
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3211
    :cond_59
    :goto_16
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3161
    :cond_5a
    :goto_17
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3157
    :cond_5b
    :goto_18
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3121
    :cond_5c
    :goto_19
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3115
    :cond_5d
    :goto_1a
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3109
    :cond_5e
    :goto_1b
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3102
    :cond_5f
    :goto_1c
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1e

    .line 3098
    :cond_60
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processNotify: IM/FT notify received "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_61
    :goto_1e
    return-void
.end method

.method private processResponse(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;)V
    .locals 6

    .line 2509
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resid()I

    move-result v0

    .line 2512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->serialString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SECIMSJ"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processResponse: reqId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 2518
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 2520
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v0

    .line 2522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processResponse: handle "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2523
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2525
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2522
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2527
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2528
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCallResponse: handle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->handle()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2530
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2532
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "processSendSmsResp:"

    .line 2533
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2535
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const-string/jumbo v0, "processStartSessionResp:"

    .line 2536
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2538
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    const-string/jumbo v0, "processCloseSessionResp:"

    .line 2539
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2541
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    const-string/jumbo v0, "processStartMediaResp:"

    .line 2542
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartMediaResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartMediaResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2544
    :cond_6
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_7

    const-string/jumbo v0, "processSendImMessageResp:"

    .line 2545
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2547
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    const-string/jumbo v0, "processSendImNotiResp:"

    .line 2548
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2550
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_9

    const-string/jumbo v0, "processSendSlmResponse:"

    .line 2551
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2553
    :cond_9
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_a

    const-string/jumbo v0, "processXdmGeneralResponse"

    .line 2554
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/XdmGeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/XdmGeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2556
    :cond_a
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_b

    const-string/jumbo v0, "processCshGeneralResponse"

    .line 2557
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2559
    :cond_b
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_c

    const-string/jumbo v0, "processUpdateParticipantsResp"

    .line 2560
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto :goto_0

    .line 2562
    :cond_c
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_d

    const-string/jumbo v0, "processSendMessageRevokeInternalResp"

    .line 2563
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto :goto_0

    .line 2565
    :cond_d
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_e

    const-string/jumbo v0, "processSendEucResponseResponse"

    .line 2566
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto :goto_0

    .line 2568
    :cond_e
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_f

    const-string/jumbo v0, "processSipdialogGeneralResp"

    .line 2569
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;

    .line 2571
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->success()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->sipmessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2572
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->sipmessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_f
    move-object p2, v3

    .line 2578
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->findAndRemoveRequest(I)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2579
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    if-eqz p1, :cond_10

    .line 2580
    invoke-static {p1, p2, v3}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 2581
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method private ratReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I
    .locals 0

    .line 631
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->startRequestUpdateRat(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 632
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 633
    invoke-static {p1, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->addRat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 634
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->endRequestUpdateRat(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V
    .locals 2

    .line 3366
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 3367
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3370
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static replaceImpuPatterns(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2586
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2587
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2590
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 2591
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    .line 2592
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 2593
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 2595
    div-int/lit8 v5, v5, 0x4

    :goto_1
    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit8 v6, v5, 0x2

    sub-int v6, v4, v6

    .line 2600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int v7, v3, v5

    .line 2601
    invoke-virtual {v0, v2, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v1, v6, :cond_2

    const-string/jumbo v7, "x"

    .line 2603
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v3, v4

    sub-int v1, v3, v5

    .line 2605
    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2607
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 2609
    :cond_3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 2611
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requestCapabilityExchange(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;JLjava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1607
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestCapabilityExchange: uri: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "extension iari "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StackIF"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {p1, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 1615
    invoke-virtual {p1, p7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    const/4 p7, -0x1

    if-eqz p8, :cond_0

    .line 1619
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p5

    .line 1618
    invoke-static {p1, p8, p5}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object p5

    .line 1620
    invoke-static {p1, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->createCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p5

    move p6, p7

    goto :goto_1

    .line 1621
    :cond_0
    sget p8, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, p8

    cmp-long p8, p5, v1

    if-eqz p8, :cond_2

    .line 1622
    invoke-static {p5, p6}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object p5

    .line 1623
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    if-lez p6, :cond_2

    .line 1624
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [I

    .line 1625
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 p8, 0x0

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v2, p8, 0x1

    .line 1626
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p6, p8

    move p8, v2

    goto :goto_0

    .line 1628
    :cond_1
    invoke-static {p1, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->createMyFeaturesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p5

    move p6, p5

    move p5, p7

    goto :goto_1

    :cond_2
    move p5, p7

    move p6, p5

    .line 1632
    :goto_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->startRequestOptionsCapExchange(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1633
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1634
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1635
    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addExtFeature(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p5, p7, :cond_3

    .line 1637
    invoke-static {p1, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_3
    if-eq p6, p7, :cond_4

    .line 1640
    invoke-static {p1, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addMyFeatures(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    const-string/jumbo p0, "requestCapabilityExchange request built"

    .line 1642
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->endRequestOptionsCapExchange(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZZ",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1761
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1763
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1765
    new-array v3, v2, [I

    .line 1767
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v5, v1, 0x1

    .line 1768
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    aput v4, v3, v1

    move v1, v5

    goto :goto_0

    .line 1770
    :cond_0
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->createUriVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    :cond_1
    const/4 p2, -0x1

    if-eqz p5, :cond_2

    .line 1775
    invoke-virtual {v0, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p5

    goto :goto_1

    :cond_2
    move p5, p2

    .line 1778
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->startRequestPresenceSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p1

    .line 1779
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1780
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addIsAnonymous(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1781
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addIsListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq p5, p2, :cond_3

    .line 1784
    invoke-static {v0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1787
    :cond_3
    invoke-static {v0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addGzipEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-lez v2, :cond_4

    .line 1790
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    int-to-long p1, p7

    .line 1793
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addExpires(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1795
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->endRequestPresenceSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1796
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2c7

    .line 1797
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x40

    .line 1798
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1799
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1800
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1801
    invoke-direct {p0, v0, p1, p8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "StackIF"

    const-string/jumbo p1, "requestSubscribe: sent"

    .line 1803
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private send(Lcom/sec/internal/ims/core/handler/secims/ImsRequest;)V
    .locals 4

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 608
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->getReqBuffer()Lcom/google/flatbuffers/FlatBufferBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    const-string v2, "SECIMSJ"

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->serialString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    array-length p1, v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processCommandBuffer([BI)V

    .line 612
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 606
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 3

    .line 657
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->startImsBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v1, v0

    .line 660
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addTrid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v1, 0x1

    .line 662
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addMsgType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 665
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addMsg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 668
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->endImsBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 671
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 673
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->obtain(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Message;)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    move-result-object p1

    .line 674
    iput v0, p1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    .line 675
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->send(Lcom/sec/internal/ims/core/handler/secims/ImsRequest;)V

    return-void
.end method

.method private sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V
    .locals 1

    .line 652
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->getBuilder()Lcom/google/flatbuffers/FlatBufferBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->getOffset()I

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private serialString(I)Ljava/lang/String;
    .locals 6

    .line 3274
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v0, p1

    const-wide/32 v2, -0x80000000

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    .line 3277
    rem-long/2addr v2, v4

    .line 3279
    rem-long/2addr v0, v4

    .line 3282
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5b

    .line 3285
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3286
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    rsub-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_0

    const/16 v2, 0x30

    .line 3287
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3290
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    .line 3291
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3292
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMockInstance(Lcom/sec/internal/ims/core/handler/secims/StackIF;)V
    .locals 0

    .line 310
    sput-object p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-void
.end method

.method private setVowifi5gsaModeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JI)I
    .locals 0

    .line 638
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVowifi5gsaMode;->startRequestSetVowifi5gsaMode(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 639
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVowifi5gsaMode;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p2, p4

    .line 640
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVowifi5gsaMode;->addVowifi5gsaMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 641
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVowifi5gsaMode;->endRequestSetVowifi5gsaMode(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private updatePaniReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 616
    invoke-interface {p4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 618
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 619
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v1

    .line 621
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->startRequestUpdatePani(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 622
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 623
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p4, v1, :cond_1

    .line 625
    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addLastPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 627
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->endRequestUpdatePani(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public acceptCallTransfer(IIZILjava/lang/String;Landroid/os/Message;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "acceptTransferCall:"

    .line 2035
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeAcceptCallTransfer(IIZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public answerCall(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " idcExtra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeAnswerCall(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public cancelTransferCall(IILandroid/os/Message;)V
    .locals 0

    .line 2022
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeCancelTransferCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public clearAllCallInternal(I)V
    .locals 2

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllCallInternal: cmcType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeClearAllCallInternal(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public conference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 8

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conference: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " confUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subscribe "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dialogType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " origUri "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    invoke-static {p7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " useAnonymousUpdate "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "StackIF"

    .line 1987
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "participants: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-static/range {p1 .. p12}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeConference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p13

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method configCall(IZZZ)V
    .locals 2

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configCall: ttySessionRequired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rttSessionRequired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " automode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2130
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigCall(IZZZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public configRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)V
    .locals 2

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configRCS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2148
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public configRegistration(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "StackIF"

    const-string p2, "configRegistration: no imei"

    .line 2169
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 2173
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigRegistration(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public configSrvcc(II)V
    .locals 3

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configSrvcc():  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigSrvcc(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public createUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Landroid/os/Message;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "createUA:"

    .line 682
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeCreateUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public deleteTcpClientSocket(I)V
    .locals 3

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteTcpClientSocket: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1903
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->startRequestDeleteTcpClientSocket(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1904
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1905
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->endRequestDeleteTcpClientSocket(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1906
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x514

    .line 1907
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x8

    .line 1908
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1909
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1911
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 1913
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public deleteUA(ILandroid/os/Message;)V
    .locals 2

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUA: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeDeleteUA(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public deregister(IZLandroid/os/Message;)V
    .locals 3

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregister: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1851
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->startRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1852
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const-wide/16 v1, 0x0

    .line 1853
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addPcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1854
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addRegExp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    xor-int/lit8 p1, p2, 0x1

    .line 1855
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addIsExplicitDeregi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1856
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->endRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1858
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x68

    .line 1859
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p2, 0x4

    .line 1860
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1861
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1863
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1865
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public dump()V
    .locals 4

    .line 3374
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->checkLogEnable()Z

    move-result v0

    const-string v1, "StackIF"

    if-eqz v0, :cond_1

    const-string v0, "Dump of IMS Stack:"

    const/4 v2, 0x0

    .line 3375
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3376
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3377
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;

    .line 3378
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3380
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    :cond_1
    const-string v0, "Dump of IMS SIP messages history:"

    .line 3383
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3385
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 3386
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->-$$Nest$fgetmIsEncrypted(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3388
    :cond_2
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    const-string p0, "Dump of IMS log data:"

    .line 3390
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3392
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->dumpSecretKey(Ljava/lang/String;)V

    .line 3393
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public enableQuantumSecurityService(IZ)V
    .locals 0

    .line 2103
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeEnableQuantumSecurityService(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V
    .locals 2

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeEndCall(IILcom/sec/internal/constants/ims/SipReason;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public extendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendToConfCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " confUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subscribe "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dialogType "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " currSession "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p7

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "StackIF"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "participants: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    invoke-static/range {p1 .. p13}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeExtendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public handleCmcCsfb(II)V
    .locals 0

    .line 2124
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHandleCmcCsfb(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public handleDtmf(IIIIILandroid/os/Message;)V
    .locals 2

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmf: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHandleDtmf(IIIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public holdCall(IILandroid/os/Message;)V
    .locals 2

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHoldCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public holdVideo(IILandroid/os/Message;)V
    .locals 2

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdVideo: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHoldVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public initCmcJni(Ljava/lang/Object;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initCmc(Ljava/lang/Object;)V

    return-void
.end method

.method public initMediaJni(Ljava/lang/Object;)V
    .locals 0

    .line 384
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initStack(Ljava/lang/Object;)V

    return-void
.end method

.method public makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " origUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dispName "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ecscf "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cli "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " PEmergencyInfo "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " alertInfo "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p13

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isLteEpsOnlyAttached "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p14

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " p2p "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p15, :cond_0

    .line 1835
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v8, "null"

    :goto_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cmcBoundSessionId "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " replaceCallId "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " cmcEdCallSlot "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " idcExtra "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "StackIF"

    .line 1828
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-static/range {p1 .. p20}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeMakeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p21

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public mergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " session2 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " confUri "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eventSubscribe "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dialogType "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " origUri "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    invoke-static/range {p8 .. p8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " referUriType "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " removeReferUriType "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " referUseAsserted "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p11

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " useAnonymousUpdate "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p12

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "StackIF"

    .line 1970
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    invoke-static/range {p1 .. p14}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeMergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p15

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public modifyCallType(III)V
    .locals 2

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeModifyCallType(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public modifyVideoQuality(III)V
    .locals 2

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyVideoQuality(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldQual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newQual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeModifyVideoQuality(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public networkSuspended(IZ)V
    .locals 2

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "register: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeNetworkSuspended(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public openSipDialog(Z)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "openSipDialog"

    .line 1040
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1045
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->startRequestOpenSipDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1046
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->addIsRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1047
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->endRequestOpenSipDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1050
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x4b1

    .line 1051
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x6b

    .line 1052
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1053
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1054
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 1056
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public progressIncomingCall(IILjava/util/HashMap;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "progressIncomingCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeProgressIncomingCall(IILjava/util/HashMap;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 2031
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makePublishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2027
    invoke-static/range {p1 .. p6}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makePullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public register(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pcscfAddr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " port "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " service "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " imMsgTech "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p12

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "StackIF"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iput v1, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    .line 703
    invoke-static/range {p1 .. p13}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeRegister(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v1

    move-object/from16 v2, p14

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public registerCallStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerCallStatusEvent:"

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerCdpnInfoEvent:"

    .line 522
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerCmcInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerCmcRecordEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerCmcRecordEvent:"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerConferenceUpdateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerConferenceUpdateEvent:"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerCurrentLocationDiscoveryDuringEmergencyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerCurrentLocationDiscoveryDuringEmergencyCallEvent:"

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCurrentLocationDiscoveryDuringEmergencyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerDedicatedBearerEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerDedicatedBearerEvent:"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerDialogEvent: "

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerEcholocateEvent:"

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerEucrEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerEucrEvent"

    .line 577
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerForRrcConnectionEvent:"

    .line 542
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerImHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerImdnHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerIshEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerMiscListener(Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    return-void
.end method

.method public registerModifyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerModifyCallEvent:"

    .line 438
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerModifyVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerModifyVideoEvent:"

    .line 444
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerNewIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerNewIncomingCallEvent:"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerNewIncomingSmsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerNewIncomingSmsEvent: "

    .line 473
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerOptionsHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerOptionsHandler: "

    .line 512
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerPresenceEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerPresenceEvent: "

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerQuantumSecurityStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerQuantumSecurityStatusEvent:"

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mQuantumSecurityStatusEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerRawSipIncomingEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerRawSipIncomingEvent:"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerRawSipOutgoingEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerRawSipOutgoingEvent:"

    .line 562
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerReferReceivedEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerReferReceivedEvent: "

    .line 485
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerReferStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerRtpLossRate : "

    .line 572
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSSEventRegistrants(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerRawSipEvent: "

    .line 567
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSlmHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSmsRpAckEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerSmsRpAckEvent:"

    .line 479
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerUaListener Handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "registerVideoEvent:"

    .line 455
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerVshEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerXqMtrip(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;Landroid/os/Message;)V
    .locals 3

    .line 1869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sessionId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " response "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackIF"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    new-instance p1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1875
    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1876
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->startRequestRejectCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p2

    .line 1877
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1878
    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p2

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addStatusCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1879
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addReasonPhrase(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1880
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->endRequestRejectCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 1882
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p3, 0xd6

    .line 1883
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p3, 0x15

    .line 1884
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1885
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1887
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 1889
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public rejectModifyCallType(II)V
    .locals 2

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rejectModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeRejectModifyCallType(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)V
    .locals 2

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replyModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeReplyModifyCallType(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public replyWithIdc(IIIILjava/lang/String;)V
    .locals 2

    .line 2451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "replayWithIdc(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", idcExtra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeReplyWithIdc(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public requestOptionsReqCapabilityExchange(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move v0, p1

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestOptionsReqCapabilityExchange: uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StackIF"

    .line 1454
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v5, v0

    move-object v3, p0

    move-object v4, v1

    move-object v7, p2

    move-wide v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1458
    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestCapabilityExchange(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;JLjava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 1460
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v3, 0x2ef

    .line 1461
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x51

    .line 1462
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1463
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1464
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    const/4 v3, 0x0

    move-object v4, p0

    .line 1465
    invoke-direct {p0, v1, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string/jumbo v0, "requestOptionsReqCapabilityExchange: sent"

    .line 1467
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestOptionsReqSendCmcCheckMsg(ILjava/lang/String;)V
    .locals 4

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestOptionsReqSendCmcCheckMsg: uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    .line 1471
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1475
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1476
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->startRequestOptionsSendCmcCheckMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 1477
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1478
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1480
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->endRequestOptionsSendCmcCheckMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1481
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f1

    .line 1482
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x52

    .line 1483
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1484
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1485
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 1487
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string/jumbo p0, "requestOptionsReqSendCmcCheckMsg: sent"

    .line 1488
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestPublish(ILcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
    .locals 12

    const-string/jumbo v0, "request publish enter"

    const-string v1, "StackIF"

    .line 1352
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1356
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getDeviceList()Ljava/util/List;

    move-result-object v3

    .line 1357
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    .line 1358
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPersonList()Ljava/util/List;

    move-result-object v5

    .line 1367
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-lez v6, :cond_1

    .line 1368
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1369
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/presence/PersonTuple;

    add-int/lit8 v10, v8, 0x1

    .line 1370
    invoke-direct {p0, v0, v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createPersonTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/PersonTuple;)I

    move-result v9

    aput v9, v6, v8

    move v8, v10

    goto :goto_0

    .line 1372
    :cond_0
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createPersonTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v7

    .line 1375
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1376
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1377
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/presence/DeviceTuple;

    add-int/lit8 v10, v8, 0x1

    .line 1378
    invoke-direct {p0, v0, v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createDeviceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/DeviceTuple;)I

    move-result v9

    aput v9, v6, v8

    move v8, v10

    goto :goto_2

    .line 1380
    :cond_2
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createDeviceTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v7

    .line 1384
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1385
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1386
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/presence/ServiceTuple;

    add-int/lit8 v9, v2, 0x1

    .line 1387
    invoke-direct {p0, v0, v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createServiceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/ServiceTuple;)I

    move-result v10

    aput v10, v6, v2

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "serviceTuple.displayText : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    goto :goto_4

    .line 1390
    :cond_4
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createServiceTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v7

    .line 1394
    :goto_5
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1395
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_6

    :cond_6
    move v4, v7

    .line 1399
    :goto_6
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1400
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_7

    :cond_7
    move v6, v7

    .line 1404
    :goto_7
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 1405
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_8

    :cond_8
    move v8, v7

    .line 1409
    :goto_8
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1410
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    goto :goto_9

    :cond_9
    move v9, v7

    .line 1413
    :goto_9
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->startRequestPresencePublish(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-ne v2, v7, :cond_a

    return-void

    .line 1417
    :cond_a
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addServiceTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1419
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1420
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addETag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1422
    :cond_b
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getExpireTime()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addExpireTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq v8, v7, :cond_c

    .line 1424
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v5, v7, :cond_d

    .line 1427
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addPersonTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v3, v7, :cond_e

    .line 1430
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addDeviceTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v9, v7, :cond_f

    .line 1433
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addPidfXml(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v6, v7, :cond_10

    .line 1436
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    int-to-long v2, p1

    .line 1438
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1439
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPublishGzipEnabled()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addGzipEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1441
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->endRequestPresencePublish(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1442
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2bd

    .line 1443
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x3e

    .line 1444
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1445
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1446
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1447
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string/jumbo p0, "requestPublish: sent"

    .line 1449
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestSubscribe(ILcom/sec/ims/util/ImsUri;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 9

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v5, p4

    move-object v8, p5

    .line 1747
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V

    return-void
.end method

.method public requestSubscribeList(ILjava/util/List;ZLjava/lang/String;ZILandroid/os/Message;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 1754
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V

    return-void
.end method

.method public requestUnpublish(I)V
    .locals 3

    .line 1807
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1808
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->startRequestPresenceUnpublish(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1809
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1810
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->endRequestPresenceUnpublish(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1811
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x2be

    .line 1812
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x3f

    .line 1813
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1814
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1815
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 1816
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "StackIF"

    const-string/jumbo p1, "requestUnpublish: sent"

    .line 1818
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestUpdateFeatureTag(IJ)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "requestUpdateFeatureTag"

    .line 1066
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeRequestUpdateFeatureTag(IJ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public resumeCall(IILandroid/os/Message;)V
    .locals 2

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeResumeCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public resumeVideo(IILandroid/os/Message;)V
    .locals 2

    .line 1949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resumeVideo: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeResumeVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public send(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
    .locals 2

    .line 600
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mRequest:Lcom/google/flatbuffers/FlatBufferBuilder;

    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mOffset:I

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendAlarmWakeUp(I)V
    .locals 3

    .line 2327
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2329
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->startRequestAlarmWakeUp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 2330
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2331
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->endRequestAlarmWakeUp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2333
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x385

    .line 2334
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x6f

    .line 2335
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2336
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2338
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 2340
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendAuthResponse(IILjava/lang/String;)V
    .locals 2

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAuthResponse: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendAuthResponse(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendCapexErrorResponse(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)I
    .locals 6

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResvponse: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    .line 1577
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCapexErrorResponse: uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transaction Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1579
    invoke-virtual {v2, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1580
    invoke-virtual {v2, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    .line 1583
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1584
    invoke-virtual {v2, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1587
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->startRequestOptionsSendErrorResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v4, p1

    .line 1588
    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1589
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1590
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addTxId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1591
    invoke-static {v2, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addErrorCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1592
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1594
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->endRequestOptionsSendErrorResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1595
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f2

    .line 1596
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x50

    .line 1597
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1598
    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1599
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1600
    invoke-direct {p0, v2, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string/jumbo p0, "sendCapexErrorResponse: sent"

    .line 1601
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public sendCapexResponse(ILjava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)I
    .locals 7

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p5, :cond_0

    return v0

    .line 1497
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCapexResponse: uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transaction Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1499
    invoke-virtual {v2, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1500
    invoke-virtual {v2, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p5

    .line 1501
    invoke-virtual {v2, p8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p8

    .line 1507
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    cmp-long v4, p3, v4

    if-eqz v4, :cond_2

    .line 1508
    invoke-static {p3, p4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object p3

    .line 1509
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_2

    .line 1510
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [I

    .line 1511
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v4, v3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v4, 0x1

    .line 1512
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, p4, v4

    move v4, v6

    goto :goto_0

    .line 1514
    :cond_1
    invoke-static {v2, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->createMyFeaturesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p3

    goto :goto_1

    :cond_2
    move p3, v0

    .line 1518
    :goto_1
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->startRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v4, p1

    .line 1519
    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1520
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1521
    invoke-static {v2, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addLastSeen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p3, v0, :cond_3

    .line 1523
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addMyFeatures(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1525
    :cond_3
    invoke-static {v2, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addTxId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1526
    invoke-static {v2, p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addExtFeature(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1527
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->endRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1528
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f0

    .line 1529
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4f

    .line 1530
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1531
    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1532
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1533
    invoke-direct {p0, v2, p1, p7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string/jumbo p0, "sendCapexResponse: sent"

    .line 1534
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public sendCapexResponse(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Message;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            ")I"
        }
    .end annotation

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse list: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p4, :cond_0

    return v0

    .line 1544
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCapexResponse: uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transaction Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1546
    invoke-virtual {v2, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1547
    invoke-virtual {v2, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    .line 1549
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, p3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object p3

    .line 1551
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->createMyFeatureListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p3

    .line 1552
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->startRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v4, p1

    .line 1553
    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1554
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1555
    invoke-static {v2, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addLastSeen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p3, v0, :cond_1

    .line 1557
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addMyFeatureList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1559
    :cond_1
    invoke-static {v2, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addTxId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1560
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->endRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1561
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f0

    .line 1562
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4f

    .line 1563
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1564
    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1565
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1566
    invoke-direct {p0, v2, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string/jumbo p0, "sendCapexResponse: list sent"

    .line 1567
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public sendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "sendCmcInfo"

    .line 2091
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendDmState(IZ)V
    .locals 3

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDmState():  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendDmState(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dnsQueryByNaptr: hostnames "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dnsservers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " family "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static/range {p1 .. p9}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendDtmfEvent(IILjava/lang/String;)V
    .locals 2

    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmfEvent: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dtmfEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendDtmfEvent(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendEmergencyLocationPublish(I)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "sendEmergencyLocationPublish"

    .line 2119
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendEmergencyLocationPublish(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "sendInfo"

    .line 2085
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendMediaEvent(IIII)V
    .locals 3

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendMediaEvent(): target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2377
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->startRequestSendMediaEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p4

    .line 2378
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long v1, p3

    .line 2379
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long v1, p2

    .line 2380
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addTarget(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long v1, p1

    .line 2381
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2382
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->endRequestSendMediaEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2385
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 p3, 0x1

    if-ne p4, p3, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, p3, :cond_1

    :cond_0
    const/16 p2, 0xec

    .line 2387
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xe6

    .line 2389
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :goto_0
    const/16 p2, 0x4d

    .line 2391
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2392
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2393
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2395
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendNegotiatedLocalSdp(ILjava/lang/String;)V
    .locals 0

    .line 2461
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendNegotiatedLocalSdp(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendRelayEvent(II)V
    .locals 3

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendRelayEvent(): stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2404
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->startRequestSendRelayEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 2405
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->addStreamId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p1, p2

    .line 2406
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2407
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->endRequestSendRelayEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2410
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xed

    .line 2411
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4e

    .line 2412
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2413
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2414
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2416
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 3

    const-string v0, "StackIF"

    const-string/jumbo v1, "sendRtpStatsToStack()"

    .line 2426
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2431
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->startRequestRtpStatsToStack(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2432
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDirection:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2433
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mMeasuredPeriod:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addMeasuredperiod(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2434
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mJitter:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addJitter(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2435
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDelay:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addDelay(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2436
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mLossData:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addLossrate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2437
    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mChannelId:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addChannelid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2438
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->endRequestRtpStatsToStack(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2441
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x388

    .line 2442
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x69

    .line 2443
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2444
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2445
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 2447
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSip: sipMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1018
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1019
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 1022
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->startRequestSendSip(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v2, :cond_1

    .line 1024
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->addSipMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p1, p1

    .line 1026
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1027
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->endRequestSendSip(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1030
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x4b0

    .line 1031
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x6a

    .line 1032
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1033
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1034
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1036
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 5

    .line 2238
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2239
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 2240
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    .line 2241
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2242
    invoke-virtual {v0, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p5

    .line 2243
    invoke-virtual {v0, p6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p6

    const/4 v2, -0x1

    if-eqz p7, :cond_0

    .line 2246
    invoke-virtual {v0, p7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p7

    goto :goto_0

    :cond_0
    move p7, v2

    .line 2249
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->startRequestSendMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p1

    .line 2250
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2251
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addSmsc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2252
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addLocalUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2253
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentLen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2254
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2255
    invoke-static {v0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2256
    invoke-static {v0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentSubType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p7, v2, :cond_1

    .line 2258
    invoke-static {v0, p7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addInReplyTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2260
    :cond_1
    invoke-static {v0, p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addIsEmergency(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 2262
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->endRequestSendMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2264
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x191

    .line 2265
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x21

    .line 2266
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2267
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2269
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2271
    invoke-direct {p0, v0, p1, p9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSmsResponse(ILjava/lang/String;I)V
    .locals 4

    .line 2301
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 2304
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2307
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->startRequestReceiveSmsResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 2308
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_1

    .line 2310
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p1, p3

    .line 2312
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2313
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->endRequestReceiveSmsResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2315
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x193

    .line 2316
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x23

    .line 2317
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2318
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2320
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2322
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSmsRpAckResponse(ILjava/lang/String;)V
    .locals 4

    .line 2276
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 2279
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2282
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->startRequestSendRpAckResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 2283
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_1

    .line 2285
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2287
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->endRequestSendRpAckResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2289
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x192

    .line 2290
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x22

    .line 2291
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2292
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2294
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2296
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendText(IILjava/lang/String;I)V
    .locals 2

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendText: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendText(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendVcsInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 2

    const-string v0, "StackIF"

    const-string/jumbo v1, "sendVcsInfo"

    .line 2097
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendVcsInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendX509CertVerifyResponse(ZLjava/lang/String;)V
    .locals 3

    .line 2344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendX509CertVerifyResponse(): result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2350
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 2351
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 2354
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->startRequestX509CertVerifyResult(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v2, :cond_1

    .line 2356
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2358
    :cond_1
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->addResult(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 2359
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->endRequestX509CertVerifyResult(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2362
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x386

    .line 2363
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x70

    .line 2364
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2365
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2366
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2368
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public setImsFramework(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method public setPreferredImpu(ILjava/lang/String;)V
    .locals 2

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferredImpu: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " impu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSetPreferredImpu(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public setQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2107
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSetQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .locals 2

    .line 3398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSilentLogEnabled: onoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 3402
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->startRequestSilentLogEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3403
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->addOnoff(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 3404
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->endRequestSilentLogEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 3407
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x387

    .line 3408
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x71

    .line 3409
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 3410
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3411
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 3413
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public setTextMode(II)V
    .locals 2

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextMode(): mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2422
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSetTextMode(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public setVideoCrtAudio(IIZ)V
    .locals 2

    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoCrtAudio: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSetVideoCrtAudio(IIZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public setVowifi5gsaMode(II)V
    .locals 3

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVowifi5gsaMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vowifi5gsaMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p1

    .line 991
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setVowifi5gsaModeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JI)I

    move-result p1

    .line 994
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x73

    .line 995
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x77

    .line 997
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 998
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1000
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 1002
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public startCamera(III)V
    .locals 2

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCamera: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartCamera(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
    .locals 3

    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCmcRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StackIF"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    invoke-static/range {p1 .. p16}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startLocalRingBackTone(IIIILandroid/os/Message;)V
    .locals 2

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startLocalRingBackTone: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartLocalRingBackTone(IIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startRecord(IILjava/lang/String;)V
    .locals 2

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartRecord(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startVideoEarlyMedia(II)V
    .locals 0

    .line 2115
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartVideoEarlyMedia(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public stopCamera(I)V
    .locals 2

    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopCamera: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopCamera(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public stopLocalRingBackTone(I)V
    .locals 2

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopLocalRingBackTone: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopLocalRingBackTone(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public stopRecord(II)V
    .locals 2

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopRecord(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public transferCall(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 2018
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeTransferCall(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public unRegisterUaListener(I)V
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterUaListener Handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAudioInterface: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateAudioInterface(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateCall(IIIILjava/lang/String;)V
    .locals 0

    .line 2081
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateCmcExtCallCount(II)V
    .locals 0

    .line 2111
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateCmcExtCallCount(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateConfCall(IIIILjava/lang/String;)V
    .locals 2

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " confSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updateCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " participantID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateConfCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateGeolocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 21

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackIF"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 794
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 795
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 799
    :goto_0
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 800
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 804
    :goto_1
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 805
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    .line 809
    :goto_2
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 810
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, -0x1

    .line 814
    :goto_3
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mVerticalAxis:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 815
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mVerticalAxis:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_4

    :cond_4
    const/4 v8, -0x1

    .line 819
    :goto_4
    iget-object v9, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOrientation:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 820
    iget-object v9, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOrientation:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v9, -0x1

    .line 824
    :goto_5
    iget-object v10, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 825
    iget-object v10, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    goto :goto_6

    :cond_6
    const/4 v10, -0x1

    .line 829
    :goto_6
    iget-object v11, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 830
    iget-object v11, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    goto :goto_7

    :cond_7
    const/4 v11, -0x1

    .line 834
    :goto_7
    iget-object v12, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 835
    iget-object v12, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    goto :goto_8

    :cond_8
    const/4 v12, -0x1

    .line 839
    :goto_8
    iget-object v13, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 840
    iget-object v13, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    goto :goto_9

    :cond_9
    const/4 v13, -0x1

    .line 844
    :goto_9
    iget-object v14, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 845
    iget-object v14, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    goto :goto_a

    :cond_a
    const/4 v14, -0x1

    .line 849
    :goto_a
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 850
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    goto :goto_b

    :cond_b
    const/4 v15, -0x1

    .line 854
    :goto_b
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 855
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_c

    :cond_c
    const/4 v4, -0x1

    .line 859
    :goto_c
    iget-object v0, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 860
    iget-object v0, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    move/from16 v16, v3

    goto :goto_d

    :cond_d
    move/from16 v16, v3

    const/4 v0, -0x1

    .line 864
    :goto_d
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 865
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move/from16 v17, v5

    goto :goto_e

    :cond_e
    move/from16 v17, v5

    const/4 v3, -0x1

    .line 869
    :goto_e
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 870
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    move/from16 v18, v6

    goto :goto_f

    :cond_f
    move/from16 v18, v6

    const/4 v5, -0x1

    .line 874
    :goto_f
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 875
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    move/from16 v19, v7

    goto :goto_10

    :cond_10
    move/from16 v19, v7

    const/4 v6, -0x1

    .line 879
    :goto_10
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 880
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    move/from16 v20, v8

    goto :goto_11

    :cond_11
    move/from16 v20, v8

    const/4 v7, -0x1

    .line 884
    :goto_11
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 885
    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_12

    :cond_12
    const/4 v1, -0x1

    .line 888
    :goto_12
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->startRequestUpdateGeolocation(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v8, -0x1

    if-eq v1, v8, :cond_13

    .line 891
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLocationtime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_13
    if-eq v7, v8, :cond_14

    .line 895
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addPc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_14
    if-eq v6, v8, :cond_15

    .line 899
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addHno(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_15
    if-eq v5, v8, :cond_16

    .line 903
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA6(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_16
    if-eq v3, v8, :cond_17

    .line 907
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA3(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_17
    if-eq v0, v8, :cond_18

    .line 911
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA1(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_18
    if-eq v4, v8, :cond_19

    .line 915
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addCountry(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_19
    if-eq v15, v8, :cond_1a

    .line 919
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addDeviceid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1a
    if-eq v14, v8, :cond_1b

    .line 923
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addOs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1b
    if-eq v13, v8, :cond_1c

    .line 927
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addRadiusuom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1c
    if-eq v12, v8, :cond_1d

    .line 931
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addSrsname(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1d
    if-eq v11, v8, :cond_1e

    .line 935
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addRetentionexpires(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1e
    if-eq v10, v8, :cond_1f

    .line 939
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addProvidertype(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1f
    if-eq v9, v8, :cond_20

    .line 943
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addOrientation(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_20
    move/from16 v4, v20

    if-eq v4, v8, :cond_21

    .line 947
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addVerticalaxis(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_21
    move/from16 v4, v19

    if-eq v4, v8, :cond_22

    .line 951
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addAccuracy(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_22
    move/from16 v4, v18

    if-eq v4, v8, :cond_23

    .line 955
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addAltitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_23
    move/from16 v4, v17

    if-eq v4, v8, :cond_24

    .line 959
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLongitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_24
    move/from16 v3, v16

    if-eq v3, v8, :cond_25

    .line 963
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLatitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_25
    move/from16 v0, p1

    int-to-long v0, v0

    .line 966
    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 967
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->endRequestUpdateGeolocation(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 970
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x259

    .line 971
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x5c

    .line 972
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 973
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 974
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    const/4 v1, 0x0

    move-object/from16 v3, p0

    .line 976
    invoke-direct {v3, v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateNrSaModeOnStart(I)V
    .locals 3

    .line 3434
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 3435
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateNrSaModeOnStart;->startRequestUpdateNrSaModeOnStart(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 3436
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateNrSaModeOnStart;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 3438
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateNrSaModeOnStart;->endRequestUpdateNrSaModeOnStart(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 3439
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xf9

    .line 3440
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x7c

    .line 3441
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 3442
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3443
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 3444
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "StackIF"

    const-string/jumbo p1, "updateNrSaModeOnStart: sent"

    .line 3446
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateNtpTimeOffset(J)V
    .locals 2

    .line 3417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNtpTimeOffset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 3420
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->startRequestNtpTimeOffset(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3421
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->addOffset(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 3422
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->endRequestNtpTimeOffset(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 3424
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x389

    .line 3425
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x72

    .line 3426
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 3427
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3428
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 3430
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updatePani(ILjava/util/List;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p1

    .line 736
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updatePaniReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/util/List;)I

    move-result p1

    .line 738
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x258

    .line 739
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x44

    .line 741
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 742
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 744
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 746
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateRat(II)V
    .locals 8

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v4, p1

    int-to-long v6, p2

    move-object v2, p0

    move-object v3, v0

    .line 774
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->ratReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I

    move-result p1

    .line 776
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x25a

    .line 777
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x53

    .line 779
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 780
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 782
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 784
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateScreenOnOff(II)V
    .locals 2

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScreenOnOff: on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2154
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateScreenOnOff(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateServiceVersion(ILjava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateServiceVersion:phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2164
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateServiceVersion(ILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateTimeInPlani(IJ)V
    .locals 8

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTimeInPlani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v4, p1

    move-object v2, p0

    move-object v3, v0

    move-wide v6, p2

    .line 755
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->planiTimeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I

    move-result p1

    .line 757
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x25b

    .line 758
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x54

    .line 760
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 761
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 763
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 765
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateVceConfig(IZ)V
    .locals 2

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVceConfig: handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateVceConfig(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateWithIdc(IILjava/lang/String;)V
    .locals 0

    .line 2457
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateWithIdc(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateXqEnable(IZ)V
    .locals 3

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateXqEnable():  enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateXqEnable(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

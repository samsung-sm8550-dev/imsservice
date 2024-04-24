.class public Lcom/sec/internal/ims/servicemodules/session/SessionModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "SessionModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;
.implements Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;
    }
.end annotation


# static fields
.field private static final EVENT_CLOSE_SESSION:I = 0x7

.field private static final EVENT_CONFIGURED:I = 0x8

.field private static final EVENT_INCOMING_MESSAGE:I = 0x4

.field private static final EVENT_INCOMING_SESSION:I = 0x1

.field private static final EVENT_REJECT_SESSION:I = 0x6

.field private static final EVENT_SEND_MESSAGE_FAILED:I = 0x5

.field private static final EVENT_SESSION_CLOSED:I = 0x3

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x2

.field public static final INTENT_FILTER_MESSAGE:Ljava/lang/String; = "com.gsma.services.rcs.extension.action.NEW_MESSAGING_SESSION"

.field public static final INTENT_FILTER_STREAM:Ljava/lang/String; = "com.gsma.services.rcs.extension.action.NEW_STREAMING_SESSION"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MIMETYPE_ALL:Ljava/lang/String; = "com.gsma.services.rcs/*"

.field public static final MIMETYPE_PREFIX:Ljava/lang/String; = "com.gsma.services.rcs/"

.field public static final NAME:Ljava/lang/String;

.field private static final SERVICE_ID_CALL_COMPOSER:Ljava/lang/String; = "gsma.callcomposer"

.field private static final SERVICE_ID_POST_CALL:Ljava/lang/String; = "gsma.callunanswered"

.field private static final SERVICE_ID_SHARED_MAP:Ljava/lang/String; = "gsma.sharedmap"

.field private static final SERVICE_ID_SHARED_SKETCH:Ljava/lang/String; = "gsma.sharedsketch"

.field private static mInactivityTimeout:J

.field private static final sRequiredServices:[Ljava/lang/String;


# instance fields
.field private canRegisterExt:Z

.field private isEnableFailedMedia:Z

.field private isWaitingForCloseTagSendingComplete:Z

.field private final mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

.field private mCallComposerTimerIdle:[I

.field private mCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mComposerAuth:[Z

.field private mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private final mContext:Landroid/content/Context;

.field private final mIariTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessagingSessionStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessagingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mPostCallAuth:[Z

.field private final mRegisteredServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationId:I

.field private final mServiceIDsFromMetaData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedMapAuth:[Z

.field private mSharedSketchAuth:[Z

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method public static synthetic $r8$lambda$MieMG7jMtwPyP2lH4wVZxsxwm7g(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->lambda$updateConfig$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 111
    const-class v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    .line 122
    const-class v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->NAME:Ljava/lang/String;

    const-string v0, "ec"

    .line 138
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sRequiredServices:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 142
    sput-wide v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mInactivityTimeout:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)V
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    .line 145
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    .line 146
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    .line 147
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    const/16 p1, 0xb4

    .line 148
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallComposerTimerIdle:[I

    const/4 p1, 0x2

    new-array v0, p1, [Z

    .line 149
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    new-array v0, p1, [Z

    .line 150
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    new-array v0, p1, [Z

    .line 151
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    new-array p1, p1, [Z

    .line 152
    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    const/4 v0, -0x1

    .line 159
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mServiceIDsFromMetaData:Ljava/util/List;

    .line 163
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 164
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    .line 169
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 170
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 171
    new-instance p1, Lcom/sec/internal/ims/servicemodules/session/EcBigDataProcessor;

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/session/EcBigDataProcessor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/session/SessionModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    .line 172
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 173
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const-string p1, "SessionModule"

    .line 174
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private adjustAcceptTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 594
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    invoke-static {p0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 597
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const-string p1, "application/vnd.gsma.encall+xml"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 599
    :pswitch_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "message/cpim"

    .line 600
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 603
    :pswitch_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "application/vnd.gsma.rcs-ft-http+xml"

    .line 604
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const-string p1, "application/vnd.gsma.sharedmap+xml"

    .line 607
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    const-string p1, "application/vnd.gsma.sharedsketch+xml"

    .line 610
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x68ab1bb3 -> :sswitch_3
        -0x2caa3cb1 -> :sswitch_2
        -0x15cde156 -> :sswitch_1
        0x3f3764c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private adjustAcceptWrappedTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 621
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 622
    invoke-static {p0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "message/imdn+xml"

    .line 626
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "application/vnd.gsma.rcs-ft-http+xml"

    .line 627
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method private adjustServiceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 564
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "gsma.sharedsketch"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p0, "gsma.callcomposer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p0, "gsma.sharedmap"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p0, "gsma.callunanswered"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    return-object p0

    :pswitch_1
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    return-object p0

    :pswitch_2
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    return-object p0

    :pswitch_3
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x824ef82 -> :sswitch_3
        0x3d50e5e9 -> :sswitch_2
        0x585bc92c -> :sswitch_1
        0x73f9a3ff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private adjustServiceId2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-string p0, "gsma.callcomposer"

    return-object p0

    :pswitch_1
    const-string p0, "gsma.callunanswered"

    return-object p0

    :pswitch_2
    const-string p0, "gsma.sharedmap"

    return-object p0

    :pswitch_3
    const-string p0, "gsma.sharedsketch"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68ab1bb3 -> :sswitch_3
        -0x2caa3cb1 -> :sswitch_2
        -0x15cde156 -> :sswitch_1
        0x3f3764c0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildServiceConfig(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private createIncomingImSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 673
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 674
    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 675
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 676
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 677
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 678
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRecipients:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 679
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 680
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 681
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 682
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 683
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 684
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 685
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 686
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    .line 687
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->serviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 688
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 690
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private createOutgoingMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 2

    .line 525
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 527
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 528
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 529
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 530
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 531
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 532
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 533
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    new-instance p1, Ljava/lang/String;

    .line 534
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 535
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    filled-new-array {p2}, [Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p2

    .line 537
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 536
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 538
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 539
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 540
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 541
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 543
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 544
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p0

    return-object p0
.end method

.method private createOutgoingSession(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 644
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 645
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance p3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 647
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    .line 648
    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 649
    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 650
    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    .line 651
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 652
    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 653
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    .line 654
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 655
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p3

    .line 656
    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 657
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 658
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->serviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 659
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->acceptTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 660
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->acceptWrappedTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 663
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private getActiveCall(Lcom/sec/ims/util/ImsUri;)Z
    .locals 2

    .line 1386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 1387
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {v0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$updateConfig$0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "im"

    .line 959
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "slm"

    .line 960
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 959
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 5

    .line 1051
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mChatId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p0, "onIncomingMessageReceived: mChatId is null."

    .line 1054
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1057
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-nez v1, :cond_1

    const-string p0, "onIncomingMessageReceived: Session not found."

    .line 1059
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 1064
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-interface {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;[BLjava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method private onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 6

    .line 975
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingSessionReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 977
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 979
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 980
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createIncomingImSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    .line 981
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mServiceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustServiceId2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 983
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getActiveCall(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    .line 984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveCall result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string v3, "gsma.sharedmap"

    .line 987
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gsma.sharedsketch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 988
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number not in call, reject invite. ServiceID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    const/4 p1, 0x6

    .line 990
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 994
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.gsma.services.rcs/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onIncomingSessionInvited(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->processIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    :cond_3
    return-void
.end method

.method private onRejectSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1

    .line 1072
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onRejectSession"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession()V

    return-void
.end method

.method private onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 5

    .line 1015
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mChatId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1020
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    :goto_0
    if-nez v1, :cond_1

    const-string p0, "onSessionClosed: Session not found."

    .line 1026
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1030
    :cond_1
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    .line 1031
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v2, v3, :cond_3

    .line 1034
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionClosed: Session closed by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 1038
    :cond_3
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    return-void
.end method

.method private onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 3

    .line 1003
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionEstablished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mChatId:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-nez p0, :cond_0

    const-string p0, "onSessionEstablished: Session not found."

    .line 1007
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1011
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->receiveSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    return-void
.end method

.method public static setInactivityTimeout(J)V
    .locals 3

    .line 196
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set InactivityTimeout=: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sput-wide p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mInactivityTimeout:J

    return-void
.end method

.method private updateConfig(I)V
    .locals 3

    .line 954
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateFeatures(I)V

    .line 955
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    .line 957
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    .line 958
    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 959
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/session/SessionModule$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 960
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 959
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "profile is null, return !!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p1

    .line 965
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rcsProfile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 970
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    :cond_1
    return-void
.end method

.method private declared-synchronized updateFeatures(I)V
    .locals 8

    monitor-enter p0

    .line 1396
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "rcs"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-wide/16 v4, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "updateFeatures: RCS is disabled, return"

    .line 1400
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aput-wide v4, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1402
    monitor-exit p0

    return-void

    .line 1405
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallComposerTimerIdle:[I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string v6, "callComposerTimerIdle"

    .line 1406
    invoke-static {v6, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1405
    invoke-static {v1, v6, v7}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, p1

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeatures: mCallComposerTimerIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallComposerTimerIdle:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string v1, "composerAuth"

    .line 1410
    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1409
    invoke-static {v0, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1411
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    if-eq v0, v3, :cond_2

    const/4 v6, 0x3

    if-ne v0, v6, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    aput-boolean v2, v1, p1

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeatures: Composer enable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sharedMapAuth"

    .line 1415
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1414
    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeatures: SharedMapAuth enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sharedSketchAuth"

    .line 1419
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1418
    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeatures: SharedSketchAuth enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "postCallAuth"

    .line 1423
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1422
    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeatures: PostCallAuth enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aput-wide v4, v0, p1

    .line 1428
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_4

    .line 1429
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    or-long/2addr v1, v4

    aput-wide v1, v0, p1

    .line 1430
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1433
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_5

    .line 1434
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 1435
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1438
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_6

    .line 1439
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 1440
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1443
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_7

    .line 1444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v0, p1

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 1445
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    const-string v1, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1447
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateFeatures: mEnabledFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1448
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public abortSession(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    const/4 v0, 0x7

    .line 509
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public closeSession(Ljava/lang/String;)V
    .locals 3

    .line 513
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-nez p0, :cond_0

    const-string p0, "closeSession: Session not found."

    .line 516
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    return-void
.end method

.method public deRegisterApp()V
    .locals 0

    .line 0
    return-void
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1331
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataProcessor()Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;
    .locals 0

    .line 1286
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1267
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 2

    .line 1042
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1043
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1240
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1241
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    .line 1242
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInactivityTimeout()J
    .locals 2

    .line 185
    sget-wide v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mInactivityTimeout:J

    return-wide v0
.end method

.method public getMaxMsrpLengthForExtensions()I
    .locals 2

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "extensionsMaxMSRPSize"

    .line 179
    invoke-static {p0, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1306
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1311
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1316
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1321
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    return-object p0
.end method

.method public getMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 2

    .line 481
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 485
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetwork(I)Landroid/net/Network;
    .locals 0

    .line 1345
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1346
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1347
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOwnUris(I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 1354
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1355
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 1358
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1326
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneIdByIMSI(Ljava/lang/String;)I
    .locals 1

    .line 190
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p0

    .line 191
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 1296
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method

.method public getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 1301
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 719
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->sRequiredServices:[Ljava/lang/String;

    return-object p0
.end method

.method public getUserAlias(IZ)Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, ""

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 907
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 910
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 945
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateConfig(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    .line 941
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    .line 942
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->closeSession(Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onRejectSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 927
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 928
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onIncomingMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V

    goto :goto_0

    .line 922
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 923
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    goto :goto_0

    .line 917
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 918
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    goto :goto_0

    .line 912
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 913
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->onIncomingSessionReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .line 730
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    const-string v0, "SessionModule init"

    .line 731
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    return-void
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6

    .line 551
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustServiceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-direct {p0, v2, p3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustAcceptTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 553
    invoke-direct {p0, v2, p4}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->adjustAcceptWrappedTypes(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 555
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    .line 557
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createOutgoingSession(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->startSession()V

    const/4 p2, 0x0

    .line 559
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    return-object p1
.end method

.method public isServiceActivated(Ljava/lang/String;)Z
    .locals 5

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceActivated,serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1133
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    const-string v1, "gsma"

    .line 1134
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 1137
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    .line 1145
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const-string p1, "Easymode on, return "

    .line 1148
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    return v2

    .line 1152
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mServiceIDsFromMetaData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_4
    :goto_1
    const-string p1, "isServiceActivated: current network is 2G, return "

    .line 1140
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    return v2

    :cond_5
    const/4 v1, 0x5

    .line 1159
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "callunanswered"

    .line 1160
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1161
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mPostCallAuth:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_6
    const-string v4, "callcomposer"

    .line 1162
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mComposerAuth:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_7
    const-string/jumbo v4, "sharedmap"

    .line 1164
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedMapAuth:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_8
    const-string/jumbo v4, "sharedsketch"

    .line 1166
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1167
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mSharedSketchAuth:[Z

    aget-boolean p0, p0, v0

    return p0

    .line 1169
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mServiceIDsFromMetaData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v3

    :cond_b
    return v2
.end method

.method public isServiceRegistered()Z
    .locals 0

    .line 743
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiConnected()Z
    .locals 2

    .line 1272
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1273
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1275
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isWifiConnected: Default NW is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1279
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0xc

    .line 1280
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1281
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 747
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->NAME:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needDeRegister(Ljava/lang/String;)Z
    .locals 2

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needDeRegister "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/util/Hashtable;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 754
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    .line 755
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isServiceRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 756
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needRegister(Ljava/lang/String;)Z
    .locals 2

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needRegister "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/util/Hashtable;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 767
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo()V

    .line 768
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isServiceRegistered()Z

    move-result p0

    if-nez p0, :cond_0

    .line 769
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAddParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onAddParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onBlockedMessageReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 1367
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1369
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 1370
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1372
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1379
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nConnecteCalls = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p2, v1, :cond_2

    .line 1381
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mCallList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public onChangeGroupAliasFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChangeGroupAliasSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChangeGroupChatIconFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChangeGroupChatIconSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChangeGroupChatLeaderFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onChangeGroupChatLeaderSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onChangeGroupChatSubjectFailed(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChangeGroupChatSubjectSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChatClosed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChatEstablished(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 263
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v1, :cond_1

    .line 264
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne v0, v1, :cond_0

    .line 265
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->FAILED_MEDIA:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    .line 266
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onChatStatusUpdate: State is FAILED MEDIA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChatStatusUpdate: isEnableFailedMedia = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 273
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onStateChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    goto :goto_0

    .line 276
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-ne p2, v0, :cond_3

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 278
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->INITIAL:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    if-eq p2, v0, :cond_4

    .line 279
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessionStates:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfigured(I)V
    .locals 1

    .line 786
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    const/16 v0, 0x8

    .line 787
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 778
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n errorcode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 780
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    const/4 p1, 0x1

    .line 781
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 792
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    const/4 v0, 0x1

    .line 793
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    .line 796
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 798
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->closeSession(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGroupChatIconDeleted(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGroupChatLeaderInformed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onHandleParticipants(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onImErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onIncomingMessageProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Lcom/sec/internal/ims/servicemodules/im/ImSession;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 244
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    if-eq v0, v1, :cond_0

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    :cond_0
    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 2

    .line 214
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mBigDataProcessor:Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;->onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-nez p1, :cond_0

    const-string p0, "onMessageSendingSucceeded: Session not found."

    .line 220
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;

    .line 225
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;->onMessagesFlushed(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWaitingForCloseTagSendingComplete:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 229
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageSendingSucceeded : EVENT_CLOSE_SESSION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 230
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onNotifyParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onNotifyParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onNotifyParticipantsKickedOut(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onNotifyParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 6

    if-nez p1, :cond_0

    .line 806
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "regiInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 809
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 810
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 815
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegistrationId:I

    :cond_1
    const/4 v1, 0x0

    .line 818
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isEnableFailedMedia:Z

    .line 820
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 821
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 823
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "use_sipuri_for_urigenerator"

    .line 824
    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 825
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 826
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v4

    sget-object v5, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v4, v5, :cond_2

    .line 827
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    :cond_3
    const-string v2, "options"

    .line 833
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ec"

    .line 834
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vs"

    .line 835
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 836
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 838
    invoke-interface {p0, v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSHOnRegi(ZI)V

    :cond_4
    return-void
.end method

.method public onRemoveParticipantsFailed(Ljava/lang/String;Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
            ")V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onRemoveParticipantsSucceeded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onRequestIncomingFtTransferPath()Ljava/lang/String;
    .locals 1

    .line 1336
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1338
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onRequestSendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSendCanceledNotificationDone(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 2

    .line 873
    sget-object p2, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceSwitched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateFeatures(I)V

    return-void
.end method

.method public onSimChanged(I)V
    .locals 0

    .line 845
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onSimChanged(I)V

    return-void
.end method

.method public registerApp()V
    .locals 2

    const-string/jumbo v0, "registerApp"

    .line 853
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->buildServiceConfig(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "register ext done"

    .line 868
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    return-void
.end method

.method public registerMessagingSessionListener(Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;)V
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFromRevokingMessages(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)V
    .locals 2

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInstantMultimediaMessage,serviceId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1187
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createOutgoingMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p0

    .line 1189
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :cond_0
    return-void
.end method

.method public sendMultimediaMessage(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mMessagingSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-nez v0, :cond_0

    .line 497
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendMultimediaMessage: Session not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 501
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->createOutgoingMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p0

    .line 503
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method public setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public start()V
    .locals 3

    .line 879
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 880
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    const-string v0, "SessionModule start"

    .line 881
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 884
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 885
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 886
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 887
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 893
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 895
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mRegisteredServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 897
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingSession(Landroid/os/Handler;)V

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionEstablished(Landroid/os/Handler;)V

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImSessionClosed(Landroid/os/Handler;)V

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForImIncomingMessage(Landroid/os/Handler;)V

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unregisterForMessageFailed(Landroid/os/Handler;)V

    const-string v0, "SessionModule stop"

    .line 902
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    return-void
.end method

.method public updateAppInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1080
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    .line 1081
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1082
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "com.gsma.services.rcs.extension.action.NEW_MESSAGING_SESSION"

    .line 1083
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo(Ljava/lang/String;)V

    const-string v0, "com.gsma.services.rcs.extension.action.NEW_STREAMING_SESSION"

    .line 1084
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->updateAppInfo(Ljava/lang/String;)V

    .line 1085
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1086
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->canRegisterExt:Z

    :cond_0
    return-void
.end method

.method public updateAppInfo(Ljava/lang/String;)V
    .locals 9

    .line 1091
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.gsma.services.rcs/*"

    .line 1092
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 1093
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1094
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1099
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1100
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new app name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->log(Ljava/lang/String;)V

    .line 1103
    sget-object v3, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    monitor-enter v3

    .line 1104
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1105
    sget-object v4, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->ALL:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;

    goto :goto_1

    .line 1107
    :cond_0
    new-instance v4, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 1109
    :goto_1
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v4, :cond_3

    .line 1110
    invoke-virtual {v4}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    .line 1111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 1113
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v6}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    .line 1114
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1115
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1117
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->mIariTypes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1120
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1121
    invoke-virtual {v2, p1, v5}, Lcom/sec/internal/ims/servicemodules/session/SessionModule$AppInfo;->addType(Ljava/lang/String;Ljava/util/List;)V

    .line 1124
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

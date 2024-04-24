.class public Lcom/sec/internal/ims/servicemodules/gls/GlsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "GlsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;


# static fields
.field private static final AUTO_ACCEPT_FT_GLS:I = 0x0

.field private static final AUTO_SEND_FT_GLS:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mPushEnabled:[Z

.field private final mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

.field private phoneCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    .line 106
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 80
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    .line 107
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    .line 109
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 110
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 113
    new-instance v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-direct {v0, p2, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/gls/GlsModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    .line 115
    :goto_0
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    if-ge p1, p2, :cond_0

    .line 116
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p2

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    .line 419
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 420
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "\'"

    const-string v1, "&apos;"

    .line 421
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    .line 424
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    goto :goto_0

    .line 425
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 423
    :goto_0
    invoke-static {p1, p2, p3, p4, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p1

    .line 426
    new-instance p2, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p3, p5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsComposer;->compose(Lcom/sec/internal/ims/servicemodules/gls/GlsData;I)Ljava/lang/String;

    move-result-object p1

    .line 427
    sget-object p2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "generateGeoSms: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " by limit: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPagerModeLimit()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    .line 408
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "<"

    const-string v1, "&lt;"

    .line 409
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "\'"

    const-string v1, "&apos;"

    .line 410
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 412
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OWN_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    goto :goto_0

    .line 413
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;->OTHER_LOCATION:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 411
    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-result-object p0

    .line 414
    new-instance p1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlComposer;->compose(Lcom/sec/internal/ims/servicemodules/gls/GlsData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateXML(Ljava/lang/String;Lcom/sec/internal/omanetapi/nms/data/GeoLocation;)Ljava/lang/String;
    .locals 3

    .line 397
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 398
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 399
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 400
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    iget v1, v1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mRadius:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    const-string/jumbo v1, "sip:anonymous@anonymous.invalid"

    .line 402
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 404
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mLabel:Ljava/lang/String;

    invoke-static {p0, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isPushServiceAvailable()Z
    .locals 1

    .line 432
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable(I)Z

    move-result p0

    return p0
.end method

.method private isPushServiceAvailable(I)Z
    .locals 3

    .line 436
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_0

    .line 439
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsRegistration:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPushEnabled: true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 443
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 444
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_1

    const-string p0, "chatbot-communication"

    .line 445
    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 450
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "geolocation push is disabled."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static makeGlsData(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;)Lcom/sec/internal/ims/servicemodules/gls/GlsData;
    .locals 9

    .line 390
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 391
    new-instance v7, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-direct {v7, v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;-><init>(Ljava/util/Date;)V

    .line 392
    new-instance v8, Lcom/sec/internal/ims/servicemodules/gls/GlsData;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V

    return-object v8
.end method

.method private save2FileSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 362
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 382
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/FileUtils;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object p1, v1

    .line 371
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_0

    .line 376
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v1

    :catch_5
    move-exception p0

    move-object p1, v1

    .line 368
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_1

    .line 376
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    .line 378
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, p1

    :goto_5
    if-eqz v1, :cond_2

    .line 376
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 381
    :cond_2
    :goto_6
    throw p0

    :cond_3
    return-object v1
.end method

.method private updateFeatures(I)V
    .locals 5

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 552
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateFeatures: RCS is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    aput-boolean v1, p0, p1

    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mContext:Landroid/content/Context;

    const-string v3, "geolocPushAuth"

    .line 557
    invoke-static {v3, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 556
    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, p1

    .line 558
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures mPushEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mPushEnabled:[Z

    aget-boolean p1, v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_1
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->phoneCount:I

    if-ge v1, p1, :cond_2

    .line 561
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public acceptLocationShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 316
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onAcceptLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {p0, p1, v0, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public cancelLocationShare(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .locals 1

    .line 329
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCancelLocationShareInCallResponse(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V

    return-void

    .line 334
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 279
    sget-object v1, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "createInCallLocationShare()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 281
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    move-object/from16 v9, p6

    invoke-virtual {v0, v2, v2, v9, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCreateInCallLocationShareResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    move-object/from16 v9, p6

    const-string v1, "0"

    move-object/from16 v7, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 286
    invoke-static {v1, v7, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-direct {v0, v5, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->save2FileSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 290
    new-instance v3, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_2

    if-nez p8, :cond_1

    .line 293
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 294
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v10, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    move/from16 v11, p7

    move-object v15, v1

    invoke-interface/range {v3 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToSingleChat(ILjava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 297
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object v9, v0

    move-object v14, v1

    invoke-interface/range {v3 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->attachFileToGroupChat(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method public deleteGeolocSharings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onDeleteAllLocationShareResponse(ZLjava/util/List;)V

    return-void

    .line 347
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteMessages(Ljava/util/List;Z)Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 188
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 194
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPhoneIdByChatId(Ljava/lang/String;)I
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getPhoneIdByImdnId(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)I
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getPhoneIdByImdnId(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)I

    move-result p0

    return p0
.end method

.method public getPhoneIdByMessageId(I)I
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getPhoneIdByMessageId(I)I

    move-result p0

    return p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    const-string p0, "im"

    const-string v0, "gls"

    .line 141
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 99
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 88
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->startLocationShareInCall(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 94
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->acceptLocationShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 3

    .line 167
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigured : phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateFeatures(I)V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 158
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onIncomingTransferUndecided(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onIncomingLoactionShareInCall(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 493
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "auto_accept_gls"

    .line 494
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onOutgoingTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 5

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    .line 487
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 486
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onCreateInCallLocationShareResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 488
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 149
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered() phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", services : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mRegistrationIds:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 2

    .line 123
    sget-object p2, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceSwitched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateFeatures(I)V

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 475
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 477
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 478
    instance-of v0, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 464
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransferCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 466
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 467
    instance-of v0, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onLocationShareInCallCompleted(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    return-void
.end method

.method public registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    return-void
.end method

.method public rejectLocationShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 352
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onRejectLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 356
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {p0, p1, v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 212
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareLocationInChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    move/from16 v1, p1

    if-ne v1, v0, :cond_0

    .line 214
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 217
    :goto_0
    invoke-direct {v6, v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v1, 0x0

    move-object/from16 v9, p6

    invoke-virtual {v0, v7, v9, v8, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8

    :cond_1
    move-object/from16 v9, p6

    .line 222
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 223
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    move-result v0

    .line 224
    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    if-nez p9, :cond_9

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v10

    .line 228
    sget-object v11, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    move-object/from16 v12, p8

    invoke-interface {v10, v12, v11, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v10

    if-eqz v1, :cond_2

    .line 231
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 232
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 233
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 234
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v4, "text/plain"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, p10

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v10, :cond_3

    .line 237
    sget v5, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v10, v5}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    .line 238
    :cond_4
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 239
    invoke-static {v7, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v4, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, p10

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz v1, :cond_6

    .line 244
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    if-eqz v10, :cond_8

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    .line 245
    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 246
    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 247
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v4, "text/plain"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, p10

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 253
    :cond_8
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v10

    .line 254
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object v6, v10

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-object v8

    :cond_9
    if-eqz v1, :cond_a

    .line 257
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 258
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateGeoSms(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string/jumbo v4, "text/plain"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 264
    :cond_a
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 265
    invoke-static {v7, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->generateXML(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    const-string v4, "application/vnd.gsma.rcspushlocation+xml"

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move v7, v8

    move v8, v10

    move v9, v11

    move-object v10, v12

    move v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-interface/range {v0 .. v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;IZZZLjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shareLocationInChat(Ljava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 204
    invoke-virtual/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 130
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "start"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startLocationShareInCall(Ljava/lang/String;)V
    .locals 1

    .line 307
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->isPushServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mTranslation:Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onStartLocationShareInCallResponse(Ljava/lang/String;Z)V

    return-void

    .line 311
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->sendFile(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 136
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 5

    .line 501
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 502
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Already has ext info, no need update!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p0, :cond_1

    .line 507
    move-object p0, p1

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 508
    :cond_1
    instance-of p0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 510
    move-object p0, p1

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object p0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, "UTF-8"

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 515
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 516
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_5

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 521
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 525
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_3
    move-exception p0

    .line 519
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_2

    .line 530
    :catch_4
    :cond_3
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :goto_5
    if-eqz v0, :cond_4

    .line 525
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 529
    :catch_5
    :cond_4
    throw p0

    :cond_5
    move-object p0, v0

    .line 533
    :goto_6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 534
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Error!!! no gls data in message"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 537
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML BODY IS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 540
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsGeoSmsParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 542
    :cond_7
    new-instance v1, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;-><init>()V

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsXmlParser;->getGlsExtInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 544
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THE EXTINFO IS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateExtInfo(Ljava/lang/String;)V

    return-void
.end method

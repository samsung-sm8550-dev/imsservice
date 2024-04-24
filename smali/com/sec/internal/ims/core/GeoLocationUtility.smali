.class Lcom/sec/internal/ims/core/GeoLocationUtility;
.super Ljava/lang/Object;
.source "GeoLocationUtility.java"


# static fields
.field private static final ATT_SCC_E911_MAX_LOCATIONFIX_ACCURACY:F = 150.0f

.field private static final ATT_SCC_E911_MAX_LOCATIONFIX_AGE:J = 0x708L

.field private static final LOG_TAG:Ljava/lang/String; = "GeoLocationUtility"

.field private static mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static constructData(Landroid/location/Location;Ljava/lang/String;Landroid/content/Context;ZI)Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .locals 15

    move-object/from16 v0, p1

    .line 79
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const-string v5, "N"

    goto :goto_0

    :cond_0
    const-string v5, "S"

    .line 81
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-static {v1, v2, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v3, v8, v3

    if-lez v3, :cond_1

    const-string v3, "E"

    goto :goto_1

    :cond_1
    const-string v3, "W"

    .line 85
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9, v7}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/16 v6, 0x5a

    move/from16 v7, p4

    if-ne v7, v6, :cond_2

    float-to-double v6, v4

    const-wide v10, 0x3ffa666666666666L    # 1.65

    mul-double/2addr v6, v10

    double-to-float v4, v6

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    .line 93
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v10

    .line 96
    sget-object v11, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "constructData: providerType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " slatitude="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " slongitude="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " accuracy "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " verticalAxis "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " orientation "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " locationtime "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v5

    const/4 v12, 0x5

    .line 107
    invoke-virtual {v5, v12}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    const/16 v12, 0x154

    .line 108
    invoke-virtual {v5, v12}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 110
    new-instance v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-direct {v12}, Lcom/sec/internal/constants/ims/gls/LocationInfo;-><init>()V

    .line 112
    invoke-virtual {v5, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    .line 113
    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v13, "%.1f"

    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    .line 115
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    .line 116
    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mVerticalAxis:Ljava/lang/String;

    .line 117
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOrientation:Ljava/lang/String;

    .line 118
    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/GeoLocationUtility;->getInternetDateTimeFormat(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    const-string/jumbo v0, "urn:ogc:def:crs:EPSG::4326"

    .line 120
    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    const-string/jumbo v0, "urn:ogc:def:uom:EPSG::9001"

    .line 121
    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    .line 123
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:uuid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    if-eqz p3, :cond_7

    .line 132
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-direct {v0, v4, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 135
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    invoke-static {v1, v2, v8, v9, v0}, Lcom/sec/internal/ims/core/GeoLocationUtility;->getAddressUsingGeocoder(DDLandroid/location/Geocoder;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "geocoder is not created"

    .line 138
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    .line 141
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 143
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string v1, ""

    :goto_3
    iput-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    .line 145
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 147
    :cond_5
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    .line 148
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 149
    :cond_6
    invoke-virtual {v0}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    goto :goto_6

    :cond_7
    const-string v0, "Not fetching address from GeoCoder for VZW as its not required for 911 call"

    .line 153
    invoke-static {v11, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_8
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructData getAddressUsingGeocoder: mCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mA1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mA3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mA6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHNO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, ","

    const-string v2, "."

    .line 164
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    .line 165
    iget-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    .line 168
    :cond_9
    invoke-static {v12}, Lcom/sec/internal/ims/core/GeoLocationUtility;->updateLocationInfo(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    return-object v12
.end method

.method static constructData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/gls/LocationInfo;
    .locals 5

    .line 50
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructData, countryIso : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object p0, Lcom/sec/internal/ims/core/GeoLocationUtility;->mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    return-object p0

    .line 60
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/gls/LocationInfo;-><init>()V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 64
    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    .line 65
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/GeoLocationUtility;->getInternetDateTimeFormat(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    const-string/jumbo p1, "urn:ogc:def:crs:EPSG::4326"

    .line 66
    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    const-string/jumbo p1, "urn:ogc:def:uom:EPSG::9001"

    .line 67
    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    const-wide/16 v3, 0x3e8

    .line 69
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:uuid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    .line 71
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    .line 73
    invoke-static {v0}, Lcom/sec/internal/ims/core/GeoLocationUtility;->updateLocationInfo(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    return-object v0
.end method

.method static getAddressUsingGeocoder(DDLandroid/location/Geocoder;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Landroid/location/Geocoder;",
            ")",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p4

    move-wide v1, p0

    move-wide v3, p2

    .line 199
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 201
    sget-object p1, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAddressUsingGeocoder: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getInternetDateTimeFormat(J)Ljava/lang/String;
    .locals 9

    const-string v6, ":"

    const-string v0, "UTC"

    .line 176
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 p0, 0x18

    const/16 p1, 0xb

    .line 181
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->add(II)V

    const/4 p0, 0x1

    .line 183
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p0

    const/4 p0, 0x5

    .line 185
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 186
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v3, 0xc

    .line 187
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    .line 188
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xe

    .line 189
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v1

    move-object v1, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, v6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%2d-%02d-%02dT%02d%s%02d%s%02d.%02dZ"

    .line 191
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLocationValid(Landroid/location/Location;)Z
    .locals 5

    .line 207
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x708

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 208
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid location time expired location.time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " current time = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v2, 0x43160000    # 150.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 212
    sget-object v0, Lcom/sec/internal/ims/core/GeoLocationUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location received is not valid, hence not notifying acc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static declared-synchronized updateLocationInfo(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 1

    const-class v0, Lcom/sec/internal/ims/core/GeoLocationUtility;

    monitor-enter v0

    .line 46
    :try_start_0
    sput-object p0, Lcom/sec/internal/ims/core/GeoLocationUtility;->mLocationInfo:Lcom/sec/internal/constants/ims/gls/LocationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

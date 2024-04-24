.class public final Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;
.super Ljava/lang/Object;
.source "SoftphoneAuthUtils.java"


# static fields
.field private static final AUTH_NO_ERROR:Ljava/lang/String; = "DB"

.field private static final LOG_TAG:Ljava/lang/String; = "SoftphoneAuthUtils"

.field private static final mProdAppKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProdAppSecretMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    const-string v1, "mjoy9og9bd8bixjhxr1nannwgbalxudu"

    const-string v2, "SM-T837A"

    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "oxqybwzqkuke37qbfxhemdphjn8fc4wr"

    const-string v3, "SM-T387AA"

    .line 37
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dyp77kwaauqxx6aalgpjjq3ctoq1dzwk"

    const-string v4, "SM-T307U"

    .line 38
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "vebhpzvxemcw66cxkuh6jejji8fuux02"

    const-string v5, "SM-T878U"

    .line 39
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "5er7fnfab68atwddqjves0zulqytm6h1"

    const-string v6, "SM-T738U"

    .line 40
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "6r2qn1ynogq1oonmwonpv5lobqyu6oda"

    const-string v7, "SM-T227U"

    .line 41
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "owtkbetzu3savzaeffvxkmf4sy2fyj04"

    const-string v8, "SM-T727A"

    .line 42
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cvekphg6i8tvxd0sg9nvr0intbzojrdu"

    const-string v9, "SM-X808U"

    .line 43
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "xpjuljlq5ag1ifkmsxihhdr8fwp3veyc"

    const-string v10, "SM-X818U"

    .line 44
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "9zj1wcca2pb3rqsf5oe7g9nvzkyq3umw"

    const-string v11, "SM-X518U"

    .line 45
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p6ut7wzaawin5djekhjrg5lbulndwvel"

    const-string v12, "SM-X218U"

    .line 46
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    const-string/jumbo v1, "szyqu8oecuoikomhaooihdgbxrcjzfku"

    .line 52
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hekgi2kbc21bvjpnkorin95iiog6c9ol"

    .line 53
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "tuqlgat1pdra8x1mjxdnawt7psgxzsgo"

    .line 54
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iwrwi1uinfvouriy9lot6k87i1bblvmm"

    .line 55
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "m74jfhpfkyno22cqkg7qxttcsji49ifr"

    .line 56
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "wevnxxroqzvexxmacyvu0bbudwod8odm"

    .line 57
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "f1oxfdx8qr0w68yjqbo0yrv7ppm5qvjl"

    .line 58
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aihahbylgjxafflx2l7am6kucdgbxapx"

    .line 59
    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "s2ebpm3p0k5cy6cmhe0hclz2d3sxgubm"

    .line 60
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4rjw0snhruekib5ohldwskykgwobkg3u"

    .line 61
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "q3lhkrr1ousobdqmx1uyytqoeeraosxo"

    .line 62
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProfileFromTemplate(Landroid/content/Context;Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;Ljava/lang/String;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 6

    .line 171
    sget-object v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createProfileFromTemplate:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->getSoftphoneProfileList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 178
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 179
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profileTemplate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 185
    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/settings/ImsProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 187
    sget-object v1, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 188
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getAddressList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 191
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 192
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    const/4 v3, 0x2

    .line 193
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfPreference(I)V

    .line 195
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setAppId(Ljava/lang/String;)V

    .line 196
    invoke-static {p0, p2, p3}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->getSccLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inject profile="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v2
.end method

.method public static getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const-string p0, "Tablet"

    goto :goto_0

    :cond_0
    const-string p0, "Phone"

    :goto_0
    return-object p0
.end method

.method private static getSccLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 149
    sget-object v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSccLabel()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v1, p2

    .line 151
    invoke-static {p1, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_3

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSccLabel: found "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " records"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "label"

    .line 157
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 165
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1
.end method

.method private static getSoftphoneProfileList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "content://com.sec.ims.settings/profile"

    .line 127
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "mdmn_type=Softphone"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    invoke-static {p0, v1}, Lcom/sec/ims/settings/ImsProfileLoader;->getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public static processAkaAuthenticationResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;)Ljava/lang/String;
    .locals 3

    .line 111
    sget-object v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processAkaAuthenticationResponse()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;->mAuthenticationResponse:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->convertByteToHexWithLength([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;->mCipherKey:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->convertByteToHexWithLength([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse$ChallengeResponse;->mIntegrityKey:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->convertByteToHexWithLength([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static setupAppKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 67
    sget-object p0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->mProdAppKeyMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "inestcjvum7fuv9ssvy9phlq1kwgzsjg"

    :goto_0
    return-object p0
.end method

.method public static setupAppSecret(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 72
    sget-object p0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->mProdAppSecretMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "mkitwyspqpeszb34moy6ai7brzjvz7tm"

    :goto_0
    return-object p0
.end method

.method public static splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 78
    sget-object v0, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/2addr v4, v3

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rand length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v4, 0x2

    .line 82
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v4, v4, 0x4

    if-le v8, v4, :cond_0

    .line 84
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v1, v3

    add-int/lit8 v2, v1, 0x2

    .line 86
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autn length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rand: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autn: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    move-object v2, v7

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "wrong nonce format"

    .line 92
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    .line 95
    :goto_0
    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 96
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 97
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base64 randStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "base64 autnStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

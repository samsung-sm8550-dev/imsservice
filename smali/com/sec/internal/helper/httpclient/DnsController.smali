.class public Lcom/sec/internal/helper/httpclient/DnsController;
.super Ljava/lang/Object;
.source "DnsController.java"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field private static final BUF_SIZE:I = 0x800

.field private static final DNS_PORT:I = 0x35

.field private static final TAG:Ljava/lang/String; = "DnsController"

.field public static final TIMEOUT:I = 0xbb8

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_AAAA:I = 0x2

.field public static final TYPE_AAAA_PREF:I = 0x6

.field public static final TYPE_A_PREF:I = 0x5

.field public static final TYPE_NAPTR:I = 0x3

.field static mListBsf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field static mListNaf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreBsfname:Ljava/lang/String;

.field private static mPreNafname:Ljava/lang/String;


# instance fields
.field bsfRetryCounter:I

.field isNaf:Z

.field private mBsfHostname:Ljava/lang/String;

.field mDnsAddress:Ljava/net/InetAddress;

.field mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

.field mDnsType:I

.field private mIsLookAhead:Z

.field mMno:Lcom/sec/internal/constants/Mno;

.field private mNafHostname:Ljava/lang/String;

.field mNetwork:Landroid/net/Network;

.field mSrvRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/SRVRecord;",
            ">;"
        }
    .end annotation
.end field

.field retryCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    const-string v0, ""

    .line 61
    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IZ",
            "Lcom/sec/internal/constants/Mno;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mIsLookAhead:Z

    .line 67
    new-instance v0, Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/DnsCache;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    .line 71
    iput p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    .line 72
    iput p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    .line 73
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    .line 74
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    .line 75
    iput-boolean p6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    .line 76
    iput p5, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    .line 77
    iput-object p7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    return-void
.end method

.method public constructor <init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IZ",
            "Lcom/sec/internal/constants/Mno;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    const-string v0, ""

    .line 64
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mIsLookAhead:Z

    .line 67
    new-instance v0, Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/DnsCache;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    .line 82
    iput p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    .line 83
    iput p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    .line 84
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    .line 85
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    .line 86
    iput-boolean p6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    .line 87
    iput p5, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    .line 88
    iput-object p7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    .line 89
    iput-object p8, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    .line 90
    iput-object p9, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    .line 91
    iput-boolean p10, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mIsLookAhead:Z

    return-void
.end method

.method public static correctServerAddr(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 510
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 511
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 512
    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 513
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    if-lez p1, :cond_1

    .line 516
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_1

    .line 517
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    .line 518
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 519
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private dnsLookAhead()V
    .locals 5

    .line 139
    iget v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 144
    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    .line 146
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 147
    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 151
    array-length v4, v3

    if-nez v4, :cond_3

    goto :goto_1

    .line 155
    :cond_3
    new-instance v1, Lcom/sec/internal/helper/httpclient/DnsResponse;

    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v0}, Lcom/sec/internal/helper/httpclient/DnsResponse;-><init>(Ljava/lang/String;[Lorg/xbill/DNS/Record;I)V

    .line 156
    new-instance v2, Lcom/sec/internal/helper/httpclient/DnsResponse;

    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    invoke-direct {v2, v4, v3, v0}, Lcom/sec/internal/helper/httpclient/DnsResponse;-><init>(Ljava/lang/String;[Lorg/xbill/DNS/Record;I)V

    .line 158
    new-instance v0, Lcom/sec/internal/helper/httpclient/DnsGroup;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DnsGroup;-><init>(Lcom/sec/internal/helper/httpclient/DnsResponse;Lcom/sec/internal/helper/httpclient/DnsResponse;)V

    .line 160
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/DnsCache;->store(Lcom/sec/internal/helper/httpclient/DnsGroup;)V

    :cond_4
    return-void
.end method

.method public static getBsfAddrSize()I
    .locals 1

    .line 506
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getDnsA(Ljava/lang/String;)V
    .locals 5

    const-string v0, "DnsController"

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDnsA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 445
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 446
    invoke-virtual {v4, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-nez v2, :cond_5

    .line 453
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 457
    :cond_2
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 458
    invoke-virtual {v4, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-nez v2, :cond_5

    .line 465
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 469
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsA: error with hostname: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private getDnsManualA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 5

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsManualA() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 342
    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/4 v2, 0x1

    .line 343
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 344
    array-length v3, v2

    if-lez v3, :cond_1

    goto :goto_1

    .line 346
    :cond_1
    iget v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/16 v2, 0x1c

    .line 347
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 348
    array-length v3, v2

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    const-string v3, "A and AAAA type query failed,try next IP"

    .line 351
    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private getDnsManualAAAA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 5

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsManualAAAA() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 320
    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v2, 0x1c

    .line 321
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 322
    array-length v3, v2

    if-lez v3, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    iget v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 325
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 326
    array-length v3, v2

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    const-string v3, "AAAA and A type query failed,try next IP"

    .line 329
    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private getDnsNAPTR(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsNAPTR() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v0, 0x23

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object p0

    return-object p0
.end method

.method private getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;
    .locals 6

    const-string v0, "."

    const-string v1, "DnsController"

    const/4 v2, 0x0

    .line 267
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    :goto_0
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object p1

    .line 270
    invoke-static {p1}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object p1

    .line 272
    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    invoke-virtual {p2, v3}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 274
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object p1

    .line 275
    new-instance p2, Ljava/net/DatagramPacket;

    array-length v4, p1

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v5, 0x35

    invoke-direct {p2, p1, v4, p0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 276
    invoke-virtual {v3, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p0, 0x800

    new-array p1, p0, [B

    .line 279
    new-instance p2, Ljava/net/DatagramPacket;

    invoke-direct {p2, p1, p0}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/16 p0, 0xbb8

    .line 280
    invoke-virtual {v3, p0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 281
    invoke-virtual {v3, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 283
    new-instance p0, Lorg/xbill/DNS/Message;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V

    .line 284
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result p1

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result is "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 288
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object p0, v2

    .line 290
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 267
    :try_start_3
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_1
    const-string p0, "DNS query timeout, try next type or IP"

    .line 291
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsSRV() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v0, 0x21

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object p0

    return-object p0
.end method

.method private getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;
    .locals 10

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object p1

    const-string v0, "DnsController"

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 363
    array-length v2, p1

    if-lez v2, :cond_d

    .line 364
    array-length v2, p1

    const/4 v3, 0x0

    move-object v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_d

    aget-object v6, p1, v4

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 369
    :cond_0
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 370
    check-cast v6, Lorg/xbill/DNS/CNAMERecord;

    .line 371
    invoke-virtual {v6}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v5

    goto/16 :goto_4

    :cond_1
    const/16 v7, 0x1c

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    .line 375
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 376
    check-cast v6, Lorg/xbill/DNS/ARecord;

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "target Name "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ARecord name "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 379
    invoke-virtual {v6}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_1

    .line 381
    :cond_2
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 382
    check-cast v6, Lorg/xbill/DNS/AAAARecord;

    .line 383
    invoke-virtual {v6}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_1

    :cond_3
    if-ne p2, v8, :cond_4

    .line 387
    check-cast v6, Lorg/xbill/DNS/ARecord;

    .line 388
    invoke-virtual {v6}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_1

    .line 389
    :cond_4
    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getType()I

    move-result v9

    if-ne v9, v7, :cond_5

    .line 390
    check-cast v6, Lorg/xbill/DNS/AAAARecord;

    .line 391
    invoke-virtual {v6}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_1

    :cond_5
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_c

    .line 396
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    const-string v9, "::"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v6, "chn not supported IPv6 addr"

    .line 397
    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 401
    :cond_6
    iget-boolean v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v7, :cond_9

    .line 403
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 404
    invoke-virtual {v9, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_8
    move v8, v3

    :goto_2
    if-nez v8, :cond_c

    .line 411
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 415
    :cond_9
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 416
    invoke-virtual {v9, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_b
    move v8, v3

    :goto_3
    if-nez v8, :cond_c

    .line 423
    sget-object v7, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 430
    :cond_d
    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p2

    if-eqz p2, :cond_10

    iget-boolean p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz p2, :cond_e

    sget-object p2, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-nez p0, :cond_10

    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    .line 431
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_10

    :cond_f
    const-string p0, "chn find no valid addr, return null"

    .line 432
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_10
    return-object p1
.end method

.method public static getNafAddrSize()I
    .locals 1

    .line 502
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getNaptrRecord(Ljava/lang/String;)V
    .locals 6

    .line 222
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsNAPTR(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 223
    array-length v1, v0

    if-lez v1, :cond_3

    .line 224
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 225
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_0

    goto :goto_2

    .line 228
    :cond_0
    check-cast v3, Lorg/xbill/DNS/NAPTRRecord;

    .line 229
    invoke-virtual {v3}, Lorg/xbill/DNS/NAPTRRecord;->getService()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTTP+D2T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {v3}, Lorg/xbill/DNS/NAPTRRecord;->getReplacement()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 231
    array-length v4, v3

    if-lez v4, :cond_1

    .line 232
    invoke-direct {p0, v3}, Lcom/sec/internal/helper/httpclient/DnsController;->sortSRV([Lorg/xbill/DNS/Record;)V

    .line 233
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/SRVRecord;

    .line 234
    invoke-virtual {v4}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-direct {p0, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "sendDns: NAPTR is null"

    const-string v1, "DnsController"

    .line 243
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_http."

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    goto :goto_3

    .line 248
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_http._tcp."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 252
    array-length v2, v0

    if-lez v2, :cond_5

    .line 253
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->sortSRV([Lorg/xbill/DNS/Record;)V

    .line 254
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/SRVRecord;

    .line 255
    invoke-virtual {v0}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "sendDns: SRV direct error"

    .line 259
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private sendDns(Ljava/lang/String;)V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requst dns query with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getNaptrRecord(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsManualAAAA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    goto :goto_0

    .line 209
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsManualA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    :goto_0
    return-void
.end method

.method private sortSRV([Lorg/xbill/DNS/Record;)V
    .locals 11

    .line 475
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 477
    check-cast v3, Lorg/xbill/DNS/SRVRecord;

    .line 478
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "DnsController"

    if-nez v4, :cond_0

    const-string/jumbo v4, "sortSRV: 1st Record"

    .line 479
    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_0
    move v4, v1

    move v6, v4

    .line 483
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    if-nez v6, :cond_3

    .line 484
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/SRVRecord;

    .line 485
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v8

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_1

    const-string/jumbo v6, "sortSRV: Update SRV better, lower priority"

    .line 486
    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v6, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    move v6, v10

    goto :goto_3

    .line 489
    :cond_1
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v8

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v7

    if-le v8, v7, :cond_2

    const-string/jumbo v6, "sortSRV: Update SRV better, higher weight"

    .line 490
    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v6, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    .line 496
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getRetryCounter()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    return p0
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mIsLookAhead:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/DnsCache;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/DnsController;->dnsLookAhead()V

    .line 104
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsCache;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 106
    :cond_1
    new-instance p0, Ljava/net/UnknownHostException;

    const-string p1, "There is no valid group."

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup: send DNS with hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreNafname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreBsfname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DnsController"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v1, :cond_4

    .line 116
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->sendDns(Ljava/lang/String;)V

    .line 118
    sput-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_4
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-nez v1, :cond_6

    .line 120
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 121
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->sendDns(Ljava/lang/String;)V

    .line 122
    sput-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    .line 125
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 126
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    iget p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_7
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 128
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    iget p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_8
    :goto_1
    return-object v0
.end method

.method public setNaf(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    return-void
.end method

.class public Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;
.super Ljava/lang/Object;
.source "BinarySmsBase64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final FOURBYTE:I = 0x4

.field static final PAD:B = 0x3dt

.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xff

    new-array v1, v0, [B

    .line 36
    sput-object v1, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    .line 44
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    .line 47
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    .line 50
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 53
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    .line 54
    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 10

    .line 65
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->discardNonBase64([B)[B

    move-result-object p0

    .line 68
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    .line 72
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    .line 82
    array-length v2, p0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    .line 84
    aget-byte v3, p0, v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_1

    new-array p0, v1, [B

    return-object p0

    :cond_2
    sub-int/2addr v2, v0

    .line 89
    new-array v2, v2, [B

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_6

    mul-int/lit8 v5, v1, 0x4

    add-int/lit8 v6, v5, 0x2

    .line 94
    aget-byte v6, p0, v6

    add-int/lit8 v7, v5, 0x3

    .line 95
    aget-byte v7, p0, v7

    .line 97
    sget-object v8, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    aget-byte v9, p0, v5

    aget-byte v9, v8, v9

    add-int/lit8 v5, v5, 0x1

    .line 98
    aget-byte v5, p0, v5

    aget-byte v5, v8, v5

    if-eq v6, v4, :cond_3

    if-eq v7, v4, :cond_3

    .line 102
    aget-byte v6, v8, v6

    .line 103
    aget-byte v7, v8, v7

    shl-int/lit8 v8, v9, 0x2

    shr-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    .line 105
    aput-byte v8, v2, v3

    add-int/lit8 v8, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v5, v9

    int-to-byte v5, v5

    .line 106
    aput-byte v5, v2, v8

    add-int/lit8 v5, v3, 0x2

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    .line 108
    aput-byte v6, v2, v5

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_4

    shl-int/lit8 v6, v9, 0x2

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 111
    aput-byte v5, v2, v3

    goto :goto_1

    :cond_4
    if-ne v7, v4, :cond_5

    .line 114
    aget-byte v6, v8, v6

    shl-int/lit8 v7, v9, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 116
    aput-byte v7, v2, v3

    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 117
    aput-byte v5, v2, v7

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method static discardNonBase64([B)[B
    .locals 6

    .line 151
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 154
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 155
    aget-byte v4, p0, v2

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->isBase64(B)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 156
    aget-byte v5, p0, v2

    aput-byte v5, v0, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_1
    new-array p0, v3, [B

    .line 162
    invoke-static {v0, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static isBase64(B)Z
    .locals 2

    const/16 v0, 0x3d

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 134
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/BinarySmsBase64;->base64Alphabet:[B

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

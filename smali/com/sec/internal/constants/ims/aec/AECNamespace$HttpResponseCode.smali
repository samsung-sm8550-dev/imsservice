.class public final Lcom/sec/internal/constants/ims/aec/AECNamespace$HttpResponseCode;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpResponseCode"
.end annotation


# static fields
.field public static final BAD_REQUEST:I = 0x190

.field public static final FORBIDDEN:I = 0x193

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final NETWORK_AUTHENTICATION_REQUIRED:I = 0x1ff

.field public static final NOT_FOUND:I = 0x194

.field public static final OK:I = 0xc8

.field public static final SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final UNKNOWN:I = 0x0

.field public static final UNSUPPORTED_MEDIA_TYPE:I = 0x19f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

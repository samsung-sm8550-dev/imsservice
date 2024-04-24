.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$PushMessages;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushMessages"
.end annotation


# static fields
.field public static final KEY_CONFIG_TYPE:Ljava/lang/String; = "configType"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_SYNC_TYPE:Ljava/lang/String; = "syncType"

.field public static final TYPE_SYNC_BLOCKFILTER:Ljava/lang/String; = "syncBlockfilter"

.field public static final TYPE_SYNC_CONFIG:Ljava/lang/String; = "syncConfig"

.field public static final TYPE_SYNC_STATUS:Ljava/lang/String; = "syncStatus"

.field public static final VALUE_DISABLE_MCS:Ljava/lang/String; = "disableMcs"

.field public static final VALUE_ENABLE_MCS:Ljava/lang/String; = "enableMcs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

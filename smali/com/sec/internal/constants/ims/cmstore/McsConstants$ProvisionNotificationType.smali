.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$ProvisionNotificationType;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionNotificationType"
.end annotation


# static fields
.field public static final NOTIFY_ACCOUNT_INFO:I = 0x7

.field public static final NOTIFY_DE_REGISTRATION_COMPLETED:I = 0x2

.field public static final NOTIFY_PUSH_MESSAGE_RECEIVED:I = 0x8

.field public static final NOTIFY_REGISTRATION_COMPLETED:I = 0x1

.field public static final NOTIFY_SD_APPROVED:I = 0x3

.field public static final NOTIFY_SD_LIST:I = 0x5

.field public static final NOTIFY_SD_LIST_ALL:I = 0x6

.field public static final NOTIFY_SD_REMOVED:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

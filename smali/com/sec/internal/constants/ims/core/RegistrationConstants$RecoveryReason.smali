.class public final Lcom/sec/internal/constants/ims/core/RegistrationConstants$RecoveryReason;
.super Ljava/lang/Object;
.source "RegistrationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/core/RegistrationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecoveryReason"
.end annotation


# static fields
.field public static final NO_USER_AGENT:Ljava/lang/String; = "NoUserAgent"

.field public static final POSTPONED_RECOVERY:Ljava/lang/String; = "PostponedRecovery"

.field public static final UA_CREATION_FAILED:Ljava/lang/String; = "UACreateFailed"

.field public static final UA_STATE_MISMATCH:Ljava/lang/String; = "UaStateMismatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

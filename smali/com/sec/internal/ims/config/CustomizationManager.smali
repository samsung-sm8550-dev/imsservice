.class public Lcom/sec/internal/ims/config/CustomizationManager;
.super Ljava/lang/Object;
.source "CustomizationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustomizationManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigManager(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/config/ConfigModule;IZ)Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .locals 7

    .line 46
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    const/4 v0, 0x0

    .line 47
    invoke-static {p3, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 50
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "get config from local file."

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 53
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "get config from SDcard."

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 57
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",RCSP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x13010000

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 60
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WorkflowRjil"

    const-string v2, "WorkflowChn"

    if-eqz v0, :cond_9

    .line 61
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "jibe"

    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    .line 64
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowJibe"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_2
    const-string/jumbo p4, "sec"

    .line 66
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 67
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowSec"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 70
    :cond_3
    sget-object p4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 71
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowVzw"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 73
    :cond_4
    sget-object p4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 74
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowBell"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 76
    :cond_5
    sget-object p4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 77
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 79
    :cond_6
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 80
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_7
    const-string p4, "interop"

    .line 82
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 83
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowInterop"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 86
    :cond_8
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowUp"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 92
    :cond_9
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 93
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 97
    :cond_a
    sget-object p4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 98
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 102
    :cond_b
    sget-object p4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 103
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 104
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Use local config for SoftPhone"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 105
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 107
    :cond_c
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowAtt"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 112
    :cond_d
    sget-object p4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 113
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowPrimaryDevice for Telstra"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;

    invoke-direct {v5, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object p4

    .line 118
    :cond_e
    sget-object p4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 119
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowTmo"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 123
    :cond_f
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowPrimaryDevice"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;

    invoke-direct {v5, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object p4
.end method

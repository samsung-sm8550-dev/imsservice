.class Lcom/samsung/android/cmcsetting/CmcSettingManager$8;
.super Landroid/database/ContentObserver;
.source "CmcSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerSamsungAccountInfoObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;Landroid/os/Handler;)V
    .locals 0

    .line 2847
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 2850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSaInfoDbChangeObserver : selfChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcSettingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$8;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$700(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V

    return-void
.end method

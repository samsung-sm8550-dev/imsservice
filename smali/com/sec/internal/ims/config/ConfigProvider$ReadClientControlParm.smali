.class Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;
.super Ljava/lang/Object;
.source "ConfigProvider.java"

# interfaces
.implements Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/ConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadClientControlParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v1, "root/application/1/clientcontrol/"

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v0

    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "reconnectGuardTimer"

    .line 1208
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "cfsTrigger"

    .line 1209
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string/jumbo v1, "serviceAvailabilityInfoExpiry"

    .line 1217
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1219
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v0, "root/application/1/capdiscovery/"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    .line 1220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "1toManySelectedTech"

    .line 1222
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "displayNotificationSwitch"

    .line 1223
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "max1toManyRecipients"

    .line 1224
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "ftMax1ToManyRecipients"

    .line 1229
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1231
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v0, "root/application/1/messaging/filetransfer/"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    .line 1232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    .line 1226
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v0, "root/application/1/messaging/"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    .line 1227
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1212
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string/jumbo v0, "root/application/1/messaging/chat/"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    .line 1213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "root/application/1/serviceproviderext/joyn/messaging/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1214
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    :goto_2
    return-object p2
.end method

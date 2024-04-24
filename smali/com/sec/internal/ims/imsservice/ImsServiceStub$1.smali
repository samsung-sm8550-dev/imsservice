.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/ImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_4

    const-string p1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 228
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get currentPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 232
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: MessageApplication is changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 234
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->handleEventDefaultAppChanged()V

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/ConfigModule;->onDefaultSmsPackageChanged()V

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 244
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->handleEventDefaultAppChanged()V

    .line 247
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getCmsModule()Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 249
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;->handleEventDefaultAppChanged()V

    .line 252
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 254
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->onDefaultSmsPackageChanged()V

    :cond_4
    return-void
.end method

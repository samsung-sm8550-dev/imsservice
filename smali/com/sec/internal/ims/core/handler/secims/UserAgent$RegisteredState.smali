.class Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;
.super Lcom/sec/internal/helper/State;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisteredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 1375
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;-><init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onRegInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V
    .locals 7

    .line 1937
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    const-string v1, "onRegInfoNotify:"

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1940
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserAgent["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegInfoNotify: unexpected RegInfoNotify. mHandle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1944
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;->contactsLength()I

    move-result v0

    new-array v1, v0, [Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1946
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;->contacts(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_4

    .line 1948
    aget-object p1, v1, v3

    .line 1949
    new-instance v4, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->displayName()Ljava/lang/String;

    move-result-object v5

    .line 1950
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->uri()Ljava/lang/String;

    move-result-object v6

    .line 1949
    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sec/ims/util/NameAddr;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    .line 1951
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRegInfoNotify: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->state()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->state()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1955
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$maddImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V

    .line 1956
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$maddDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/NameAddr;)V

    goto :goto_2

    .line 1957
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->state()I

    move-result p1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 1959
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$mremoveImpu(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V

    .line 1960
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$mremoveDevice(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/ImsUri;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1963
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$mbuildImsRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)V

    .line 1964
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1965
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    :cond_5
    return-void
.end method

.method private onRegistered()V
    .locals 3

    .line 1924
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$mupdateEpdgStatus(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 1926
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$mbuildImsRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)V

    .line 1928
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1929
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1928
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->setPreferredImpu(ILjava/lang/String;)V

    .line 1931
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    :cond_0
    return-void
.end method

.method private sendSms(Landroid/os/Bundle;)V
    .locals 11

    const-string/jumbo v0, "sca"

    .line 1970
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "localuri"

    .line 1971
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "pdu"

    .line 1973
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    const-string v0, "contentType"

    .line 1974
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "UserAgent["

    if-nez v0, :cond_0

    .line 1976
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sendSms: null contentType. "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v6, "/"

    .line 1979
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1980
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 1981
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSms: invalid contentType. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "callId"

    .line 1984
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "isEmergency"

    .line 1985
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 1987
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    const/4 p0, 0x0

    aget-object p0, v6, p0

    const/4 v0, 0x1

    aget-object v7, v6, v0

    const-string/jumbo v0, "result"

    .line 1989
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Landroid/os/Message;

    move-object v6, p0

    .line 1987
    invoke-interface/range {v1 .. v10}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1378
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1379
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->onRegistered()V

    return-void
.end method

.method public exit()V
    .locals 8

    .line 1384
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REGISTERED:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-ne v0, v1, :cond_0

    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->TERMINATING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    if-eq v0, v1, :cond_2

    .line 1390
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1392
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit: Unknown error."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->UNKNOWN_LOCAL_ERROR:Lcom/sec/ims/util/SipError;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    .line 1396
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] UA.RegisteredState.exit() mPcscfGoneDeregi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmRetryAfterMs(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Z

    move-result v7

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onDeregistered(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;JZZ)V

    .line 1398
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Z)V

    .line 1402
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 1403
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmRegistration(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/ImsRegistration;)V

    .line 1405
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1412
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_8

    const/4 v6, 0x6

    if-eq v2, v6, :cond_6

    const/16 v6, 0x65

    if-eq v2, v6, :cond_5

    const/16 v6, 0x66

    if-eq v2, v6, :cond_4

    const-string/jumbo v6, "targetUri"

    const-string v7, "cmcCallTime"

    const-string/jumbo v8, "supportPrematureEnd"

    const-string/jumbo v9, "useAnonymousUpdate"

    const-string/jumbo v10, "referUriAsserted"

    const-string/jumbo v11, "removeReferUriType"

    const-string/jumbo v12, "referUriType"

    const-string v13, "dialogType"

    const-string v14, "eventSubscribe"

    const-string v15, "confuri"

    const-string v3, "calltype"

    const-string v4, "additionalContentsMime"

    const-string v5, "additionalContentsContents"

    move-object/from16 v17, v6

    const-string v6, "idcExtra"

    move-object/from16 v18, v4

    const-string v4, "origUri"

    move-object/from16 v19, v5

    const-string/jumbo v5, "result"

    move-object/from16 v21, v6

    const-string/jumbo v6, "sessionId"

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    packed-switch v2, :pswitch_data_7

    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1823
    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1824
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "enable"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->enableQuantumSecurityService(IZ)V

    goto/16 :goto_3

    .line 1814
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1815
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "callDirection"

    .line 1816
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "cryptoMode"

    .line 1817
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "qtSessionId"

    .line 1818
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "sessionKey"

    .line 1819
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1815
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->setQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1859
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1860
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "dtmfEvent"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendDtmfEvent(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 1854
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1855
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "vcrtAudioOn"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->setVideoCrtAudio(IIZ)V

    goto/16 :goto_3

    .line 1691
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1692
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "oldQual"

    .line 1693
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "newQual"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1692
    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->modifyVideoQuality(III)V

    goto/16 :goto_3

    .line 1850
    :pswitch_5
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopLocalRingBackTone(I)V

    goto/16 :goto_3

    .line 1844
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1845
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v7

    const-string/jumbo v0, "streamType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v0, "volume"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "toneType"

    .line 1846
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Message;

    .line 1845
    invoke-interface/range {v6 .. v11}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startLocalRingBackTone(IIIILandroid/os/Message;)V

    goto/16 :goto_3

    .line 1587
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1588
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1589
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1590
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "participants"

    .line 1591
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v0, "sessId"

    .line 1592
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1593
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1594
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1595
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1596
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1597
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    .line 1588
    invoke-interface/range {v17 .. v30}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->extendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1711
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1712
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "reason"

    .line 1713
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1712
    invoke-interface {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->rejectModifyCallType(II)V

    goto/16 :goto_3

    .line 1704
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1705
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v8

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "reqType"

    .line 1706
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "curType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v0, "repType"

    .line 1707
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1705
    invoke-interface/range {v8 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->replyModifyCallType(IIIILjava/lang/String;)V

    goto/16 :goto_3

    .line 1698
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1699
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "oldType"

    .line 1700
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "newType"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1699
    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->modifyCallType(III)V

    goto/16 :goto_3

    .line 1769
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1770
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendEmergencyLocationPublish(I)V

    goto/16 :goto_3

    .line 1910
    :pswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1911
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "sdp"

    .line 1912
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1911
    invoke-interface {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendNegotiatedLocalSdp(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1904
    :pswitch_d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1905
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "action"

    .line 1906
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v8, v21

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1905
    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateWithIdc(IILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_e
    move-object/from16 v8, v21

    .line 1897
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1898
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v9

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "reqType"

    .line 1899
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "curType"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v0, "repType"

    .line 1900
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1898
    invoke-interface/range {v9 .. v14}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->replyWithIdc(IIIILjava/lang/String;)V

    goto/16 :goto_3

    .line 1794
    :pswitch_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object/from16 v2, v19

    .line 1796
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, v18

    .line 1797
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1800
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1801
    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1802
    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1803
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1804
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1805
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1806
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 1807
    invoke-virtual {v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    .line 1809
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendVcsInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V

    goto/16 :goto_3

    :pswitch_10
    move-object/from16 v7, v18

    move-object/from16 v2, v19

    .line 1774
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1776
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1777
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1780
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1781
    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1782
    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1783
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1784
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1785
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1786
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 1787
    invoke-virtual {v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v2

    .line 1789
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V

    goto/16 :goto_3

    .line 1874
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1875
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v0, "audioSource"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    const-string v0, "outputFormat"

    .line 1876
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v0, "maxFileSize"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v0, "maxDuration"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    const-string v0, "outputPath"

    .line 1877
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v0, "audioEncodingBR"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    const-string v0, "audioChannels"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    const-string v0, "audioSamplingR"

    .line 1878
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v28

    const-string v0, "audioEncoder"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v29

    const-string v0, "durationInterval"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v30

    const-string v0, "fileSizeInterval"

    .line 1879
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v31

    const-string v0, "author"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1875
    invoke-interface/range {v17 .. v33}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)V

    goto/16 :goto_3

    .line 1869
    :pswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1870
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopRecord(II)V

    goto/16 :goto_3

    .line 1864
    :pswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1865
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "filePath"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startRecord(IILjava/lang/String;)V

    goto/16 :goto_3

    .line 1833
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1834
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->handleCmcCsfb(II)V

    goto/16 :goto_3

    .line 1828
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1829
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startVideoEarlyMedia(II)V

    goto/16 :goto_3

    .line 1729
    :pswitch_16
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deleteTcpClientSocket(I)V

    goto/16 :goto_3

    :pswitch_17
    move-object/from16 v7, v18

    move-object/from16 v2, v19

    .line 1748
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1750
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1751
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1754
    new-instance v7, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1755
    invoke-virtual {v7, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1756
    invoke-virtual {v7, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1757
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1758
    invoke-static {v7, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1759
    invoke-static {v7, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1760
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 1761
    invoke-virtual {v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v12

    .line 1763
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1764
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "ussdtype"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1765
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/Message;

    .line 1763
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1638
    :pswitch_18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1639
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v7

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "dispName"

    .line 1640
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "body"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "expires"

    .line 1641
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1642
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Message;

    .line 1639
    invoke-interface/range {v6 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_3

    .line 1744
    :pswitch_19
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->requestUnpublish(I)V

    goto/16 :goto_3

    .line 1737
    :pswitch_1a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1738
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    const-string/jumbo v3, "presenceInfo"

    .line 1739
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/PresenceInfo;

    .line 1740
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1738
    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->requestPublish(ILcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1733
    :pswitch_1b
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateVceConfig(IZ)V

    goto/16 :goto_3

    .line 1725
    :pswitch_1c
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->networkSuspended(IZ)V

    goto/16 :goto_3

    .line 1717
    :pswitch_1d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1718
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "action"

    .line 1719
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "codecType"

    .line 1720
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "cause"

    .line 1721
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v0, "reasonText"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1718
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateCall(IIIILjava/lang/String;)V

    goto/16 :goto_3

    .line 1573
    :pswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1574
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1575
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1576
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "participants"

    .line 1577
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1578
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1579
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1580
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1581
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1582
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v29

    .line 1583
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Message;

    .line 1574
    invoke-interface/range {v17 .. v30}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->conference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 1601
    :pswitch_1f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1602
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v3

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v4

    const-string v0, "confsession"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v0, "updateCmd"

    .line 1603
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "participantId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "participant"

    .line 1604
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1602
    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->updateConfCall(IIIILjava/lang/String;)V

    goto/16 :goto_3

    .line 1667
    :pswitch_20
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendSmsResponse(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 1663
    :pswitch_21
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendSmsRpAckResponse(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1659
    :pswitch_22
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->sendSms(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 1554
    :pswitch_23
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->stopCamera(I)V

    goto/16 :goto_3

    .line 1621
    :pswitch_24
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1623
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v6

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v7

    const-string/jumbo v0, "pullingUri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, v17

    .line 1624
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "targetDialog"

    .line 1625
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/sec/ims/Dialog;

    const-string v0, "p2p"

    .line 1626
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1627
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/Message;

    .line 1623
    invoke-interface/range {v6 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1548
    :pswitch_25
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1549
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cameraId"

    .line 1550
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1549
    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->startCamera(III)V

    goto/16 :goto_3

    .line 1542
    :pswitch_26
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1543
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1544
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1543
    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->resumeVideo(IILandroid/os/Message;)V

    goto/16 :goto_3

    .line 1536
    :pswitch_27
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1537
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1538
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1537
    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->holdVideo(IILandroid/os/Message;)V

    goto/16 :goto_3

    :pswitch_28
    move-object/from16 v8, v21

    .line 1505
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1506
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v9

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v10

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "headers"

    .line 1507
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/HashMap;

    .line 1508
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 1506
    invoke-interface/range {v9 .. v14}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->progressIncomingCall(IILjava/util/HashMap;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1893
    :sswitch_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onNotifyNullProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    goto/16 :goto_3

    .line 1883
    :sswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 1884
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 1885
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1886
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const v1, 0x11010007

    const-string v2, "imsprofile is null. recover it"

    .line 1887
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 1888
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onNotifyNullProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    goto/16 :goto_3

    :cond_1
    move v4, v3

    goto/16 :goto_4

    .line 1838
    :sswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1839
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    const-string/jumbo v3, "target"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "event"

    .line 1840
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "eventType"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1839
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendMediaEvent(IIII)V

    goto/16 :goto_3

    .line 1423
    :sswitch_3
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v0

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->send(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    goto/16 :goto_3

    .line 1653
    :sswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1654
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "text"

    .line 1655
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "len"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1654
    invoke-interface {v2, v0, v3, v4, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->sendText(IILjava/lang/String;I)V

    goto/16 :goto_3

    .line 1615
    :sswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1616
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1617
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1616
    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->cancelTransferCall(IILandroid/os/Message;)V

    goto/16 :goto_3

    .line 1646
    :sswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1647
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "code"

    .line 1648
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "operation"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1649
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/Message;

    .line 1647
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->handleDtmf(IIIIILandroid/os/Message;)V

    goto/16 :goto_3

    .line 1501
    :sswitch_7
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/ims/util/SipError;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v1, v4}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->rejectCall(IILcom/sec/ims/util/SipError;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1631
    :sswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1632
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v0, "accepted"

    .line 1633
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v0, "status"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v0, "reason"

    .line 1634
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 1632
    invoke-interface/range {v7 .. v13}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->acceptCallTransfer(IIZILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v2, v17

    .line 1608
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1609
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v7

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v8

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1610
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "replacingSessionId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 1611
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Message;

    .line 1609
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->transferCall(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_3

    .line 1558
    :sswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1559
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    const-string/jumbo v0, "session1"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string/jumbo v0, "session2"

    .line 1560
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1561
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 1562
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1563
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1564
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1565
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1566
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1567
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    const-string v0, "extraHeaders"

    .line 1568
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/HashMap;

    .line 1569
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Message;

    .line 1559
    invoke-interface/range {v17 .. v32}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->mergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V

    goto/16 :goto_3

    .line 1530
    :sswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1531
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1532
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1531
    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->resumeCall(IILandroid/os/Message;)V

    goto/16 :goto_3

    .line 1524
    :sswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1525
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1526
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1525
    invoke-interface {v2, v0, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->holdCall(IILandroid/os/Message;)V

    goto/16 :goto_3

    :sswitch_d
    move-object/from16 v8, v21

    .line 1516
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1517
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v9

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v10

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "callType"

    .line 1518
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 1519
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1520
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1517
    invoke-interface/range {v9 .. v14}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->answerCall(IIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1512
    :sswitch_e
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v6, 0x0

    invoke-interface {v2, v0, v3, v1, v6}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V

    goto/16 :goto_3

    :sswitch_f
    move-object/from16 v7, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v21

    const/4 v6, 0x0

    .line 1440
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1441
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1442
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1446
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1447
    invoke-virtual {v6, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1448
    invoke-virtual {v6, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1449
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1450
    invoke-static {v6, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1451
    invoke-static {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1452
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 1453
    invoke-virtual {v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->getRootAsAdditionalContents(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    move-result-object v3

    move-object/from16 v26, v3

    goto :goto_1

    :cond_2
    move-object/from16 v26, v6

    .line 1456
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v17

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v18

    const-string v0, "destUri"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1457
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v0, "type"

    .line 1458
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v0, "dispName"

    .line 1459
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "dialedNumber"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, -0x1

    const-string v0, "cli"

    .line 1460
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v0, "pEmergencyInfo"

    .line 1461
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v0, "additionalSipHeaders"

    .line 1463
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Ljava/util/HashMap;

    const-string v0, "alertInfo"

    .line 1464
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v0, "isLteEpsOnlyAttached"

    .line 1465
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v31

    const-string v0, "p2p"

    .line 1466
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v32

    const-string v0, "cmcBoundSessionId"

    .line 1467
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v33

    const-string v0, "composer_data"

    .line 1468
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v34

    const-string/jumbo v0, "replaceCallId"

    .line 1469
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v0, "cmcEdCallSlot"

    .line 1470
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v36

    .line 1471
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1472
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/Message;

    .line 1456
    invoke-interface/range {v17 .. v38}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_3

    :sswitch_10
    const/4 v7, 0x0

    .line 1671
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v4, 0xb

    .line 1672
    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1671
    invoke-interface {v2, v3, v5, v1}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deregister(IZLandroid/os/Message;)V

    .line 1673
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$msetDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    goto/16 :goto_3

    .line 1414
    :sswitch_11
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reRegistered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UserAgent"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->onRegistered()V

    goto/16 :goto_3

    .line 1684
    :cond_4
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 1685
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1686
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$mupdateRouteTable(Lcom/sec/internal/ims/core/handler/secims/UserAgent;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1419
    :cond_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->onRegInfoNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V

    goto/16 :goto_3

    .line 1427
    :cond_6
    :sswitch_12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getServiceList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1429
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v2

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfIp()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    .line 1430
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPcscfPort()I

    move-result v5

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRegExpires()I

    move-result v6

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    .line 1431
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getLinkedImpuList()Ljava/util/List;

    move-result-object v8

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    .line 1432
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v9

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmThirdPartyFeatureTags(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object v10

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    .line 1433
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAuthServerUrl()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    .line 1434
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSingleRegiEnabled()Z

    move-result v13

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getImMsgTech()Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmUaProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v1

    .line 1435
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsAddMmtelCallComposerTag()Z

    move-result v15

    const/16 v16, 0x0

    .line 1429
    invoke-interface/range {v2 .. v16}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->register(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Message;)V

    .line 1436
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->REREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$msetDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    :cond_7
    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    .line 1678
    :cond_8
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/IStackIF;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v4, 0xb

    .line 1679
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    .line 1678
    invoke-interface {v1, v2, v4, v3}, Lcom/sec/internal/ims/core/handler/secims/IStackIF;->deregister(IZLandroid/os/Message;)V

    .line 1680
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$RegisteredState;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;->DEREGISTERING:Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$msetDestState(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/internal/ims/core/handler/secims/UserAgent$UserAgentState;)V

    :goto_4
    move v5, v4

    :goto_5
    return v5

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_12
        0x8 -> :sswitch_11
        0xa -> :sswitch_10
        0xe -> :sswitch_f
        0xf -> :sswitch_e
        0x10 -> :sswitch_d
        0x11 -> :sswitch_c
        0x12 -> :sswitch_b
        0x13 -> :sswitch_a
        0x14 -> :sswitch_9
        0x15 -> :sswitch_8
        0x16 -> :sswitch_7
        0x17 -> :sswitch_6
        0x2d -> :sswitch_5
        0x33 -> :sswitch_4
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_2
        0x7d0 -> :sswitch_1
        0x2328 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2f
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x36
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x68
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x6d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

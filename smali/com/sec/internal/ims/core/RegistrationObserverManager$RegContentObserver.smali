.class Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationObserverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 465
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 470
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->-$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => match ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiObsMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 473
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 474
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query : Exist simslot on uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 537
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onEnrichedCallVbcSettingChanged(I)V

    goto/16 :goto_4

    .line 533
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_1

    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onRcsUserSettingChanged(I)V

    goto :goto_4

    .line 515
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onMnoMapUpdated(Landroid/net/Uri;I)V

    goto :goto_4

    .line 528
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVolteRoamingSettingChanged(I)V

    goto :goto_4

    .line 524
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVoWiFiSettingsChanged(I)V

    goto :goto_4

    .line 519
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onImsDmConfigChanged(Landroid/net/Uri;I)V

    goto :goto_4

    .line 511
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onImsSettingsChanged(Landroid/net/Uri;I)V

    goto :goto_4

    .line 502
    :pswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onMobileDataPressedSettingChanged(I)V

    goto :goto_4

    .line 498
    :pswitch_9
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onMobileDataSettingChanged(I)V

    goto :goto_4

    .line 494
    :pswitch_a
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onAirplaneModeSettingChanged()V

    goto :goto_4

    .line 490
    :pswitch_b
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onDataRoamingSettingChanged(I)V

    goto :goto_4

    .line 486
    :pswitch_c
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_2

    :cond_3
    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVilteSettingChanged(I)V

    goto :goto_4

    .line 481
    :pswitch_d
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$RegContentObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    if-nez p1, :cond_4

    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    goto :goto_3

    :cond_4
    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    :goto_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onVolteSettingChanged(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

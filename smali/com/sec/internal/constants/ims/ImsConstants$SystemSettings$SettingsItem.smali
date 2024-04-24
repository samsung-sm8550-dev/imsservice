.class public Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsItem"
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 480
    iput-object v0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mPkg:Ljava/lang/String;

    .line 483
    iput-object p1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mAuthority:Ljava/lang/String;

    .line 484
    iput-object p2, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 485
    iput-object p3, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;I)I
    .locals 8

    const-string v0, "package"

    .line 514
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 518
    :try_start_0
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetSYSTEM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    .line 520
    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 521
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetGLOBAL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    .line 523
    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 524
    :cond_1
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetSECURE()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    .line 526
    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 528
    :cond_2
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Category : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_3

    .line 531
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 532
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 533
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v7, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mPkg:Ljava/lang/String;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v7, :cond_4

    .line 543
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 540
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    if-eqz v7, :cond_4

    goto :goto_2

    .line 538
    :catch_1
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingNotFound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_4

    goto :goto_2

    .line 546
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :goto_4
    if-eqz v7, :cond_5

    .line 543
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_5
    throw p0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    return-object p0

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getbySubId(Landroid/content/Context;II)I
    .locals 2

    .line 553
    :try_start_0
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetGLOBAL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    :goto_0
    move p2, p1

    goto/16 :goto_1

    .line 555
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetSYSTEM()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 557
    :cond_1
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetSECURE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 560
    :cond_2
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Category : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 564
    :catch_0
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingNotFound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_1
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntbySubId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public set(Landroid/content/Context;I)V
    .locals 3

    .line 571
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInt("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetSYSTEM()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetGLOBAL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 576
    :cond_1
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->-$$Nest$sfgetSECURE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mName:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 579
    :cond_2
    invoke-static {}, Lcom/sec/internal/constants/ims/ImsConstants;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown Category : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
.super Ljava/lang/Object;
.source "CapabilityStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$CapabilitiesTable;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;
    }
.end annotation


# static fields
.field private static final APPLY_BATCH_MAX_SIZE:I = 0x64

.field private static final APPLY_BATCH_TIMEOUT:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityStorage"

.field private static final MIMETYPE_RCSE:Ljava/lang/String; = "vnd.android.cursor.item/rcs_data"


# instance fields
.field private mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

.field protected mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsKor:Z

.field private mNeedResetRcsData:Z

.field mPhoneId:I

.field private final mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

.field mUserId:I

.field projection:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEventLog(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdater(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    .line 81
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    .line 82
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    .line 83
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    .line 84
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    const-string v4, "_id"

    const-string v5, "contact_id"

    const-string/jumbo v6, "uri"

    const-string v7, "available"

    const-string/jumbo v8, "timestamp"

    const-string v9, "display_name"

    const-string v10, "number"

    const-string v11, "phone_id"

    const-string v12, "features"

    const-string v13, "avail_features"

    const-string v14, "ext_features"

    const-string/jumbo v15, "presence_support"

    const-string v16, "legacy_latching"

    const-string v17, "isexpired"

    const-string v18, "lastseen"

    const-string v19, "botserviceid"

    const-string v20, "passertedidset"

    const-string v21, "pidf"

    .line 325
    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    .line 96
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    .line 97
    new-instance v3, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "CapabilityStorage"

    const/4 v5, 0x5

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    move-object/from16 v1, p2

    .line 99
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    .line 101
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    .line 102
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;)V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    .line 104
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    return-void
.end method

.method private convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;
    .locals 7

    .line 347
    new-instance p0, Lcom/sec/ims/options/Capabilities;

    const-string/jumbo v0, "uri"

    .line 348
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    const-string v0, "number"

    .line 349
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "contact_id"

    .line 350
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_id"

    .line 351
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    const-string v0, "display_name"

    .line 352
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/ims/options/Capabilities;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, "features"

    .line 355
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    const-string v0, "avail_features"

    .line 356
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->setAvailableFeatures(J)V

    const-string v0, "phone_id"

    .line 357
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setPhoneId(I)V

    .line 359
    new-instance v0, Ljava/util/Date;

    const-string/jumbo v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setTimestamp(Ljava/util/Date;)V

    const-string/jumbo v0, "presence_support"

    .line 360
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setPresenceSupport(Z)V

    const-string v0, "available"

    .line 361
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    const-string v0, "legacy_latching"

    .line 362
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setLegacyLatching(Z)V

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "ext_features"

    .line 365
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    if-eqz v3, :cond_3

    .line 366
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setExtFeature(Ljava/util/List;)V

    :cond_3
    const-string v0, "isexpired"

    .line 370
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/Capabilities;->setExpired(Z)V

    const-string v0, "lastseen"

    .line 371
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/options/Capabilities;->setLastSeen(J)V

    const-string v0, "botserviceid"

    .line 372
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/options/Capabilities;->setBotServiceId(Ljava/lang/String;)V

    const-string v0, "passertedidset"

    .line 374
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 377
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    :goto_4
    if-ge v1, v3, :cond_6

    aget-object v4, v0, v1

    .line 378
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 379
    new-instance v5, Lcom/sec/ims/util/ImsUri;

    invoke-direct {v5, v4}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 383
    :cond_6
    invoke-virtual {p0, v2}, Lcom/sec/ims/options/Capabilities;->setPAssertedId(Ljava/util/List;)V

    const-string v0, "pidf"

    .line 385
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->setPidf(Ljava/lang/String;)V

    return-object p0
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string p0, "CapabilityStorage"

    if-nez p1, :cond_0

    const-string p1, "endTransaction: db is null"

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: SQLException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: SQLiteFullException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: SQLiteDatabaseCorruptException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception p1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endTransaction: IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private fillCapexInfo(Landroid/content/ContentValues;Lcom/sec/ims/options/Capabilities;)V
    .locals 4

    .line 269
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "contact_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "available"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 272
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "display_name"

    .line 273
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "number"

    .line 274
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "features"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "avail_features"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "phone_id"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 281
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "ext_features"

    .line 290
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->hasPresenceSupport()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v0, "presence_support"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 292
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "legacy_latching"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 294
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "isexpired"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 295
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getLastSeen()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "lastseen"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "botserviceid"

    .line 296
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getBotServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pidf"

    .line 297
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getPidf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-virtual {p2}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 301
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 302
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p2, "passertedidset"

    .line 313
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putCapabilityToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 798
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "putCapabilityToContactDB: phoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 800
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 801
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setRemoteUri()Landroid/net/Uri;

    move-result-object v14

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setProjection()[Ljava/lang/String;

    move-result-object v15

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setSelection()Ljava/lang/String;

    move-result-object v16

    if-nez v14, :cond_0

    const-string/jumbo v0, "putCapabilityToContactDB: remoteUri is null"

    .line 811
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 815
    :cond_0
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putCapabilityToContactDB: remoteUri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 817
    filled-new-array {v8, v1, v2}, [Ljava/lang/String;

    move-result-object v17

    .line 821
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 822
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 823
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_2

    :try_start_0
    const-string/jumbo v0, "putCapabilityToContactDB: cursor is null"

    .line 825
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 851
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 829
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 830
    :cond_3
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 831
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 832
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x2

    .line 833
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    .line 834
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    .line 836
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v6, :cond_3

    .line 839
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 840
    invoke-static {v15, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 841
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-interface {v11, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-interface {v12, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 846
    :cond_4
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 851
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 853
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putCapabilityToContactDB: rawIds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", rcsRawIds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 855
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    .line 856
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->isOppositeCapexNull(Lcom/sec/ims/options/Capabilities;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "putCapabilityToContactDB: delete from contact db"

    .line 857
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteFromContactDB(Ljava/lang/String;)V

    :cond_6
    return-void

    .line 863
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v15, v7

    move-object v7, v12

    .line 864
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->needUpdateToContactDB(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Ljava/util/Map;Ljava/util/Map;)V

    .line 865
    invoke-interface {v15, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v7, v15

    goto :goto_1

    :cond_8
    move-object v15, v7

    .line 867
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 868
    invoke-virtual {v0, v2, v8, v9, v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->insertToContactDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_2

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_a

    .line 823
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw v1
.end method

.method private remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Capabilities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityStorage"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/util/ImsUri;

    .line 224
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string v0, "capabilities"

    const-string/jumbo v1, "uri=?"

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setContentValues(Lcom/sec/ims/options/Capabilities;)Landroid/content/ContentValues;
    .locals 1

    .line 997
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v0

    .line 998
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private setRemoteUri()Landroid/net/Uri;
    .locals 1

    .line 906
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    if-nez v0, :cond_0

    .line 907
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 909
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private setSelection()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "data1 = ? AND (mimetype = ? OR mimetype = ?)"

    return-object p0
.end method

.method private update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .line 229
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 231
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Capabilities"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/options/Capabilities;

    .line 234
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 236
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->fillCapexInfo(Landroid/content/ContentValues;Lcom/sec/ims/options/Capabilities;)V

    .line 238
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "capabilities"

    if-ltz v2, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id = ?"

    .line 241
    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 243
    invoke-virtual {p1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 244
    invoke-virtual {v1, v2, v3}, Lcom/sec/ims/options/Capabilities;->setId(J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method checkAndDeleteGarbageRcsData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 1126
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v8, "CapabilityStorage"

    if-nez v0, :cond_0

    const-string p0, "checkAndDeleteGarbageRcsData: remoteUri is null"

    .line 1129
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "data1"

    .line 1133
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "raw_contact_id = ? AND data1 <> ? AND mimetype = ?"

    const-string/jumbo v9, "vnd.android.cursor.item/rcs_data"

    .line 1137
    filled-new-array {p1, p2, v9}, [Ljava/lang/String;

    move-result-object v5

    .line 1139
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_2

    if-eqz p2, :cond_1

    .line 1177
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 1145
    :cond_2
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_3

    .line 1177
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 1150
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v10, 0x0

    .line 1151
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v2, "raw_contact_id"

    aput-object v2, v3, v10

    const-string/jumbo v4, "raw_contact_id = ? AND data1 = ? AND mimetype <> ?"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    aput-object p1, v5, v10

    aput-object v11, v5, v1

    const/4 v1, 0x2

    aput-object v9, v5, v1

    .line 1159
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_4

    .line 1163
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 1164
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1165
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndDeleteGarbageRcsData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has rawContactId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), so this is not garbage data"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1171
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1159
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_4
    if-eqz v1, :cond_5

    .line 1171
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1173
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndDeleteGarbageRcsData: remove garbageNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), rawContactId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") from Contact DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0, p1, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteFromContactDB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 1177
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_2
    move-exception p0

    .line 1139
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method checkCapability(Lcom/sec/ims/options/Capabilities;)I
    .locals 2

    .line 1233
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    .line 1239
    :cond_1
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 1240
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1242
    :cond_2
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1243
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    if-eqz p0, :cond_3

    .line 1244
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide p0

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v0, v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method deleteAllRcsDataFromContactDB()V
    .locals 3

    .line 1055
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "deleteAllRcsDataFromContactDB:"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1056
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "mimetype = ?"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 1059
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1062
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1064
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method deleteFromContactDB(Ljava/lang/String;)V
    .locals 3

    .line 1025
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromContactDB: phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1026
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Data.DATA1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 1029
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 1032
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1034
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method deleteFromContactDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1039
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFromContactDB: phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1040
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "raw_contact_id = ? AND data1 = ? AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    const-string/jumbo v2, "vnd.android.cursor.item/rcs_data"

    .line 1045
    filled-new-array {p1, p2, v2}, [Ljava/lang/String;

    move-result-object p1

    .line 1048
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1050
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public deleteNonRcsDataFromContactDB()V
    .locals 13

    .line 1069
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "deleteNonRcsDataFromContactDB:"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1071
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "(((data5 = ? OR data5 = ?) AND data9 is null ) OR ((data9 = ? OR data9 = ?) AND data5 is null ) OR ((data5 = ? OR data5 = ?) AND (data9 = ? OR data9 = ?))) AND mimetype_id = (SELECT _id FROM mimetypes WHERE mimetype = ?)"

    .line 1085
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1086
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 1087
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1088
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 1089
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1090
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 1091
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 1092
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "vnd.android.cursor.item/rcs_data"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 1095
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1097
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/4 p0, 0x0

    .line 1099
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteNonRcsDataFromContactDB: deleted rows = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0x12040002

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method public get(J)Lcom/sec/ims/options/Capabilities;
    .locals 7

    const-string v0, "get id: "

    const-string v1, "CapabilityStorage"

    const-string v2, "phone_id = ? AND _id = ?"

    .line 447
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 449
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 450
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v4, "capabilities"

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 451
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 452
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " capabilities record."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 453
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 454
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    .line 461
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_4

    :catch_2
    move-exception v2

    move-object p1, p2

    .line 459
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    move-object p1, p2

    .line 457
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_3
    return-object p2

    :catchall_1
    move-exception p2

    .line 461
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 462
    throw p2
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 7

    const-string v0, "get uri: "

    const-string v1, "CapabilityStorage"

    const-string v2, "phone_id = ? AND uri = ?"

    .line 422
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 424
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 425
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v5, "capabilities"

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 426
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 427
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " capabilities record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 428
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 429
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    .line 436
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    move-object p1, v3

    .line 434
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    move-object p1, v3

    .line 432
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_3
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, p1

    .line 436
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 437
    throw v0
.end method

.method public getAllCapabilities()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    const-string v0, "getAllCapabilities: "

    .line 468
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v2, "getAllCapabilities"

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 470
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "phone_id = ? "

    .line 474
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 477
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 478
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v7, "capabilities"

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 479
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 480
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capabilities record."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 481
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 483
    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 489
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 487
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v0, "getAllCapabilities done."

    invoke-static {v3, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 489
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 490
    throw v0
.end method

.method public getAmountCapabilities()I
    .locals 4

    const-string v0, "_id"

    .line 110
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v2, "capabilities"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 120
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmountCapabilities: Total "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capabilities records"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityStorage"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public getAmountRcsCapabilities()I
    .locals 5

    const-string v0, "_id"

    .line 127
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 133
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 139
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v3, "capabilities"

    const-string v4, "avail_features <> ? AND avail_features <> ? AND avail_features <> ?"

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 145
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmountRcsCapabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RCS capabilities records"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityStorage"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public getCapabilitiesForPolling(IJJJZ)Ljava/util/TreeMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJZ)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    .line 529
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v2, "getCapabilitiesForPolling"

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 531
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 534
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 535
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 536
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT "

    .line 538
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    .line 539
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "uri"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " FROM capabilities WHERE _id > ? AND contact_id <> ? AND "

    .line 540
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "phone_id"

    .line 541
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = ? "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v9, ""

    .line 544
    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 545
    iget v9, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p8, :cond_0

    const-string v9, " AND ((features = ? AND timestamp < ? ) OR (features <> ? AND timestamp < ? )) "

    .line 548
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    sget v9, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x3e8

    mul-long v11, p4, v9

    sub-long v11, v4, v11

    .line 550
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 551
    sget v11, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    mul-long v9, v9, p6

    sub-long/2addr v4, v9

    .line 552
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v4, " ORDER BY _id "

    .line 555
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_1

    const-string v4, " ASC Limit ? "

    .line 557
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 561
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 563
    iget v5, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCapabilitiesForPolling query "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " args "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    .line 566
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 567
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 569
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 570
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCapabilitiesForPolling : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capabilities record."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 571
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 573
    :cond_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 574
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 573
    invoke-virtual {v2, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 580
    :cond_3
    :goto_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 578
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCapabilitiesForPolling: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 583
    :goto_1
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "getCapabilitiesForPolling done."

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 580
    :goto_2
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 581
    throw v0
.end method

.method public getCapabilitiesNumberWithContactId()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "number"

    .line 498
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v2, "getCapabilitiesNumberWithContactId"

    const-string v3, "CapabilityStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 500
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const-string v2, "phone_id = ? AND contact_id != \'\'"

    .line 504
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 507
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 508
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v7, "capabilities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8, v2, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 509
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 510
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCapabilitiesNumberWithContactId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capabilities record."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 511
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 513
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 520
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 518
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabilitiesNumberWithContactId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 523
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v0, "getCapabilitiesNumberWithContactId done."

    invoke-static {v3, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 520
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 521
    throw v0
.end method

.method getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1182
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result p0

    .line 1183
    invoke-static {p1, p0}, Lcom/sec/ims/extensions/Extensions$ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method insertToContactDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 4

    .line 1104
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToContactDB: phoneNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rawContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1105
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result v0

    .line 1106
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1107
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkAndDeleteGarbageRcsData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0, p4, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;

    move-result-object p4

    const-string v0, "mimetype"

    const-string/jumbo v1, "vnd.android.cursor.item/rcs_data"

    .line 1114
    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "raw_contact_id"

    .line 1115
    invoke-virtual {p4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data1"

    .line 1116
    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data2"

    .line 1117
    invoke-virtual {p4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 1121
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 1122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryPut(Landroid/content/ContentProviderOperation;)V

    return-void

    .line 1108
    :cond_1
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "insertToContactDB: Ignore inserting CAPABLE_NULL or CAPABLE_NONE"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method isOppositeCapexNull(Lcom/sec/ims/options/Capabilities;)Z
    .locals 5

    .line 958
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string v1, "CapabilityStorage"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 959
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "dual rcs is not enabled."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 962
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getPhoneId()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 963
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v4

    .line 964
    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-nez p1, :cond_2

    .line 966
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "oppositeCapex is null."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 968
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->checkCapability(Lcom/sec/ims/options/Capabilities;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 969
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "oppositeCapex is CAPABLE_NULL."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 972
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "oppositeCapex is not CAPABLE_NULL."

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3
.end method

.method public load()V
    .locals 7

    .line 390
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "load"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setIsKor()V

    const-string v0, "phone_id = ?"

    .line 395
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 398
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    .line 399
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    const-string v5, "capabilities"

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->projection:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 400
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 401
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " capabilities record."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 402
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->convertCursorToCapex(Landroid/database/Cursor;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->add(Lcom/sec/ims/options/Capabilities;)V

    add-int/lit8 v0, v0, 0x1

    .line 406
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getMaxCacheSize()I

    move-result v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 411
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 409
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 414
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v0, "load done."

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 411
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 412
    throw v0
.end method

.method needUpdateToContactDB(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 874
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 876
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto/16 :goto_0

    .line 877
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string v1, "N,"

    const-string v2, "CapabilityStorage"

    const-string v3, ","

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 878
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "needUpdateToContactDB: capex(longFeatures) is different with contact db = "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide p5

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p5, 0x12040004

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 881
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_0

    .line 882
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_3

    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 883
    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 884
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "needUpdateToContactDB: capex(availableFeatures) is different with contact db = "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 884
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {p4}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide p5

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p5, 0x12040005

    .line 886
    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 888
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public persist()V
    .locals 7

    .line 150
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v1, "persist: start"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getUpdatedUriList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mCapabilitiesCache:Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getTrashedUriList()Ljava/util/List;

    move-result-object v1

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 158
    :try_start_0
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 159
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 161
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    .line 164
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/options/Capabilities;

    if-eqz v6, :cond_0

    .line 166
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v6, "persist: not found in cache."

    .line 168
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 174
    invoke-direct {p0, v4, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->remove(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 176
    :cond_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_1
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 190
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLiteException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLiteDatabaseCorruptException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLiteFullException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLiteDiskIOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_5
    move-exception v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: SQLiteDatabaseLockedException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_6
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist: IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 195
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 196
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string v0, "persist: end"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 192
    :goto_3
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    throw v0
.end method

.method public persistToContactDB(Lcom/sec/ims/options/Capabilities;Z)V
    .locals 10

    .line 744
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    if-eqz v0, :cond_0

    .line 745
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    .line 746
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->deleteAllRcsDataFromContactDB()V

    :cond_0
    const-string v0, "CapabilityStorage"

    if-nez p1, :cond_1

    const-string p0, "persistToContactDB: capex is null"

    .line 749
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 753
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persistToContactDB: isNotifyUpdated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    .line 758
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/phone_lookup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 761
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 762
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    const-string p0, "persistToContactDB: remoteUri is null"

    .line 765
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 769
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persistToContactDB: remoteUri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 771
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "number"

    aput-object v3, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    :try_start_1
    const-string p0, "persistToContactDB: fail to read contact db"

    .line 776
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 792
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-void

    .line 779
    :cond_4
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 780
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string p1, "persistToContactDB: no contact found"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 792
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 784
    :cond_5
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 785
    :cond_6
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 786
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 787
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 788
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-direct {p0, v4, v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->putCapabilityToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 792
    :cond_7
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v3, :cond_8

    .line 771
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw p0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 793
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public reset()V
    .locals 4

    .line 200
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    const-string/jumbo v1, "reset:"

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->incrementRefCount()V

    const-string v1, "capabilities"

    const/4 v3, 0x0

    .line 206
    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mDbHelper:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->safeClose(Ljava/io/Closeable;)V

    .line 214
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mNeedResetRcsData:Z

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset: SQLiteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setContentValues(Lcom/sec/ims/options/Capabilities;I)Landroid/content/ContentValues;
    .locals 5

    .line 1002
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 1003
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 1007
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1008
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string v3, "data7"

    .line 1014
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data8"

    .line 1015
    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data9"

    .line 1016
    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data10"

    .line 1017
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v3, "data3"

    .line 1009
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data4"

    .line 1010
    invoke-virtual {v2, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data5"

    .line 1011
    invoke-virtual {v2, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data6"

    .line 1012
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_2
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setContentValues: longFeatures = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", longAvailableFeatures = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapabilityStorage"

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method setIsKor()V
    .locals 2

    .line 317
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CapabilityStorage"

    const-string/jumbo v1, "setIsKor: true"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mIsKor:Z

    :goto_0
    return-void
.end method

.method setProjection()[Ljava/lang/String;
    .locals 9

    .line 917
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUserId:I

    const-string v1, "data10"

    const-string v2, "data9"

    const/4 v3, 0x1

    const-string v4, "data6"

    const-string v5, "data5"

    const-string v6, "data2"

    const-string v7, "mimetype"

    if-nez v0, :cond_2

    .line 918
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string/jumbo v8, "raw_contact_id"

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, v3, :cond_4

    .line 927
    filled-new-array {v8, v7, v2, v1, v6}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 919
    :cond_1
    :goto_0
    filled-new-array {v8, v7, v5, v4, v6}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 936
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    const-string v8, "_id"

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p0, v3, :cond_4

    .line 945
    filled-new-array {v8, v7, v2, v1, v6}, [Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    .line 937
    :cond_5
    :goto_1
    filled-new-array {v8, v7, v5, v4, v6}, [Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method updateToContactDB(Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 3

    .line 978
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateToContactDB: phoneNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 979
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->setContentValues(Lcom/sec/ims/options/Capabilities;)Landroid/content/ContentValues;

    move-result-object p3

    .line 981
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 984
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 985
    invoke-virtual {v0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string/jumbo v0, "vnd.android.cursor.item/rcs_data"

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "raw_contact_id = ? AND data1 = ? AND mimetype = ?"

    .line 986
    invoke-virtual {p3, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 992
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 993
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;->mUpdater:Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$SequenceUpdater;->tryPut(Landroid/content/ContentProviderOperation;)V

    return-void
.end method

.class public Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;
.super Landroid/content/ContentProvider;
.source "GeolocProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RCSAPI:I = 0x1

.field private static final RCSAPI_ID:I = 0x2

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final MESSAGE_COLUMNS:[Ljava/lang/String;

.field private mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 39
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "geolocshare"

    const/4 v3, 0x1

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "geolocshare/#"

    const/4 v3, 0x2

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "_id"

    const-string/jumbo v1, "sharing_id"

    const-string v2, "contact"

    const-string v3, "content"

    const-string v4, "mime_type"

    const-string v5, "direction"

    const-string/jumbo v6, "timestamp"

    const-string/jumbo v7, "state"

    const-string/jumbo v8, "reason_code"

    .line 49
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private buildMessagesCursor()Landroid/database/Cursor;
    .locals 2

    .line 100
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 2

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 109
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: No last segment."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->MESSAGE_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p0

    if-nez p0, :cond_1

    .line 116
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: Message not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private fillMessageCursor(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 10

    const-string v0, "_id"

    const-string v1, "chat_id"

    const-string/jumbo v2, "remote_uri"

    const-string v3, "content_type"

    const-string v4, "direction"

    const-string v5, "ext_info"

    const-string/jumbo v6, "reason"

    const-string v7, "delivered_timestamp"

    const-string/jumbo v8, "state"

    .line 124
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id= ? "

    .line 137
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 143
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p2, v0, v3, v3, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 145
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-eqz p2, :cond_5

    .line 148
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 154
    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "content_type"

    .line 157
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 156
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ext_info"

    .line 159
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 158
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "remote_uri"

    .line 161
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 160
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "direction"

    .line 163
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 162
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v2, :cond_2

    const-string v7, "application/vnd.gsma.rcspushlocation+xml"

    .line 166
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const-string v1, "_id"

    .line 171
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 170
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    aput-object v1, v7, v9

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v3

    .line 172
    :goto_2
    invoke-static {v5}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v7, v5

    const/4 v1, 0x3

    aput-object v2, v7, v1

    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v7, v2

    const/4 v1, 0x5

    aput-object v4, v7, v1

    const-string/jumbo v1, "reason"

    .line 177
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 176
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->transReason(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v7, v2

    const-string v1, "delivered_timestamp"

    .line 179
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 178
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v7, v2

    const-string/jumbo v1, "state"

    .line 181
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 180
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1, v6}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->transState(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v7, v2

    .line 168
    invoke-virtual {p1, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v8

    goto/16 :goto_1

    .line 188
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 149
    :cond_5
    :goto_3
    :try_start_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: Message not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_6

    .line 188
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    move-object v3, p2

    goto :goto_4

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_7
    throw p0
.end method

.method private transReason(I)I
    .locals 0

    .line 230
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object p0

    if-nez p0, :cond_0

    .line 232
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    return p0

    .line 234
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 267
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 261
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 248
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 245
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 242
    :pswitch_4
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 239
    :pswitch_5
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    goto :goto_0

    .line 236
    :pswitch_6
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->ordinal()I

    move-result p0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private transState(II)I
    .locals 1

    .line 199
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result p0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result p0

    goto :goto_0

    .line 215
    :cond_1
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result p0

    goto :goto_0

    .line 212
    :cond_2
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result p0

    goto :goto_0

    .line 205
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p1

    if-ne p1, p2, :cond_4

    .line 206
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result p0

    goto :goto_0

    .line 207
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p1

    if-ne p1, p2, :cond_5

    .line 208
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ordinal()I

    move-result p0

    :cond_5
    :goto_0
    return p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 58
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 68
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->mCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isLoaded()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 82
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ImCache is not ready yet."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 86
    :cond_0
    sget-object p2, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_1

    .line 95
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "return null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->buildMessagesCursor(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/GeolocProvider;->buildMessagesCursor()Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 195
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

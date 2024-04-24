.class public Lcom/sec/internal/ims/servicemodules/im/ImCache;
.super Ljava/lang/Object;
.source "ImCache.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONCURRENT_SESSION:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "ImCache"

.field private static final MAX_CACHED_MESSAGE:I = 0x1e

.field private static final MAX_CACHED_SESSION:I = 0x1f4

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# instance fields
.field private final mActiveSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCachingMessages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mChatbotRoleUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoaded:Z

.field private final mListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Ljava/util/Observer;

.field private final mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

.field private mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;


# direct methods
.method public static synthetic $r8$lambda$2Uxx8TFfc__ou_MvtVV8jllxmWY(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4XTm1RbuibrTgIR01G3n8pnDHf8(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_SIE1FqFdO0XXyDLKx6-UO69pnQ(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Landroid/util/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersister(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateSession(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadExtras(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munregisterObserver(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    .line 93
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    .line 99
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;

    const/16 v1, 0x1f4

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    .line 133
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    return-void
.end method

.method private cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 3

    const-string p0, "chat_id"

    .line 1056
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uri"

    .line 1057
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    const-string/jumbo v1, "status"

    .line 1058
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1059
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1058
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1063
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    return-object v1
.end method

.method private cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "chat_id"

    .line 1015
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "own_sim_imsi"

    .line 1016
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "session_uri"

    .line 1017
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "direction"

    .line 1018
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1020
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    const-string v5, "conversation_id"

    .line 1022
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "contribution_id"

    .line 1023
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "is_group_chat"

    .line 1025
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string/jumbo v6, "subject"

    .line 1026
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "chat_type"

    .line 1028
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_3

    if-eqz v5, :cond_2

    .line 1030
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_1
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_3
    const-string v5, "chat_mode"

    .line 1032
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1033
    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set own sim imsi: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "sim_imsi"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_4

    .line 1035
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1038
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_5

    .line 1039
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    move-object v14, v1

    goto :goto_2

    :cond_5
    move-object v14, v12

    :goto_2
    const-string v1, "created_by"

    .line 1041
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "invited_by"

    .line 1042
    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1044
    new-instance v17, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v8

    .line 1045
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v15

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v16

    .line 1046
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v12

    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v11}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_4

    :cond_7
    move-object/from16 v18, v12

    :goto_4
    move-object/from16 v2, v17

    move-object v5, v7

    move-object v7, v8

    move-object v8, v15

    move-object v11, v0

    move-object v12, v13

    move-object/from16 v13, v16

    move-object v15, v1

    move-object/from16 v16, v18

    invoke-direct/range {v2 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)V

    return-object v17
.end method

.method private declared-synchronized createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6

    monitor-enter p0

    .line 421
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipantSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 423
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 428
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load participants: size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", values()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_3

    .line 433
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 434
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 436
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 437
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    goto :goto_2

    .line 439
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 440
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    .line 443
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 444
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 446
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v3

    if-lez v3, :cond_5

    .line 447
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;

    move-result-object v3

    .line 448
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 449
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 453
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 455
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 456
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 457
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 458
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 460
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 461
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 462
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 463
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatData(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 464
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participants(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 465
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->needToRevokeMessages(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 466
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2462
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_0

    .line 2463
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 2465
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2467
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V

    :cond_1
    return-void
.end method

.method private getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 172
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->sInstance:Lcom/sec/internal/ims/servicemodules/im/ImCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2756
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getOrloadChatbotRoleUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2759
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2760
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatbotRoleUris(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2761
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2763
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 2287
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteFtMessage: msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " direction:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transferState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2287
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 2290
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2291
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 2294
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_1

    .line 2295
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteFile()Z

    move-result v0

    .line 2296
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteThumbnail()Z

    move-result v2

    .line 2297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isDeleted:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isThumbnailDeleted:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 0

    .line 2489
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 100
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v0, :cond_1

    .line 103
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    if-eqz v0, :cond_2

    .line 105
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 107
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown observable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", data : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private declared-synchronized loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3

    monitor-enter p0

    .line 1339
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v0

    .line 1340
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1341
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 1342
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_1

    .line 1343
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 1347
    :goto_1
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_2

    .line 1348
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1349
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1351
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 1352
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1356
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesIdsForRevoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 509
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revoke messages count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 515
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 523
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 524
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v2

    .line 525
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 526
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 527
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .locals 6

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryPendingMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 472
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending messages count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 477
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 479
    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_1

    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 480
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 489
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v3

    .line 490
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 491
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_5

    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_4

    goto :goto_3

    .line 494
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_4

    .line 492
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 496
    :goto_4
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v3, :cond_6

    .line 497
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 498
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 499
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 502
    :cond_6
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 503
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 2532
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2533
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerObserver(Ljava/util/Observable;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private registerParticipant(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2605
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2606
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_0

    .line 2608
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerParticipantFromCloud(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2612
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2613
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipant(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2614
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2616
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v5

    if-eq v3, v5, :cond_1

    .line 2617
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setId(I)V

    .line 2619
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_0

    .line 2621
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipantFromCloud(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    .line 2504
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2505
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2506
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 2576
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2577
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2578
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2579
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterMessage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2590
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2591
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2592
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2593
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2594
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterObserver(Ljava/util/Observable;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private unregisterParticipant(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2630
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2631
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2632
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterParticipantFromCloud(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2637
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipantFromCloud(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2638
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2639
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    .line 2518
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2519
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2520
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 245
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 259
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 271
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 272
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 286
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticipantFromCloud(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 292
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized addParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2241
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2242
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addParticipantFromCloud(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipantFromCloud(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2735
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2736
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2739
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2545
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 2547
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Message is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public cancelMessagesforCloudSync(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2317
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCancelRcsMessageList(ILjava/util/List;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDB()V
    .locals 0

    .line 2770
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->closeDB()V

    return-void
.end method

.method public declared-synchronized cloudDeleteMessage(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 845
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud delete message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 847
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 849
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_0

    .line 850
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 852
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudDeleteParticipant(Ljava/lang/String;)I
    .locals 0

    .line 908
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudDeleteParticipant(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 866
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 919
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 759
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized cloudsearchAndInsertSession(Landroid/net/Uri;Landroid/content/ContentValues;[Landroid/content/ContentValues;)I
    .locals 12

    monitor-enter p0

    .line 931
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudsearchAndInsertSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    if-eqz p2, :cond_f

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 941
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 942
    array-length v1, p3

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    const-string/jumbo v4, "uri"

    .line 943
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    .line 946
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 947
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string v4, "central_msg_store"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 948
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 950
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    .line 951
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chatType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "conversation_id"

    .line 952
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "status"

    .line 953
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "status"

    .line 954
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, p1

    .line 953
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "inserted_time_stamp"

    .line 955
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_5

    const-string v5, "inserted_time_stamp"

    .line 956
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_5
    move-wide v8, v6

    .line 958
    :goto_2
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const/4 v5, 0x1

    if-ne p2, v2, :cond_6

    .line 959
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p2

    goto :goto_3

    .line 961
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v11

    invoke-virtual {p2, v0, v2, v10, v11}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_8

    if-eqz v3, :cond_7

    .line 964
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 965
    invoke-virtual {p2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 966
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onSessionUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 968
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 971
    :cond_8
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 972
    array-length v0, p3

    move v2, p1

    :goto_4
    if-ge v2, v0, :cond_9

    aget-object v3, p3, v2

    .line 973
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 975
    :cond_9
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Ljava/util/Collection;)V

    .line 977
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 978
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result p3

    if-gtz p3, :cond_a

    move v5, p1

    :cond_b
    if-eqz v5, :cond_d

    if-eqz v4, :cond_d

    cmp-long p2, v8, v6

    if-lez p2, :cond_c

    .line 986
    invoke-virtual {v1, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setInsertedTimeStamp(J)V

    .line 988
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setState(I)V

    .line 989
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 990
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 992
    :cond_d
    monitor-exit p0

    return p1

    .line 996
    :cond_e
    monitor-exit p0

    return p1

    :cond_f
    :goto_5
    :try_start_3
    const-string p2, "cloudsearchAndInsertSession: no values inserted"

    .line 938
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 939
    monitor-exit p0

    return p1

    :catch_0
    move-exception p2

    .line 1003
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1004
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cloudupdateNotification(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 888
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateNotification(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized deleteAllMessages(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 2477
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2478
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllMessageIdsByChatId(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 2479
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllMessages ft message ids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2481
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2483
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 2487
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2488
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2493
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessage(I)V
    .locals 0

    monitor-enter p0

    .line 2446
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessages(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 2455
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2456
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2458
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 2401
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2404
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2408
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2409
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2410
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2411
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2413
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2417
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2419
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2424
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2425
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2427
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 2428
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2430
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteMessagesforCloudSyncUsingImdnId(Ljava/util/Map;ZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2363
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingImdnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2369
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2370
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2372
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2373
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2374
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2377
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2383
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessagesforCloudSyncUsingImdnId: msgListSlot1.size = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " msgListSlot2.size = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2384
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2383
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2387
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2389
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 2390
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public deleteMessagesforCloudSyncUsingMsgId(Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 2327
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingMsgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2335
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2336
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message imsi "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "getphoneid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 2338
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2341
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2346
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2347
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, p2, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V

    .line 2350
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2351
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, p2, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public declared-synchronized deleteParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2254
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteParticipantFromCloud(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2258
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterParticipantFromCloud(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    monitor-enter p0

    .line 2275
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Ljava/util/Collection;)V

    .line 2277
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2278
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveSessions()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 2665
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getAllImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 674
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 677
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 681
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllSessionByParticipant(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 682
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 687
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 690
    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    :goto_1
    :try_start_1
    const-string p1, "getImSessionByParticipants: Couldn\'t load from db."

    .line 683
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    monitor-exit p0

    return-object v2

    .line 678
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllImSessions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1195
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getConferenceTimestamp(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 2778
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2779
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    .line 2780
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getInsertedTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 2782
    :cond_0
    monitor-exit p0

    const-wide/16 p0, -0x1

    return-wide p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 1237
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1238
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_0

    .line 1239
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 1254
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1255
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_0

    .line 1256
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getFtMessageforFtRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 4

    monitor-enter p0

    .line 703
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFtMessageforFtRequest chatid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fileTransferId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_4

    if-nez p5, :cond_0

    goto :goto_1

    .line 710
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz v2, :cond_1

    .line 712
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->findFtMessage(Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    const-string p2, "getFtMessageforFtRequest Couldn\'t find a FtMessage in ImSession."

    .line 716
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, p5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessageByFileTransferId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 719
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    const-string p1, "getFtMessageforFtRequest Couldn\'t find a FtMessage by fileTransferId in db."

    .line 721
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    monitor-exit p0

    return-object v1

    .line 726
    :cond_3
    monitor-exit p0

    return-object p2

    .line 706
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFtMsrpMessage(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1272
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1273
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v2, :cond_1

    .line 1274
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 1275
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 0

    .line 1205
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1206
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_0

    .line 1207
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 0

    .line 1222
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1223
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_0

    .line 1224
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 553
    :cond_0
    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 555
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 560
    monitor-exit p0

    return-object v0

    .line 563
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 564
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p3, :cond_1

    .line 565
    monitor-exit p0

    return-object v2

    .line 569
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 571
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByContributionId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    monitor-exit p0

    return-object v0

    .line 575
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4

    monitor-enter p0

    .line 588
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByConversationId cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isGroupChat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 590
    monitor-exit p0

    return-object v0

    .line 593
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 594
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-ne v3, p3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 595
    monitor-exit p0

    return-object v2

    .line 599
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 602
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByConversationId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    monitor-exit p0

    return-object v0

    .line 606
    :cond_3
    :try_start_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 625
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 639
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 642
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 647
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    .line 648
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chat Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " imsi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 651
    monitor-exit p0

    return-object v2

    .line 655
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 657
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByParticipants: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    monitor-exit p0

    return-object v0

    .line 661
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 643
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3

    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 617
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 618
    monitor-exit p0

    return-object v1

    .line 621
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1

    monitor-enter p0

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1075
    monitor-exit p0

    return-object v0

    .line 1078
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1080
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1083
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 2

    monitor-enter p0

    .line 1319
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1321
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 1323
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1325
    monitor-exit p0

    return-object v0

    .line 1328
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1369
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    .line 1370
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1372
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1374
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getMessageIdsForDisplayAggregation: list="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1093
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 1104
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1106
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1100
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1109
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1110
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1111
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1115
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1159
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1162
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1164
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1166
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1169
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1170
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1171
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1172
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1175
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1290
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForPendingNotification(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1291
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pending notifications count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1296
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1297
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1299
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1302
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1303
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1304
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1306
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1119
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1125
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1126
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1129
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatIDExceptPending(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1132
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1133
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1137
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatID(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1140
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1141
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1147
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParticipants(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 1385
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1387
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getPersister()Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 0

    .line 2774
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method public hasFileTransferInprogress()Z
    .locals 2

    .line 2688
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2689
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2690
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_0

    .line 2691
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized hasProcessingFileTransfer()Z
    .locals 3

    monitor-enter p0

    .line 2705
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2706
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2707
    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 2710
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initializeLruCache(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/16 p1, 0x64

    .line 185
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method

.method public declared-synchronized isChatbotRoleUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2749
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2750
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2752
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public isEstablishedSessionExist()Z
    .locals 1

    .line 2674
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2675
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    monitor-enter p0

    .line 404
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 3

    monitor-enter p0

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 301
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Alraedy loaded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 306
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    .line 307
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionByChatType(Z)V
    .locals 3

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatType(Z)Ljava/util/List;

    move-result-object p1

    .line 316
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImSessionByChatType loaded chat ids : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 317
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionForAutoRejoin(Z)V
    .locals 4

    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionForAutoRejoin(Z)Ljava/util/List;

    move-result-object v0

    .line 331
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionForAutoRejoin isForAll : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Autorejoin chat ids : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 333
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 337
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionWithFailedFTMessages()V
    .locals 4

    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithFailedFTMessages()Ljava/util/List;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithFailedFTMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 371
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadImSessionWithPendingMessages()V
    .locals 4

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithPendingMessages()Ljava/util/List;

    move-result-object v0

    .line 348
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithPendingMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 354
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadLastSentMessages(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryLastSentMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 1564
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 1569
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewEmptySession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ownImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1569
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1577
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v1, v2, :cond_1

    .line 1578
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v1

    .line 1579
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1581
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 1584
    :goto_0
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1585
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1586
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1587
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1588
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1589
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1590
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1591
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v4

    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {p2, p1, v4, v5}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1592
    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1593
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1594
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1595
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1596
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1597
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1598
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1599
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1600
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1601
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1603
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1604
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1606
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 7

    monitor-enter p0

    .line 2135
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2136
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2137
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2138
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2140
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2141
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2142
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2143
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2144
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2145
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2146
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2147
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2148
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2149
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2150
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2151
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2152
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2153
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2154
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2155
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2156
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2157
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2158
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2160
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x0

    .line 2161
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2162
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2163
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2164
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2165
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2166
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2167
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2168
    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2169
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2170
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2171
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2172
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2173
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2175
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2176
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2177
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 7

    monitor-enter p0

    .line 2190
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2191
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 2192
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 2193
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 2195
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2196
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2197
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2198
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2199
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2200
    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2201
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2202
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2203
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2204
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2205
    invoke-virtual {v5, v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2206
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2207
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2208
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2209
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2210
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x1

    .line 2211
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2212
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2213
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2214
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2216
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_0
    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v4, 0x0

    .line 2217
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2218
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2219
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2220
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2221
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2222
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2223
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2224
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2225
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2226
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2227
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2228
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2230
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2231
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2232
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 8

    monitor-enter p0

    .line 1900
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1902
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1903
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1905
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1906
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    .line 1907
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1909
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewIncomingFtMessage msgType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1912
    iget-boolean v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v5, :cond_2

    .line 1913
    iget-boolean v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1917
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1918
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1919
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1920
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1921
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1922
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1923
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1924
    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1925
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1926
    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1927
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1928
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-wide v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1929
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    .line 1930
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1931
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mTimeDuration:I

    .line 1932
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1933
    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1934
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1935
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v5

    .line 1936
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1937
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1938
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1939
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1940
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1942
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1943
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1944
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1945
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1946
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1947
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    .line 1948
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v0, 0x0

    .line 1949
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1950
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_2
    invoke-virtual {p4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    .line 1951
    invoke-virtual {p4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1952
    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1953
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v2, v1, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    :cond_5
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    .line 1954
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1955
    invoke-virtual {p4, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1956
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1957
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1958
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1959
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1960
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object p1

    .line 1962
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1963
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 9

    monitor-enter p0

    .line 1721
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1722
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 1723
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v2

    .line 1724
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v3

    .line 1725
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1726
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsReferenceValue(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1727
    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v6

    .line 1729
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1730
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1731
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1732
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1733
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1734
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1735
    invoke-virtual {v8, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1736
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1737
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1738
    invoke-virtual {v7, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v8, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1739
    invoke-virtual {v7, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1740
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1741
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1742
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1743
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1744
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v7

    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1745
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1746
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1747
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1749
    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :goto_0
    invoke-virtual {p5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1750
    invoke-virtual {p5, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1751
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1752
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1753
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1754
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1755
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1756
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1757
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceId:Ljava/lang/String;

    .line 1758
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1759
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1760
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1761
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1762
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1763
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1764
    invoke-virtual {p2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1765
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1767
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1769
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 8

    monitor-enter p0

    .line 1783
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1785
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1786
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1789
    :cond_0
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1793
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1795
    iget-boolean v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1797
    :goto_0
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    .line 1798
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v4

    .line 1799
    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object v5

    .line 1801
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1802
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1803
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1804
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1805
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1806
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1807
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1808
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1809
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1810
    invoke-virtual {v6, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v7, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1811
    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1812
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1813
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v6, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1814
    invoke-virtual {p5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1815
    invoke-virtual {p5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1816
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const/4 v0, 0x1

    .line 1817
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1818
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1819
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1820
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1822
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_1
    invoke-virtual {p5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1823
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1824
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1825
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v3, v0, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1826
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1827
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 1828
    invoke-static {p5}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->isVM2TextMsg(Ljava/util/Map;)Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1829
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 1830
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 1831
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1832
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1833
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1834
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1835
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1836
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1838
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1840
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1842
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 1516
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewIncomingSession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1520
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1521
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1522
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1523
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1524
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1525
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1526
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1527
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v3

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v4

    invoke-static {p2, v2, v3, v4}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1528
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1529
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1530
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1531
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1532
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    const-string p3, ""

    .line 1533
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSubject:Ljava/lang/String;

    .line 1534
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1535
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1536
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1537
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1538
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1539
    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 1540
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 1541
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->createdBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    .line 1542
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->invitedBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1543
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1544
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1546
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1547
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1549
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;Z)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/net/Network;",
            "ZZZ",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            "Z)",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    monitor-enter p0

    .line 2076
    :try_start_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p4}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 2077
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez p8, :cond_0

    .line 2080
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p3, p4}, Lcom/sec/internal/helper/FileUtils;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object/from16 v7, p8

    .line 2083
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2084
    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2085
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2086
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2087
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2088
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2089
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2090
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2091
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2092
    invoke-virtual {v8, p4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2093
    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2094
    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2095
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object v3, p5

    .line 2096
    invoke-virtual {v2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v4, 0x0

    .line 2097
    invoke-virtual {v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2098
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2099
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2100
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2101
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p6

    .line 2102
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2104
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2105
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p7

    .line 2106
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2107
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2108
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p14

    .line 2109
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p10

    .line 2110
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p9

    .line 2111
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p12

    .line 2112
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p13

    .line 2113
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2114
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v2, p15

    .line 2115
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2116
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v0

    .line 2118
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    move/from16 v2, p11

    .line 2119
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setFtSms(Z)V

    .line 2120
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2121
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    monitor-enter p0

    .line 1986
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    .line 1987
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v5

    .line 1988
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v8, p2

    invoke-virtual {v8, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    move-object v5, v7

    .line 1992
    :goto_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1993
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1995
    :cond_1
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1997
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1999
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v9

    if-nez v4, :cond_2

    .line 2002
    invoke-static {v6}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 2005
    :cond_2
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v10

    if-eqz p9, :cond_3

    .line 2008
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 2011
    :cond_3
    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeNewOutgoingFtMessage msgType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2014
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2015
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2016
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2017
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2018
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2019
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2020
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2021
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2022
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2023
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2024
    invoke-virtual {v11, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2025
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2026
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2027
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2028
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v3, 0x0

    .line 2029
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v6, p5

    .line 2030
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2031
    invoke-virtual {v6, v9, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2032
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2033
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2034
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2035
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2036
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2038
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2039
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v4, p6

    .line 2040
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2041
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2042
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateFileTransferId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2043
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2044
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p7

    .line 2045
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p10

    .line 2046
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p11

    .line 2047
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2048
    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p12

    .line 2049
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->extinfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2050
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 2051
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2052
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v0

    .line 2054
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2055
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    monitor-enter p0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 1629
    :try_start_0
    invoke-virtual/range {v1 .. v16}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    monitor-enter p0

    if-eqz p8, :cond_0

    .line 1659
    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    if-eqz p10, :cond_1

    .line 1661
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    .line 1663
    :cond_1
    invoke-static {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz p11, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1671
    :goto_1
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 1673
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1674
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1675
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1676
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1677
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1678
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1679
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1680
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1681
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v7, p3

    .line 1682
    invoke-virtual {v6, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1683
    invoke-virtual {v7, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1684
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p4

    .line 1685
    invoke-virtual {v3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p5

    .line 1686
    invoke-virtual {v3, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1687
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1688
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1689
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1690
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v3, p6

    .line 1691
    invoke-virtual {v2, p6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move v3, p7

    .line 1693
    invoke-virtual {v2, p7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move/from16 v3, p9

    .line 1694
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1695
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1696
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p12

    .line 1697
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1698
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1699
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p13

    .line 1700
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p14

    .line 1701
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p15

    .line 1702
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1703
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 1705
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1706
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1432
    :try_start_0
    invoke-virtual/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    monitor-enter p0

    .line 1455
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewOutgoingSession: chatType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " participants="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " imsi= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1455
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 1460
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1461
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v5, v6, :cond_1

    .line 1462
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v5

    .line 1463
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1465
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, p10

    goto :goto_0

    :cond_2
    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 1469
    :goto_0
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v7

    .line 1470
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 1471
    :goto_1
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1472
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1473
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1474
    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1475
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1476
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1477
    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1478
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v10

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v11

    invoke-static {p2, p1, v10, v11}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1479
    invoke-virtual {v9, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1480
    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    move-object/from16 v3, p9

    .line 1481
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1482
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1483
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    const-string v2, ""

    .line 1484
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p4

    .line 1485
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p8

    .line 1486
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->iconPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p5

    .line 1487
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move/from16 v2, p6

    .line 1488
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->threadId(I)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p7

    .line 1489
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1490
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1491
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1492
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1493
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p12

    .line 1494
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1495
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->createdBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1496
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->invitedBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1497
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1499
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1500
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1502
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1888
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 3

    monitor-enter p0

    .line 1856
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1857
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1858
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1859
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1860
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1861
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1862
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1863
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1864
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1865
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1866
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1867
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1868
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1869
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1870
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    if-nez p4, :cond_0

    .line 1871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1872
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1873
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1

    .line 1875
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1876
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyCloudMsgFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1

    monitor-enter p0

    .line 2437
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->notifyFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2438
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1

    monitor-enter p0

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 824
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 772
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 811
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public readMessagesforCloudSync(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2308
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReadRcsMessageList(ILjava/util/List;)V

    return-void
.end method

.method public removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 2656
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized removeFromChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2742
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2743
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2746
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removeFromPendingList(I)V
    .locals 2

    .line 2558
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2560
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2561
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2562
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removed message from cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2564
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message is not in the cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized sentMessageForCloudSync(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2433
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1

    .line 2649
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateDesiredNotificationStatusAsDisplay(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2720
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2721
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v2, :cond_0

    .line 2723
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 2724
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 2725
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v3, v4, :cond_1

    .line 2726
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 2728
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2731
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateDesiredNotificationStatusAsDisplayed(Ljava/util/Collection;IJ)V

    return-void
.end method

.method public declared-synchronized updateParticipant(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2266
    :try_start_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUriGenerator(I)V
    .locals 2

    monitor-enter p0

    .line 377
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUriGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 380
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 382
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

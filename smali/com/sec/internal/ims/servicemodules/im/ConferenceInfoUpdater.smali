.class public Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;
.super Ljava/lang/Object;
.source "ConferenceInfoUpdater.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "ConferenceInfoUpdater"


# instance fields
.field mAddedParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDeletedParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field mInsertedParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field mIsLeaderChange:Z

.field mJoinedParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field mKickedOutParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field mLeftParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

.field mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field mNewLeader:Ljava/lang/String;

.field mOwnUri:Lcom/sec/ims/util/ImsUri;

.field mPhoneId:I

.field mUpdatedParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImSession;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/ims/util/UriGenerator;Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mContext:Landroid/content/Context;

    .line 61
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mPhoneId:I

    .line 62
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mOwnUri:Lcom/sec/ims/util/ImsUri;

    .line 63
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 64
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 65
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    .line 66
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    return-void
.end method

.method private downloadGroupIcon(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 19

    move-object/from16 v0, p0

    .line 182
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 183
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "downloadGroupIcon: FT HTTP is not enabled."

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "received_files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v3, "downloadGroupIcon: cannot create dir. Use default download directory."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 193
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateFileTransferId()Ljava/lang/String;

    move-result-object v3

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "url"

    .line 199
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ci"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    invoke-interface {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object v13

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getNetwork(I)Landroid/net/Network;

    move-result-object v14

    .line 205
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v15

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;

    move-object/from16 v4, p1

    invoke-direct {v1, v0, v4, v11}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;Ljava/lang/String;)V

    move-object v5, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    invoke-direct/range {v5 .. v18}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;Ljava/util/Map;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;)V

    .line 223
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mPhoneId:I

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;)V

    .line 225
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->execute(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 227
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Downloading Group Icon was failed due to invalid parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleParticipantUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;Ljava/lang/String;)V
    .locals 7

    .line 131
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConferenceInfoUpdated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->normalizeUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 136
    iget-boolean v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsOwn:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mOwnUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v2

    .line 142
    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/translator/TranslatorCollection;->translateEngineParticipantInfo(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    if-nez v2, :cond_2

    .line 145
    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->newParticipantAdded(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v4

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " prevStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 150
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->participantStatusUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 153
    :cond_3
    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 154
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v3

    if-eq v1, v3, :cond_5

    const/4 v3, 0x1

    .line 155
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mIsLeaderChange:Z

    .line 156
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v4, "onConferenceInfoUpdated, mIsLeaderChange=true."

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setType(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;)V

    .line 158
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    if-ne v1, v3, :cond_5

    .line 160
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    .line 164
    :cond_5
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setUserAlias(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantAliasUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    goto/16 :goto_0

    .line 137
    :cond_7
    :goto_2
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->ownInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private isJoinedParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z
    .locals 1

    .line 425
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string p1, "display_invited_systemmessage"

    .line 427
    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isKickedOutParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;)Z
    .locals 1

    .line 433
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-ne p3, p2, :cond_1

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string p1, "display_invited_systemmessage"

    .line 436
    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLeftParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z
    .locals 0

    .line 442
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->needToNotifyParticipantUpdates(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, p3, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string p1, "display_invited_systemmessage"

    .line 444
    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNonUpdateState(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z
    .locals 0

    .line 449
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p0, :cond_2

    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSubjectChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, ""

    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    .line 463
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 464
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object p0

    .line 467
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private needToNotifyParticipantUpdates(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v0, "check_participant_of_partial_state"

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->PARTIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private newParticipantAdded(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 10

    .line 261
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p2, v0, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p1, "Participant doesn\'t exist, nor status is connected/pending...ignore"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 263
    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    if-eqz v2, :cond_2

    .line 264
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    .line 265
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->CHAIRMAN:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 266
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    iput-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v1

    .line 270
    :goto_1
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    move-object v4, v1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-ne p2, v0, :cond_3

    .line 274
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void
.end method

.method private ownInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Ljava/lang/String;)V
    .locals 3

    .line 245
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ownInfoUpdated"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mIsChairman:Z

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 248
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 249
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatLeaderInformed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 250
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    iput-object v1, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    .line 253
    :cond_1
    iget-object p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnGroupAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConferenceInfoUpdated, old ownGroupAlias= "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnGroupAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new DispName="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDispName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateOwnGroupAlias(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private participantStatusUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 2

    .line 283
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isJoinedParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mJoiningTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    invoke-direct {p0, p4, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isKickedOutParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    invoke-direct {p0, p3, p4, v0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isLeftParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionTime:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p3, v0, :cond_3

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionCause:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v1, :cond_3

    .line 294
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "invitation has failed with 404. update capability"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 295
    sget-object p1, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->triggerCapability(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/ims/options/CapabilityRefreshType;)V

    .line 298
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-eq p3, p1, :cond_5

    if-ne p3, v0, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v0, "remove_failed_participant_groupchat"

    .line 299
    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 302
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isNonUpdateState(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 303
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 300
    :cond_5
    :goto_1
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private triggerCapability(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/ims/options/CapabilityRefreshType;)V
    .locals 1

    .line 238
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    :cond_0
    return-void
.end method


# virtual methods
.method public findAbsentParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 6

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 316
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    .line 317
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iget-object v3, v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INVITED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v4, "ignore_state_to_find_absent_participant"

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConferenceInfoUpdated, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is absent from updated full list."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v2

    if-eq v2, v3, :cond_4

    .line 325
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 328
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public notifyParticipantsInfo()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsUpdated(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsKickedOut(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 391
    :cond_6
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mIsLeaderChange:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    iput-object p0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    :cond_7
    return-void
.end method

.method protected onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-nez v0, :cond_0

    .line 77
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    const-string p1, "onConferenceInfoUpdated : Fail!! Strategy is null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mIsLeaderChange:Z

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->handleParticipantUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;Ljava/lang/String;)V

    .line 100
    iget-object p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mConferenceInfoType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;->FULL:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    if-ne p2, v0, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->findAbsentParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->getRequestByMcs()Z

    move-result p2

    if-nez p2, :cond_5

    .line 104
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result p2

    if-nez p2, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->notifyParticipantsInfo()V

    .line 107
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object p2

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->isSubjectChanged(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 108
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConferenceInfoUpdated, event.mSubjectData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatData.getSubjectData()= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 109
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 111
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result p2

    if-nez p2, :cond_3

    .line 112
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-interface {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatSubjectUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 115
    :cond_3
    iget-object p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result p2

    if-nez p2, :cond_4

    .line 116
    iget-object p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->onGroupChatIconUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 119
    :cond_4
    iget-object p2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mTimeStamp:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 120
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update timestamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateConferenceTimestamp(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    goto :goto_0

    .line 124
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result p1

    if-nez p1, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->updateParticipantCache()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onGroupChatIconUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 3

    .line 398
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConferenceInfoUpdated, event.mIconData= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mChatData.getIconData()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconType()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    if-ne v0, v1, :cond_4

    .line 401
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 403
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatIconDeleted(Ljava/lang/String;)V

    goto :goto_1

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 406
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 411
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->downloadGroupIcon(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    goto :goto_1

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->setIconLocation(Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    goto :goto_1

    .line 407
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->downloadGroupIcon(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    goto :goto_1

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    :goto_1
    return-void
.end method

.method public updateParticipantCache()V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mInsertedParticipants:Ljava/util/Set;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onHandleParticipants(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onHandleParticipants(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mDeletedParticipants:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mUpdatedParticipants:Ljava/util/Set;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onHandleParticipants(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mAddedParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsAdded(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mJoinedParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsJoined(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 353
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mLeftParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsLeft(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 355
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mKickedOutParticipants:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onNotifyParticipantsKickedOut(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Map;)V

    .line 359
    :cond_6
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mIsLeaderChange:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatLeaderChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ConferenceInfoUpdater;->mNewLeader:Ljava/lang/String;

    iput-object p0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mLeaderParticipant:Ljava/lang/String;

    :cond_7
    return-void
.end method

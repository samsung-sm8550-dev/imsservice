.class public abstract Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.super Ljava/util/Observable;
.source "MessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    }
.end annotation


# static fields
.field public static final FLAG_FT_SMS:I = 0x1

.field public static final FLAG_TEMPORARY:I = 0x2

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBody:Ljava/lang/String;

.field protected final mChatId:Ljava/lang/String;

.field private mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

.field protected final mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field protected mContentType:Ljava/lang/String;

.field protected mContributionId:Ljava/lang/String;

.field protected mConversationId:Ljava/lang/String;

.field protected mCurrentRetryCount:I

.field protected mDeliveredTimestamp:J

.field protected mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mDeviceId:Ljava/lang/String;

.field protected final mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field protected mDispNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayedTimestamp:J

.field protected mExtInfo:Ljava/lang/String;

.field protected mFlagMask:I

.field protected mId:I

.field protected final mImdnId:Ljava/lang/String;

.field protected mImdnOriginalTo:Ljava/lang/String;

.field protected mImdnRecRouteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field protected final mInsertedTimestamp:J

.field protected mIsBroadcastMsg:Z

.field protected mIsRoutingMsg:Z

.field protected mIsSlmSvcMsg:Z

.field protected mIsVM2TextMsg:Z

.field protected mLastDisplayedTimestamp:J

.field protected mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mMaapTrafficType:Ljava/lang/String;

.field protected mMessageCreator:Ljava/lang/String;

.field protected mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field protected mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field protected final mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

.field protected mNetwork:Landroid/net/Network;

.field protected mNotDisplayedCounter:I

.field protected mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

.field protected mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mRcsTrafficType:Ljava/lang/String;

.field protected mReferenceImdnId:Ljava/lang/String;

.field protected mReferenceType:Ljava/lang/String;

.field protected mReferenceValue:Ljava/lang/String;

.field protected mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field protected mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

.field protected mRequestMessageId:Ljava/lang/String;

.field protected mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field protected mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field protected mSentTimestamp:J

.field protected mSimIMSI:Ljava/lang/String;

.field protected final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field protected mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field protected mSuggestion:Ljava/lang/String;

.field protected final mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

.field protected mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field protected mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field protected mUserAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 86
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 87
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 103
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 111
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 114
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    .line 122
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSlmService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    .line 130
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 131
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSlmService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 132
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 133
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmThumbnailTool(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    .line 134
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 135
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    .line 136
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmChatId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImdnId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImdnOriginalTo(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImdnRecRouteList(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    .line 140
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 141
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsSlmSvcMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    .line 142
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmBody(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSuggestion(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSuggestion:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmContentType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    .line 145
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 146
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDirection(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 147
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmInsertedTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    .line 148
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSentTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    .line 149
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDeliveredTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    .line 150
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDisplayedTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    .line 151
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRemoteUri(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 152
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmUserAlias(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDispNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    .line 154
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmNotificationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 155
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDesiredNotificationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 156
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmNotDisplayedCounter(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    .line 157
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRequestMessageId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRequestMessageId:Ljava/lang/String;

    .line 158
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    .line 159
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsVM2TextMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsVM2TextMsg:Z

    .line 160
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsRoutingMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsRoutingMsg:Z

    .line 161
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRoutingType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 162
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmMnoStrategy(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 163
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmNetwork(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    .line 164
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmConversationId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmContributionId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    .line 167
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDeviceId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSimIMSI(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmFlagMask(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    .line 170
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRevocationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 171
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmMaapTraficType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmMessagingTech(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 173
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmReferenceImdnId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceImdnId:Ljava/lang/String;

    .line 174
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmReferenceType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmReferenceValue(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceValue:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRcsTrafficType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    return-void
.end method

.method private getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 546
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.gsma.rcspulllocation+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 181
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0

    .line 184
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 796
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 799
    :cond_2
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 800
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 801
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 804
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 807
    :cond_4
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    return-object p0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentRetryCount()I
    .locals 0

    .line 722
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    return p0
.end method

.method public getDeliveredTimestamp()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    return-wide v0
.end method

.method public getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method public getDisplayedTimestamp()Ljava/lang/Long;
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getDispositionNotification()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    return-object p0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getFlagMask()I
    .locals 0

    .line 457
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 198
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    return p0
.end method

.method public getImdnId()Ljava/lang/String;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    return-object p0
.end method

.method public getImdnOriginalTo()Ljava/lang/String;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    return-object p0
.end method

.method public getImdnRecRouteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    return-object p0
.end method

.method public getInsertedTimestamp()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    return-wide v0
.end method

.method public getIsSlmSvcMsg()Z
    .locals 0

    .line 222
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    return p0
.end method

.method public getLastDisplayedTimestamp()Ljava/lang/Long;
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastDisplayedTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method public getMaapTrafficType()Ljava/lang/String;
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageCreator()Ljava/lang/String;
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessageCreator:Ljava/lang/String;

    return-object p0
.end method

.method public getMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-object p0
.end method

.method public getNewDate(J)Ljava/util/Date;
    .locals 2

    .line 824
    new-instance p0, Ljava/util/Date;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .locals 7

    .line 401
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewDate(J)Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;)V

    return-object v6
.end method

.method public getNotDisplayedCounter()I
    .locals 0

    .line 322
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    return p0
.end method

.method public getNotificationParticipant()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method public getOwnIMSI()Ljava/lang/String;
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 735
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-object p0
.end method

.method public getRcsTrafficType()Ljava/lang/String;
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    return-object p0
.end method

.method public getReferenceImdnId()Ljava/lang/String;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceImdnId:Ljava/lang/String;

    return-object p0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    return-object p0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceValue:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;
    .locals 0

    .line 481
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    return-object p0
.end method

.method public getRequestMessageId()Ljava/lang/String;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRequestMessageId:Ljava/lang/String;

    return-object p0
.end method

.method public getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-object p0
.end method

.method public getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object p0
.end method

.method public getSentTimestamp()J
    .locals 2

    .line 250
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    return-wide v0
.end method

.method public abstract getServiceTag()Ljava/lang/String;
.end method

.method public getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSuggestion:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 751
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public incrementRetryCount()V
    .locals 1

    .line 726
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    return-void
.end method

.method public isBroadcastMsg()Z
    .locals 0

    .line 405
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    return p0
.end method

.method public isDeliveredNotificationRequired()Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayedNotificationRequired()Z
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFtSms()Z
    .locals 1

    .line 421
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoutingMsg()Z
    .locals 0

    .line 413
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsRoutingMsg:Z

    return p0
.end method

.method public isTemporary()Z
    .locals 1

    .line 429
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVM2TextMsg()Z
    .locals 0

    .line 409
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsVM2TextMsg:Z

    return p0
.end method

.method protected isWifiConnected()Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method public onCanceledNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq v0, v1, :cond_0

    .line 705
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Outgoing message received canceled notification, ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 710
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 712
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne p1, v0, :cond_1

    .line 713
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    goto :goto_0

    .line 715
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    :goto_0
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 5

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq v0, v1, :cond_0

    .line 633
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Incoming message received imdn notification, ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 637
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    .line 688
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 689
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 690
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 691
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 692
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 693
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto/16 :goto_0

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_4

    goto/16 :goto_0

    .line 675
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 676
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 677
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 678
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 679
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 680
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto/16 :goto_0

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v2, :cond_6

    .line 649
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 650
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 651
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 654
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 655
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastDisplayedTimestamp:J

    .line 656
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    if-lez v2, :cond_7

    .line 657
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImdnNotificationReceived: Decrease mNotDisplayedCounter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    .line 661
    :cond_7
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    if-nez v1, :cond_8

    .line 662
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 663
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 666
    :cond_8
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 667
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 639
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 640
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 641
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 642
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 643
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 644
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_a
    :goto_0
    return-void
.end method

.method protected onSendCanceledNotificationDone()V
    .locals 1

    .line 628
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    return-void
.end method

.method protected onSendDeliveredNotificationDone()V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_0

    .line 618
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    :cond_0
    return-void
.end method

.method protected onSendDisplayedNotificationDone()V
    .locals 1

    .line 623
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    return-void
.end method

.method public onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected sendCanceledNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz p6, :cond_0

    .line 601
    new-instance v1, Lcom/sec/ims/util/ImsUri;

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    invoke-direct {v1, v2}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 602
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v1, :cond_3

    .line 603
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_0

    .line 610
    :goto_1
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object/from16 v5, p2

    goto :goto_2

    :cond_1
    move-object v5, v1

    .line 611
    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object/from16 v6, p3

    goto :goto_3

    :cond_2
    move-object v6, v1

    :goto_3
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 612
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v10

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v2

    const/4 v7, 0x1

    invoke-interface {v1, v2, v7}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v14

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move/from16 v11, p6

    move/from16 v13, p7

    invoke-direct/range {v1 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;ZLjava/lang/String;)V

    .line 613
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendCanceledNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    return-void

    .line 605
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mRemoteUri is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 556
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_0

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDeliveredNotificationDone()V

    return-void

    .line 560
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 562
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 563
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v9, p3

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 564
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v13

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v17

    move-object v4, v1

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v14, p6

    move/from16 v16, p7

    invoke-direct/range {v4 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;ZLjava/lang/String;)V

    .line 565
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v2, :cond_4

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isVM2TextMsg()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 567
    invoke-static {}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->addVM2TextHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->addImExtensionMNOHeaders(Ljava/util/Map;)V

    .line 569
    :cond_3
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_2

    .line 571
    :cond_4
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    :goto_2
    return-void
.end method

.method protected sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 577
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_0

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDisplayedNotificationDone()V

    return-void

    .line 581
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 584
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 585
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v9, p3

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 586
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v13

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v17

    move-object v4, v1

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v14, p6

    move/from16 v16, p7

    invoke-direct/range {v4 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;ZLjava/lang/String;)V

    .line 587
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v2, :cond_4

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isVM2TextMsg()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    invoke-static {}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->addVM2TextHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->addImExtensionMNOHeaders(Ljava/util/Map;)V

    .line 591
    :cond_3
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_2

    .line 593
    :cond_4
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    :goto_2
    return-void
.end method

.method public sendMessageRevokeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V
    .locals 11

    .line 811
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_0

    .line 812
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "remote uri is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 818
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    move-object v4, v0

    move-object v7, p3

    move-object v8, p1

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V

    return-void
.end method

.method public setChatbotMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-void
.end method

.method public setDeliveredTimestamp(J)V
    .locals 0

    .line 262
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    return-void
.end method

.method public setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-void
.end method

.method public setDisplayedTimestamp(J)V
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    return-void
.end method

.method public setFtSms(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 425
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    return-void
.end method

.method public setImdnRecRouteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    return-void
.end method

.method public setMessageCreator(Ljava/lang/String;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessageCreator:Ljava/lang/String;

    return-void
.end method

.method public setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-void
.end method

.method public setSentTimestamp(J)V
    .locals 0

    .line 254
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    return-void
.end method

.method public setSlmSvcMsg(Z)V
    .locals 0

    .line 437
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    return-void
.end method

.method public setSpamInfo(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 477
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;-><init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    return-void
.end method

.method public setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-void
.end method

.method public setTemporary(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 433
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageBase [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    .line 759
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 761
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnOriginalTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    .line 764
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnRecRouteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInsertedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSentTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDeliveredTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    .line 772
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDispNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredNotificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotDisplayedCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBroadcastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaapTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0

    .line 730
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 731
    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public updateDeliveredTimestamp(J)V
    .locals 0

    .line 350
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    .line 351
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 362
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateDisplayedTimestamp(J)V
    .locals 0

    .line 355
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    .line 356
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    .line 346
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 373
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateOwnIMSI(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 501
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    .line 503
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateRemoteUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 509
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 380
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 340
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

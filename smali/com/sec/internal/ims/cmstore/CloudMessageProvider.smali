.class public Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
.super Landroid/content/ContentProvider;
.source "CloudMessageProvider.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static PROVIDER_NAME:Ljava/lang/String; = null

.field private static final SIM_1:I = 0x0

.field private static final SIM_2:I = 0x1

.field protected static mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister; = null

.field private static final mBufferDBInitialized:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mDualDBRequired:Z = false

.field protected static sUriMatcher:Landroid/content/UriMatcher; = null

.field private static final simSlot2:Ljava/lang/String; = "/slot2"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 53
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 54
    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 55
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    const-string v1, "com.samsung.rcs.cmstore"

    .line 56
    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 57
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const/4 v2, 0x0

    .line 63
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    .line 67
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "smsmessages/#"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspdumessage/#"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmsaddrmessages/#"

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages/#"

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages_partid/#"

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcschatmessage/#"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsftmessage/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessages/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notification/#"

    const/16 v4, 0xd

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "summarytable/#"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "latestmessage/#"

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allsmsmessages"

    const/16 v4, 0x1f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allmmspdumessage"

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "useroptinflag"

    const/16 v4, 0x25

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "max_small_file_size"

    const/16 v4, 0x28

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "smsmessages/slot2/#"

    const/16 v4, 0x2b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspdumessage/slot2/#"

    const/16 v4, 0x2c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmsaddrmessages/slot2/#"

    const/16 v4, 0x2d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages/slot2/#"

    const/16 v4, 0x2e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "mmspartmessages_partid/slot2/#"

    const/16 v4, 0x30

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcschatmessage/slot2/#"

    const/16 v4, 0x29

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsftmessage/slot2/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessages/slot2/#"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsparticipants/slot2/*"

    const/16 v4, 0x2a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcssession/slot2/*"

    const/16 v4, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notification/slot2/#"

    const/16 v4, 0x35

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "summarytable/slot2/#"

    const/16 v4, 0x2f

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsmessageimdn/slot2/*"

    const/16 v4, 0x37

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "notificationimdn/slot2/*"

    const/16 v4, 0x48

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "pendingsmsmessages/slot2/*"

    const/16 v4, 0x38

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "pendingmmspdumessage/slot2/*"

    const/16 v4, 0x39

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "pendingrcschatmessage/slot2/*"

    const/16 v4, 0x3a

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "pendingrcsftmessage/slot2/*"

    const/16 v4, 0x3b

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "latestmessage/slot2/#"

    const/16 v4, 0x3e

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allsmsmessages/slot2"

    const/16 v4, 0x3c

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "allmmspdumessage/slot2"

    const/16 v4, 0x3d

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "useroptinflag/slot2"

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "max_small_file_size/slot2"

    const/16 v4, 0x49

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmmessages/slot2/*"

    const/16 v4, 0x41

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmprofile/slot2/*"

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmgreeting/slot2/*"

    const/16 v4, 0x42

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmpin/slot2/*"

    const/16 v4, 0x43

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "vvmquota/slot2/*"

    const/16 v4, 0x45

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "pendingvvmmessages/slot2/*"

    const/16 v4, 0x46

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v3, "multilinestatus/slot2/*"

    const/16 v4, 0x47

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v3, "rcsparticipants/*"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "rcssession/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "rcsmessageimdn/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "notificationimdn/*"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmmessages/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmprofile/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmgreeting/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmpin/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmquota/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingsmsmessages/*"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingmmspdumessage/*"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingrcschatmessage/*"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingrcsftmessage/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingvvmmessages/*"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "multilinestatus/*"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "userdebugflag"

    const/16 v3, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "migrate_success"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "ambs_feature_ver"

    const/16 v3, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static declared-synchronized createBufferDBInstance(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 4

    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    monitor-enter v0

    .line 339
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBufferDBInstance() slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mDualDBRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "createBufferDBInstance() DB not loaded"

    .line 341
    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->setDualDBEnable(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 343
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->initBufferDB(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 344
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "createBufferDBInstance() already loaded"

    .line 346
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMaxSmallFileSize(I)Landroid/database/Cursor;
    .locals 4

    .line 881
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 882
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMaxSmallFileSize()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 884
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxSmallFileSize slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxSmallFileSize: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance p0, Landroid/database/MatrixCursor;

    const-string p1, "max_small_file_size"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 887
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object p0
.end method

.method private getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .locals 3

    .line 420
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimSlotBuff mDualDBRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x29

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 422
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v0, 0x49

    if-gt p1, v0, :cond_1

    const-string p1, "getSimSlotBuff mDualDBRequired slot: 1"

    .line 423
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-boolean p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    if-eqz p0, :cond_0

    .line 425
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    .line 427
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    return-object p0

    .line 430
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    return-object p0
.end method

.method private static initBufferDB(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 4

    .line 351
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    .line 352
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initBufferDB() mDualDBRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", for slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    if-eqz v2, :cond_0

    .line 354
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    aput-object p0, v1, v0

    .line 355
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    goto :goto_1

    .line 358
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDBInitialized:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    invoke-static {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    aput-object p0, v0, v2

    .line 362
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "initBufferDB() DB already loaded for single DB Case"

    .line 359
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private needToResetMcsData(ILjava/lang/String;)Z
    .locals 2

    .line 822
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 825
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const-string p1, "mcs_url"

    const-string v0, ""

    .line 826
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValueOfUserDebug(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 827
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 10

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 377
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "group_cotag"

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 382
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 383
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 384
    array-length v3, v0

    .line 386
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 388
    :cond_2
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_7

    .line 391
    aget-object v6, v0, v5

    .line 392
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 393
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    .line 408
    invoke-virtual {v4, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 409
    sget-object v6, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Type default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 405
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 402
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 399
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 396
    :cond_6
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 413
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_8
    return-object v2
.end method

.method private static setDualDBEnable(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 329
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 330
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDualDBEnable() non ATT&T/TMOUS case"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setDualDBEnable() mDualDBRequired set true for ATT&T/TMOUS case"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 332
    sput-boolean p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mDualDBRequired:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 270
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    .line 274
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 277
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 307
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    .line 292
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 287
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x1

    .line 282
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 324
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 369
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onCreate()"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 834
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "URI invalid. Use an id-based URI only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 841
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 842
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne v0, v2, :cond_2

    const-string v0, "_data"

    .line 849
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    const-string v0, "file_path"

    .line 851
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 853
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 855
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_a

    if-eqz v0, :cond_9

    .line 860
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 862
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "w"

    .line 863
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 865
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    .line 867
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 870
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_3
    const/high16 p1, 0x20000000

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    const-string/jumbo v0, "r"

    .line 874
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x10000000

    or-int/2addr p1, v0

    :cond_7
    const-string v0, "+"

    .line 875
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/high16 p2, 0x2000000

    or-int/2addr p1, p2

    .line 876
    :cond_8
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 858
    :cond_9
    :try_start_2
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "File path is null"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 856
    :cond_a
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple items at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 844
    :cond_b
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_c

    .line 841
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 437
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v2

    .line 442
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_b

    const/16 v4, 0xf

    if-eq v1, v4, :cond_a

    const/16 v4, 0x35

    if-eq v1, v4, :cond_b

    const/16 v3, 0x62

    if-eq v1, v3, :cond_9

    const/16 v3, 0x63

    const/4 v4, 0x0

    if-eq v1, v3, :cond_7

    const-string v8, "com.samsung.android.messaging"

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const-string v5, "opt_in_flag"

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    goto/16 :goto_0

    .line 711
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMaxSmallFileSize(I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_1
    const-string p0, "OPT_IN_STATUS2"

    .line 681
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 684
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v4

    .line 686
    :cond_0
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 688
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 708
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getMaxSmallFileSize(I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_3
    const/16 v3, 0xd

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 704
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_4
    const-string p0, "OPT_IN_STATUS1"

    .line 657
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 660
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v4

    .line 662
    :cond_1
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 664
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    :pswitch_5
    const-string v6, "_bufferdbid= ?"

    const/16 v4, 0x24

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 555
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_6
    const-string p0, "DATABASE MIGRATE FLAG"

    .line 669
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 672
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMigrateSuccessFlag()Z

    move-result v4

    .line 674
    :cond_2
    new-instance p0, Landroid/database/MatrixCursor;

    const-string p1, "migrate_success"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 676
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_3

    .line 627
    :pswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 628
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LASTEST Message DB index = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "MAX(_bufferdbid)"

    .line 629
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p4

    if-eq p1, v3, :cond_4

    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4

    const/16 p0, 0x11

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    goto/16 :goto_3

    :cond_4
    :goto_1
    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p5, 0x0

    move-object p0, v2

    .line 634
    invoke-virtual/range {p0 .. p5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_8
    const/16 v3, 0x20

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 622
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_9
    const/16 v3, 0x1f

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 614
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 616
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 617
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_a
    const-string/jumbo v5, "syncdirection=? OR syncdirection=?"

    .line 606
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 607
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 608
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v6

    const/16 v3, 0x11

    move-object v4, p2

    move-object v7, p5

    .line 609
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_b
    const-string/jumbo v5, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    .line 595
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 596
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 597
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p0, p1, p3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    move-object v4, p2

    move-object v7, p5

    .line 599
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_c
    const-string/jumbo v5, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    .line 583
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 584
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 585
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p0, p1, p3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x1

    move-object v4, p2

    move-object v7, p5

    .line 587
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_d
    const-string/jumbo v5, "syncdirection=? OR syncdirection=?"

    .line 572
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 573
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 574
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x4

    move-object v4, p2

    move-object v7, p5

    .line 575
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_e
    const-string/jumbo v5, "syncdirection=? OR syncdirection=?"

    .line 562
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 563
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 564
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x3

    move-object v4, p2

    move-object v7, p5

    .line 565
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_f
    const-string v6, "linenum= ?"

    const/16 v4, 0x17

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 525
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_10
    const-string v6, "_bufferdbid= ?"

    const/16 v4, 0x14

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 537
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_11
    const-string v6, "_bufferdbid= ?"

    const/16 v4, 0x13

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 549
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_12
    const-string v6, "_bufferdbid= ?"

    const/16 v4, 0x12

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 543
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_13
    const-string v6, "_bufferdbid= ?"

    const/16 v4, 0x11

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 531
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    .line 510
    :pswitch_14
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p3, "chat_id= ?"

    :cond_5
    move-object v6, p3

    const/16 v4, 0xa

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 513
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    .line 496
    :pswitch_15
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RCS_MESSAGE_ID bufferDB = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    .line 498
    invoke-virtual {v2, v3, p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_16
    const-string v6, "_bufferdbid= ?"

    const/4 v4, 0x6

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 491
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_17
    const-string v6, "_bufferdbid= ?"

    const/4 v4, 0x7

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 446
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_18
    const-string v6, "mid= ?"

    const/4 v4, 0x6

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 479
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_19
    const-string v6, "msg_id= ?"

    const/4 v4, 0x5

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 485
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_1a
    const-string v6, "_bufferdbid= ?"

    const/4 v4, 0x4

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 473
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_1b
    const-string v6, "_bufferdbid= ?"

    const/4 v4, 0x3

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 464
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 466
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 467
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->removeCoTag(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :cond_6
    :goto_2
    move-object p0, p1

    goto/16 :goto_3

    :pswitch_1c
    const-string v6, "chat_id= ?"

    const/4 v4, 0x2

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 458
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_1d
    const-string v6, "_bufferdbid= ?"

    const/4 v4, 0x1

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 452
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_3

    :cond_7
    const-string p0, "USER_DEBUG_FLAG"

    .line 638
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 640
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    .line 642
    :cond_8
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "AMBS_DEBUG"

    const-string v1, "app_id"

    const-string v2, "cps_host_name"

    const-string v3, "auth_host_name"

    const-string/jumbo v4, "retry_time"

    const-string v5, "nc_host_name"

    const-string v6, "mcs_url"

    const-string v7, "oasis_version"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 645
    sget-boolean p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 646
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 647
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 648
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 649
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 650
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 651
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 652
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    :cond_9
    const-string p0, "QUERY AMBS VERSION "

    .line 692
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result p0

    .line 694
    new-instance p1, Landroid/database/MatrixCursor;

    const-string/jumbo p2, "version_num"

    const-string/jumbo p3, "version_desc"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    .line 696
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    if-eqz p0, :cond_6

    const-string/jumbo p0, "sbsms"

    .line 698
    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_2

    :cond_a
    :pswitch_1e
    const-string v6, "imdn_message_id= ?"

    const/4 v4, 0x1

    move-object v3, p1

    move-object v5, p2

    move-object v7, p5

    .line 519
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_3

    .line 503
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 504
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RCS_MESSAGES_IMDN bufferDB = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    .line 505
    invoke-virtual {v2, v3, p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x23
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x27
        :pswitch_3
        :pswitch_2
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x37
        :pswitch_1e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x40
        :pswitch_1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 721
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v1

    .line 724
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v2, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_0
    const/4 p0, 0x7

    .line 727
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_1
    const/4 p0, 0x6

    .line 754
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_2
    const/4 p0, 0x5

    .line 760
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_3
    const/4 p0, 0x4

    .line 748
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_4
    const/4 p0, 0x3

    .line 743
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_5
    const/4 p0, 0x2

    .line 737
    invoke-virtual {v1, p0, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    .line 732
    :pswitch_6
    invoke-virtual {v1, v3, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :cond_0
    const-string p1, "AMBS_DEBUG"

    .line 765
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 766
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Debug enabled?: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    move-object p4, p1

    goto :goto_0

    :cond_1
    const-string p4, "null"

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 767
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "app_id"

    .line 768
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "cps_host_name"

    .line 769
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "auth_host_name"

    .line 770
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v0, "retry_time"

    .line 771
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nc_host_name"

    .line 772
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcs_url"

    .line 773
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    .line 775
    invoke-static {p1, p4, p3, v1}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 778
    sput-boolean v3, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    if-eqz v0, :cond_3

    .line 780
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    goto :goto_1

    .line 783
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 784
    sput-boolean v4, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 785
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 786
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    const-string p1, "https://rapi.rcsoasis.kr"

    .line 787
    sput-object p1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    .line 790
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    .line 791
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerVersion()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    move p1, v4

    .line 794
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 795
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 796
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->needToResetMcsData(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 797
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->resetMcsData()V

    .line 798
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    .line 799
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p2

    .line 800
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 801
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->resetMcsData()V

    .line 802
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    .line 804
    :cond_4
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDebug()V

    .line 806
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetMcsRestartReceiver()V

    .line 808
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 809
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetDataReceiver()V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

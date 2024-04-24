.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;
.super Ljava/lang/Object;
.source "CloudMessageObjectsOpSearch.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$currentLine:Ljava/lang/String;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$searchCursor:Ljava/lang/String;

.field final synthetic val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .locals 2

    .line 255
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 256
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 258
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 259
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 261
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetmIsFullSync(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Z

    move-result p0

    .line 262
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    const-string v0, ""

    .line 263
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 12

    const-string v0, "objectList"

    const-string v1, ""

    .line 97
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    .line 98
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 100
    invoke-static {v3, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/16 v3, 0xce

    const/16 v4, 0xc8

    if-ne v2, v3, :cond_1

    .line 104
    invoke-virtual {p1, v4}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    return-void

    .line 110
    :cond_1
    const-class v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    if-ne v2, v4, :cond_8

    .line 111
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getDecryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetisCmsMcsEnabled(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 115
    new-instance v7, Lcom/google/gson/GsonBuilder;

    invoke-direct {v7}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 116
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;

    const-class v9, Lcom/sec/internal/omanetapi/nms/data/Attribute;

    invoke-direct {v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v7, v9, v8}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 117
    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v7

    goto :goto_0

    .line 119
    :cond_2
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 124
    :goto_0
    :try_start_0
    invoke-virtual {v7, v4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 127
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    new-instance v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-direct {v3}, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;-><init>()V

    .line 134
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 136
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "cursor"

    .line 139
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 142
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    iput-object v5, v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    goto :goto_2

    .line 146
    :cond_4
    new-instance v4, Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    invoke-direct {v4}, Lcom/sec/internal/omanetapi/nms/data/ObjectList;-><init>()V

    iput-object v4, v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 147
    iput-object v0, v4, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->cursor:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 151
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 152
    iput-object v5, v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    :goto_2
    if-nez v3, :cond_5

    .line 157
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 159
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 158
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    .line 163
    :cond_5
    iget-object v0, v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    if-eqz v0, :cond_7

    .line 166
    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->cursor:Ljava/lang/String;

    .line 167
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    .line 169
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 171
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetmIsFullSync(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Z

    move-result v3

    .line 172
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 174
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 175
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_PARTIAL_SYNC_SUMMARY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 178
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 179
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 180
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    goto :goto_3

    .line 182
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 184
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 185
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 187
    :goto_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_4

    .line 189
    :cond_7
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 191
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 194
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 195
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setMStoreClient(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 197
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$currentLine:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetmIsFullSync(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Z

    move-result v3

    .line 199
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_4

    :cond_8
    const/16 v0, 0xcc

    if-ne v2, v0, :cond_9

    .line 204
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    :goto_4
    move-object v9, v0

    goto/16 :goto_6

    :cond_9
    const/16 v0, 0x195

    if-ne v2, v0, :cond_b

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getDecryptedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 213
    :try_start_2
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    if-eqz v1, :cond_a

    .line 215
    iget-object v1, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->requestError:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/common/data/RequestError;->policyException:Lcom/sec/internal/omanetapi/common/data/PolicyException;

    iget-object v0, v1, Lcom/sec/internal/omanetapi/common/data/PolicyException;->messageId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :cond_a
    move-object v0, v5

    goto :goto_5

    :catch_2
    move-exception v1

    .line 218
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 219
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->getResponseMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_b

    const-string v1, "POL2006"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 224
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", remove PersetSearch Filter and resend OpSearch HTTP request"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REQUEST_OPSEARCH_AFTER_PSF_REMOVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedEvent(ILjava/lang/Object;)V

    return-void

    :cond_b
    move-object v9, v5

    :goto_6
    move v11, v6

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result v0

    if-nez v0, :cond_c

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryRequired(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 237
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-interface {p1, v0, v5, p0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V

    return-void

    .line 242
    :cond_c
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 248
    :cond_d
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->makeSearchCompleteResponse()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 250
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 249
    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

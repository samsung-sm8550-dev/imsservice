.class public Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;
.super Ljava/lang/Object;
.source "CallRequestBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallRequestBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeAcceptCallTransfer(IIZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 1412
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1415
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1416
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v2

    .line 1419
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->startRequestAcceptTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p1

    .line 1420
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1421
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1422
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addAccept(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-lez p3, :cond_2

    if-eq p4, v2, :cond_1

    .line 1426
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addReasonPhrase(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p0, p3

    .line 1428
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addStatusCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1431
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->endRequestAcceptTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1434
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd5

    .line 1435
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x14

    .line 1436
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1437
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1438
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1440
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeAnswerCall(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 692
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 695
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v1

    .line 700
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    invoke-virtual {p0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_1

    :cond_1
    move p4, v1

    .line 704
    :goto_1
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->startRequestAcceptCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 705
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 706
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p3, v1, :cond_2

    .line 709
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addCmcCallTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq p4, v1, :cond_3

    .line 713
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addIdcExtra(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 716
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->endRequestAcceptCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 717
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xcd

    .line 718
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x10

    .line 719
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 720
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 722
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 724
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method static makeCancelTransferCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1245
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1247
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->startRequestCancelTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1248
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1249
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1250
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->endRequestCancelTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1252
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe3

    .line 1253
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x1d

    .line 1254
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1255
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1257
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1259
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeClearAllCallInternal(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 317
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 319
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->startRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 320
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->addCmcType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 321
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->endRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 323
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xf1

    .line 324
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x75

    .line 325
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 326
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 327
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 329
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeConference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 979
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v11, -0x1

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    if-eqz v1, :cond_1

    .line 988
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    if-eqz v2, :cond_2

    .line 993
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    if-eqz v4, :cond_3

    .line 998
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v11

    :goto_3
    if-eqz v5, :cond_4

    .line 1003
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    if-eqz v6, :cond_5

    .line 1008
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_5

    :cond_5
    move v6, v11

    :goto_5
    if-eqz v7, :cond_6

    .line 1013
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_6

    :cond_6
    move v7, v11

    :goto_6
    if-eqz v8, :cond_7

    .line 1018
    invoke-virtual {v9, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_7

    :cond_7
    move v8, v11

    .line 1021
    :goto_7
    array-length v12, v3

    .line 1022
    new-array v13, v12, [I

    :goto_8
    if-ge v10, v12, :cond_8

    .line 1024
    aget-object v14, v3, v10

    invoke-virtual {v9, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    aput v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1027
    :cond_8
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    .line 1029
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v8, v11, :cond_9

    .line 1032
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v7, v11, :cond_a

    .line 1036
    invoke-static {v9, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v5, v11, :cond_b

    .line 1040
    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v6, v11, :cond_c

    .line 1044
    invoke-static {v9, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v4, v11, :cond_d

    .line 1048
    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1051
    :cond_d
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v2, v11, :cond_e

    .line 1054
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v1, v11, :cond_f

    .line 1058
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    const/4 v1, 0x1

    .line 1061
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p2

    .line 1062
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p11

    .line 1063
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v0, v11, :cond_10

    .line 1066
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    move v0, p0

    int-to-long v0, v0

    .line 1069
    invoke-static {v9, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1070
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1072
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xd1

    .line 1073
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1e

    .line 1074
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1075
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1077
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1079
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v9, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeEnableQuantumSecurityService(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1796
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1798
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEnableQuantumSecurityService;->startRequestEnableQuantumSecurityService(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1800
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEnableQuantumSecurityService;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1801
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEnableQuantumSecurityService;->addEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1803
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEnableQuantumSecurityService;->endRequestEnableQuantumSecurityService(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1806
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf8

    .line 1807
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x4b

    .line 1808
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1809
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1810
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1812
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeEndCall(IILcom/sec/internal/constants/ims/SipReason;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 6

    .line 644
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v0, -0x1

    if-eqz p2, :cond_4

    .line 649
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 651
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 652
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    .line 655
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getExtensions()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 656
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getExtensions()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 657
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v3

    .line 658
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->createExtensionVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v0

    .line 661
    :goto_1
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->startEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 662
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->isLocalRelease()Z

    move-result v4

    invoke-static {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addIsLocalRelease(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 663
    invoke-static {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addProtocol(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 664
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result p2

    int-to-long v4, p2

    invoke-static {p0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addCause(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq v2, v0, :cond_2

    .line 666
    invoke-static {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq v3, v0, :cond_3

    .line 669
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addExtension(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 671
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->endEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v0

    .line 674
    :goto_2
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->startRequestEndCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 675
    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v0, :cond_5

    .line 677
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->addEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 679
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->endRequestEndCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 680
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xca

    .line 681
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0xe

    .line 682
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 683
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 685
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 687
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method static makeExtendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    .line 1088
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v11, -0x1

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    if-eqz v1, :cond_1

    .line 1097
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    if-eqz v2, :cond_2

    .line 1102
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    if-eqz v4, :cond_3

    .line 1107
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v11

    :goto_3
    if-eqz v5, :cond_4

    .line 1112
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v11

    :goto_4
    if-eqz v6, :cond_5

    .line 1117
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_5

    :cond_5
    move v6, v11

    :goto_5
    if-eqz v7, :cond_6

    .line 1122
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_6

    :cond_6
    move v7, v11

    :goto_6
    if-eqz v8, :cond_7

    .line 1127
    invoke-virtual {v9, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_7

    :cond_7
    move v8, v11

    .line 1130
    :goto_7
    array-length v12, v3

    .line 1131
    new-array v13, v12, [I

    :goto_8
    if-ge v10, v12, :cond_8

    .line 1133
    aget-object v14, v3, v10

    invoke-virtual {v9, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    aput v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1136
    :cond_8
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    .line 1138
    filled-new-array/range {p6 .. p6}, [I

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createSessionIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v10

    .line 1142
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v8, v11, :cond_9

    .line 1145
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v7, v11, :cond_a

    .line 1149
    invoke-static {v9, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v5, v11, :cond_b

    .line 1153
    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v6, v11, :cond_c

    .line 1157
    invoke-static {v9, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v4, v11, :cond_d

    .line 1161
    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1164
    :cond_d
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1165
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v2, v11, :cond_e

    .line 1168
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v1, v11, :cond_f

    .line 1172
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    const/4 v1, 0x1

    .line 1175
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p2

    .line 1176
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p12

    .line 1177
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v0, v11, :cond_10

    .line 1180
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    move v0, p0

    int-to-long v0, v0

    .line 1183
    invoke-static {v9, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1184
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1186
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xde

    .line 1187
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1e

    .line 1188
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1189
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1191
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1193
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v9, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeHandleCmcCsfb(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1854
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1856
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->startRequestHandleCmcCsfb(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1857
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1858
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1859
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->endRequestHandleCmcCsfb(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1861
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xee

    .line 1862
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x5e

    .line 1863
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1864
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1866
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1868
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeHandleDtmf(IIIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1445
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1447
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->startRequestHandleDtmf(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1448
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1449
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p2

    .line 1450
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p3

    .line 1451
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p4

    .line 1452
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addOperation(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1453
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->endRequestHandleDtmf(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1455
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xcf

    .line 1456
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x62

    .line 1457
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1458
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1460
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1462
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeHoldCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 728
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdCall: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 732
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->startRequestHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 733
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 734
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 735
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->endRequestHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 737
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xcb

    .line 738
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x11

    .line 739
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 740
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 742
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 744
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeHoldVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 768
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 770
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->startRequestHoldVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 771
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 772
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 773
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->endRequestHoldVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 775
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdb

    .line 776
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x19

    .line 777
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 778
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 780
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 782
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeMakeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p14

    move-object/from16 v10, p17

    move-object/from16 v11, p19

    .line 449
    new-instance v12, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v14, -0x1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v12, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_0
    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v12, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v14

    :goto_1
    if-eqz p8, :cond_6

    .line 465
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 466
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    goto :goto_2

    :cond_2
    move v15, v14

    .line 470
    :goto_2
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 471
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    goto :goto_3

    :cond_3
    move v13, v14

    .line 474
    :goto_3
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v15, v14, :cond_4

    .line 476
    invoke-static {v12, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    if-eq v13, v14, :cond_5

    .line 480
    invoke-static {v12, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 482
    :cond_5
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    move-object/from16 v15, p16

    goto :goto_4

    :cond_6
    move-object/from16 v15, p16

    move v13, v14

    .line 484
    :goto_4
    invoke-static {v15, v12}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->prepareComposerData(Landroid/os/Bundle;Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    if-eqz v7, :cond_8

    .line 487
    sget-object v14, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    move/from16 p1, v15

    const-string v15, "additional header present"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {v12, v7}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v14

    .line 489
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [I

    .line 491
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/16 v17, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    add-int/lit8 v19, v17, 0x1

    .line 492
    aput v18, v15, v17

    move/from16 v17, v19

    goto :goto_5

    .line 494
    :cond_7
    invoke-static {v12, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v14

    goto :goto_6

    :cond_8
    move/from16 p1, v15

    const/4 v14, -0x1

    :goto_6
    if-eqz v7, :cond_9

    .line 498
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 499
    invoke-static {v12, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 500
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    goto :goto_7

    :cond_9
    const/4 v7, -0x1

    :goto_7
    if-eqz v4, :cond_a

    .line 505
    invoke-virtual {v12, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 507
    filled-new-array {v4}, [I

    move-result-object v4

    .line 508
    invoke-static {v12, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->createEcscfListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4

    goto :goto_8

    :cond_a
    const/4 v4, -0x1

    :goto_8
    if-eqz v5, :cond_b

    .line 513
    invoke-virtual {v12, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_9

    :cond_b
    const/4 v5, -0x1

    :goto_9
    if-eqz v2, :cond_d

    .line 517
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_d

    const-string v14, "<PhotoRing>"

    .line 518
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 519
    sget-object v14, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v15, "PhotoRing is set"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v12, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_a

    .line 523
    :cond_c
    invoke-virtual {v12, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_a

    :cond_d
    const/4 v2, -0x1

    :goto_a
    if-eqz v8, :cond_e

    .line 528
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_e

    .line 529
    invoke-virtual {v12, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_b

    :cond_e
    const/4 v8, -0x1

    :goto_b
    if-eqz v3, :cond_f

    .line 533
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_f

    .line 534
    invoke-virtual {v12, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_c

    :cond_f
    const/4 v3, -0x1

    :goto_c
    if-eqz v6, :cond_10

    .line 538
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10

    .line 539
    invoke-virtual {v12, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_d

    :cond_10
    const/4 v6, -0x1

    :goto_d
    if-eqz v9, :cond_12

    .line 543
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_12

    .line 544
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v14

    new-array v15, v14, [I

    move/from16 v17, v7

    .line 545
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    move/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    const-string v3, "p2p.size():"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v14, :cond_11

    .line 547
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v12, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    aput v6, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 549
    :cond_11
    invoke-static {v12, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->createP2pListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_f

    :cond_12
    move/from16 v19, v3

    move/from16 v18, v6

    move/from16 v17, v7

    const/4 v3, -0x1

    :goto_f
    if-eqz v10, :cond_13

    .line 553
    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_13

    .line 554
    invoke-virtual {v12, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_10

    :cond_13
    const/4 v6, -0x1

    :goto_10
    if-eqz v11, :cond_14

    .line 558
    invoke-virtual/range {p19 .. p19}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 559
    invoke-virtual {v12, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_11

    :cond_14
    const/4 v7, -0x1

    .line 562
    :goto_11
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->startRequestMakeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move/from16 v9, p0

    int-to-long v9, v9

    .line 563
    invoke-static {v12, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v9, -0x1

    if-eq v0, v9, :cond_15

    .line 566
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addPeeruri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_15
    move/from16 v0, p3

    .line 569
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 v0, 0x1

    .line 570
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 571
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 v0, 0x0

    .line 572
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDirection(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v0, p13

    .line 573
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addIsLteEpsOnlyAttached(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v1, v9, :cond_16

    .line 576
    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_16
    if-eq v13, v9, :cond_17

    .line 580
    invoke-static {v12, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_17
    if-eq v4, v9, :cond_18

    .line 584
    invoke-static {v12, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addEcscfList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_18
    move/from16 v0, p7

    .line 587
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addEcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v5, v9, :cond_19

    .line 590
    invoke-static {v12, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCli(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_19
    if-eq v2, v9, :cond_1a

    .line 594
    invoke-static {v12, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDispName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1a
    if-eq v8, v9, :cond_1b

    .line 598
    invoke-static {v12, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAlertInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1b
    move/from16 v0, p15

    .line 601
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCmcBoundSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v3, v9, :cond_1c

    .line 603
    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addP2pList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1c
    move/from16 v3, v19

    if-eq v3, v9, :cond_1d

    .line 607
    invoke-static {v12, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDialedNumber(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1d
    move/from16 v0, v18

    if-eq v0, v9, :cond_1e

    .line 611
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addPEmergencyInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1e
    move/from16 v0, v17

    if-eq v0, v9, :cond_1f

    .line 615
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAdditionalSipHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1f
    move/from16 v0, p1

    if-eq v0, v9, :cond_20

    .line 619
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_20
    if-eq v6, v9, :cond_21

    .line 623
    invoke-static {v12, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addReplaceCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_21
    move/from16 v0, p18

    .line 625
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCmcEdCallSlot(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v7, v9, :cond_22

    .line 628
    invoke-static {v12, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addIdcExtra(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 631
    :cond_22
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->endRequestMakeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 632
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xc9

    .line 633
    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0xd

    .line 634
    invoke-static {v12, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 635
    invoke-static {v12, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 637
    invoke-static {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 639
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v12, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeMergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    .line 852
    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v11, -0x1

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    if-eqz v1, :cond_1

    .line 861
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v11

    :goto_1
    if-eqz v2, :cond_2

    .line 866
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v11

    :goto_2
    if-eqz v3, :cond_3

    .line 871
    invoke-virtual {v9, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v11

    :goto_3
    if-eqz v4, :cond_4

    .line 876
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v11

    :goto_4
    if-eqz v5, :cond_5

    .line 881
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_5

    :cond_5
    move v5, v11

    :goto_5
    if-eqz v6, :cond_6

    .line 886
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_6

    :cond_6
    move v6, v11

    :goto_6
    if-eqz v7, :cond_7

    .line 891
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    move/from16 v12, p1

    move/from16 v13, p2

    goto :goto_7

    :cond_7
    move/from16 v12, p1

    move/from16 v13, p2

    move v7, v11

    .line 895
    :goto_7
    filled-new-array {v13, v12}, [I

    move-result-object v12

    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createSessionIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12

    if-eqz v8, :cond_9

    .line 902
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v13

    .line 903
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [I

    .line 905
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v15, v10

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v17, v15, 0x1

    .line 906
    aput v16, v14, v15

    move/from16 v15, v17

    goto :goto_8

    .line 908
    :cond_8
    invoke-static {v9, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v13

    goto :goto_9

    :cond_9
    move v13, v11

    :goto_9
    if-eqz v8, :cond_a

    .line 913
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 914
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 915
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    goto :goto_a

    :cond_a
    move v8, v11

    .line 918
    :goto_a
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v8, v11, :cond_b

    .line 920
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addExtraHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v7, v11, :cond_c

    .line 924
    invoke-static {v9, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v6, v11, :cond_d

    .line 928
    invoke-static {v9, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v4, v11, :cond_e

    .line 932
    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v5, v11, :cond_f

    .line 936
    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v3, v11, :cond_10

    .line 940
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 943
    :cond_10
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v2, v11, :cond_11

    .line 946
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_11
    if-eq v1, v11, :cond_12

    .line 950
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 953
    :cond_12
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p4

    .line 954
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v1, p12

    .line 955
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq v0, v11, :cond_13

    .line 958
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_13
    move/from16 v0, p0

    int-to-long v0, v0

    .line 961
    invoke-static {v9, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 962
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 964
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xd1

    .line 965
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1e

    .line 966
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 967
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 969
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 971
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v9, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeModifyCallType(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1489
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1491
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->startRequestModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1492
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1493
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addOldType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1494
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addNewType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1495
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->endRequestModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1497
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd8

    .line 1498
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x16

    .line 1499
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1500
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1502
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1504
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeModifyVideoQuality(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1509
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1511
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->startRequestModifyVideoQuality(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1512
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1513
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addOldQual(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1514
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addNewQual(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1515
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->endRequestModifyVideoQuality(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1517
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe9

    .line 1518
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x25

    .line 1519
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1520
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1522
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1524
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeProgressIncomingCall(IILjava/util/HashMap;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 1873
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    .line 1876
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    .line 1877
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 1879
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    .line 1880
    aput v5, v3, v0

    move v0, v6

    goto :goto_0

    .line 1882
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding extra headers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-static {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz p2, :cond_2

    .line 1887
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1888
    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1889
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_2

    :cond_2
    move p2, v1

    .line 1892
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1893
    invoke-virtual {p0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    goto :goto_3

    :cond_3
    move p3, v1

    .line 1895
    :goto_3
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->startRequestProgressIncomingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 1896
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_4

    .line 1898
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->addExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    if-eq p3, v1, :cond_5

    .line 1901
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->addIdcExtra(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1903
    :cond_5
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->endRequestProgressIncomingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1904
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xda

    .line 1905
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x18

    .line 1906
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1907
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1909
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1911
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method static makePublishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1366
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 1370
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 1375
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 1380
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    goto :goto_2

    :cond_2
    move p3, v1

    .line 1383
    :goto_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->startRequestPublishDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p0

    .line 1384
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_3

    .line 1387
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addDispName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_3
    if-eq p1, v1, :cond_4

    .line 1391
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    if-eq p3, v1, :cond_5

    .line 1395
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addXmlBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1398
    :cond_5
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addExpireTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1400
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->endRequestPublishDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1401
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe4

    .line 1402
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x20

    .line 1403
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1404
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1405
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1407
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makePullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 1265
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v6, -0x1

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 1274
    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    if-eqz v2, :cond_2

    .line 1279
    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v6

    .line 1283
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getMdmnExtNumber()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1284
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getMdmnExtNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v6

    .line 1288
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1289
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_4

    :cond_4
    move v8, v6

    .line 1293
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1294
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    goto :goto_5

    :cond_5
    move v9, v6

    .line 1298
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1299
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    goto :goto_6

    :cond_6
    move v10, v6

    :goto_6
    if-eqz v3, :cond_8

    .line 1303
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 1304
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    new-array v12, v11, [I

    .line 1305
    sget-object v13, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "p2p.size():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-ge v5, v11, :cond_7

    .line 1307
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v4, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    aput v13, v12, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1309
    :cond_7
    invoke-static {v4, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->createP2pListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_8

    :cond_8
    move v3, v6

    .line 1312
    :goto_8
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->startRequestPullingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v7, v6, :cond_9

    .line 1315
    invoke-static {v4, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addMdmnExtNumber(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1318
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getVideoDirection()I

    move-result v5

    int-to-long v11, v5

    invoke-static {v4, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addVideoDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1319
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getAudioDirection()I

    move-result v5

    int-to-long v11, v5

    invoke-static {v4, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addAudioDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v5, 0x1

    .line 1320
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1321
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v9, v6, :cond_a

    .line 1324
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addRemoteTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v10, v6, :cond_b

    .line 1328
    invoke-static {v4, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addLocalTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v8, v6, :cond_c

    .line 1332
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v2, v6, :cond_d

    .line 1336
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v1, v6, :cond_e

    .line 1340
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addTargetUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v0, v6, :cond_f

    .line 1344
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addPullingUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v3, v6, :cond_10

    .line 1348
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addP2pList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1350
    :cond_10
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->getCallSlot()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCmcEdCallSlot(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v0, p0

    int-to-long v0, v0

    .line 1352
    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1353
    invoke-virtual/range {p4 .. p4}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addIsVideoPortZero(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1354
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->endRequestPullingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1357
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xe0

    .line 1358
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x1c

    .line 1359
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1360
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1361
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1363
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v4, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeRejectModifyCallType(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1559
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1561
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->startRequestRejectModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1562
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1563
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1564
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->endRequestRejectModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1566
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdd

    .line 1567
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x1b

    .line 1568
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1569
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1571
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1573
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeReplyModifyCallType(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1529
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p4, :cond_0

    .line 1533
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v1

    .line 1536
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->startRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p0

    .line 1537
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1538
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1539
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addCurType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1540
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addRepType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p4, v1, :cond_1

    .line 1543
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addCmcCallTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1545
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->endRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1547
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd9

    .line 1548
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x17

    .line 1549
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1550
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1552
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1554
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeReplyWithIdc(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 1933
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1936
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1937
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v2

    .line 1939
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->startRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p0

    .line 1940
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1941
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1942
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addCurType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1943
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addRepType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p4, v2, :cond_1

    .line 1946
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addIdcExtra(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1948
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->endRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1950
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd9

    .line 1951
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x17

    .line 1952
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1953
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1955
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1957
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeResumeCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 749
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 751
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeCall;->startRequestResumeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 752
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 753
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 754
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeCall;->endRequestResumeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 756
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xcc

    .line 757
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x12

    .line 758
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 759
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 761
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 763
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeResumeVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 786
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 790
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->startRequestResumeVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 791
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 792
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 793
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->endRequestResumeVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 795
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdc

    .line 796
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x1a

    .line 797
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 798
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 800
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 802
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1658
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSendCmcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_4

    .line 1667
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1668
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1672
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1673
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v1

    .line 1676
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v1, :cond_2

    .line 1678
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq p2, v1, :cond_3

    .line 1681
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1683
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    .line 1686
    :goto_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->startRequestSendCmcInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v1, :cond_5

    .line 1689
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    int-to-long p1, p1

    .line 1692
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1693
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1694
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->endRequestSendCmcInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1697
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf3

    .line 1698
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x48

    .line 1699
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1700
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1701
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1703
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendDtmfEvent(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 245
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 248
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 252
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDtmfEvent;->startRequestSendDtmfEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p0

    .line 253
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDtmfEvent;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 254
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDtmfEvent;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v2, :cond_1

    .line 257
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDtmfEvent;->addDtmfEvent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 260
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendDtmfEvent;->endRequestSendDtmfEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 262
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf6

    .line 263
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x79

    .line 264
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 265
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 267
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 269
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendEmergencyLocationPublish(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1915
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1917
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEmergencyLocationPublish;->startRequestEmergencyLocationPublish(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1918
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEmergencyLocationPublish;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1919
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEmergencyLocationPublish;->endRequestEmergencyLocationPublish(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1921
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xfc

    .line 1922
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x7b

    .line 1923
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1924
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1926
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1928
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeSendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1610
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p4, :cond_4

    .line 1616
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1617
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1621
    :goto_0
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1622
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_1

    :cond_1
    move p4, v1

    .line 1625
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v1, :cond_2

    .line 1627
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq p4, v1, :cond_3

    .line 1630
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1632
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p4

    goto :goto_2

    :cond_4
    move p4, v1

    .line 1635
    :goto_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->startRequestSendInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p4, v1, :cond_5

    .line 1638
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    int-to-long p3, p3

    .line 1641
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addUssdType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1642
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p1, p1

    .line 1643
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1644
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1645
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->endRequestSendInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1648
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe5

    .line 1649
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x47

    .line 1650
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1651
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1652
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1654
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendNegotiatedLocalSdp(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 1989
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1992
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1993
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 1996
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendNegotiatedLocalSdp;->startRequestSendNegotiatedLocalSdp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p0

    .line 1997
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendNegotiatedLocalSdp;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p1, v2, :cond_1

    .line 1999
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendNegotiatedLocalSdp;->addSdp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2001
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendNegotiatedLocalSdp;->endRequestSendNegotiatedLocalSdp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 2004
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0x57a

    .line 2005
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x7d

    .line 2006
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2007
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2008
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 2010
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendText(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1467
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1469
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1470
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->startRequestSendText(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1471
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1472
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1473
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p3

    .line 1474
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addLen(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1475
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->endRequestSendText(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1477
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xea

    .line 1478
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x63

    .line 1479
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1480
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1482
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1484
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSendVcsInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4

    .line 1707
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSendVcsInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_4

    .line 1714
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1715
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1719
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1720
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, v1

    .line 1723
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v1, :cond_2

    .line 1725
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq p2, v1, :cond_3

    .line 1728
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1730
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_2

    :cond_4
    move p2, v1

    .line 1733
    :goto_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendVcsInfo;->startRequestSendVcsInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v1, :cond_5

    .line 1736
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendVcsInfo;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    int-to-long p1, p1

    .line 1739
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendVcsInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1740
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendVcsInfo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1741
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendVcsInfo;->endRequestSendVcsInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1743
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xfa

    .line 1744
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x49

    .line 1745
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1746
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1747
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1749
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSetQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 1817
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1820
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1821
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, v2

    .line 1825
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1826
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_1

    :cond_1
    move p4, v2

    .line 1829
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetQuantumSecurityInfo;->startRequestSetQuantumSecurityInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p0

    .line 1831
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetQuantumSecurityInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1832
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetQuantumSecurityInfo;->addCallDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p2

    .line 1833
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetQuantumSecurityInfo;->addCryptoMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p3, v2, :cond_2

    .line 1835
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetQuantumSecurityInfo;->addQtSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_2
    if-eq p4, v2, :cond_3

    .line 1838
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetQuantumSecurityInfo;->addSessionKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1841
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetQuantumSecurityInfo;->endRequestSetQuantumSecurityInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1844
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf7

    .line 1845
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x4a

    .line 1846
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1847
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1848
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1850
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeSetVideoCrtAudio(IIZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 225
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 227
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->startRequestSetVideoCrtAudio(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 228
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 229
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 230
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->addOn(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 231
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetVideoCrtAudio;->endRequestSetVideoCrtAudio(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 233
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf5

    .line 234
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x78

    .line 235
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 236
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 238
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 240
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartCamera(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 806
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 811
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->startRequestStartCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 812
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 813
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p2

    .line 814
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addCamera(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 815
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->endRequestStartCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 817
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xdf

    .line 818
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x42

    .line 819
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 820
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 822
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 824
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5

    .line 336
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 339
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move-object v1, p7

    .line 340
    invoke-virtual {v0, p7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 344
    :goto_0
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v3, p15

    .line 345
    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 348
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->startRequestStartCmcRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    move v3, p0

    int-to-long v3, v3

    .line 349
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p1

    int-to-long v3, v3

    .line 350
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p2

    int-to-long v3, v3

    .line 351
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioSource(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p3

    int-to-long v3, v3

    .line 352
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addOutputFormat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move-wide v3, p4

    .line 353
    invoke-static {v0, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addMaxFileSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v3, p6

    int-to-long v3, v3

    .line 354
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addMaxDuration(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 355
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addOutputPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move v1, p8

    int-to-long v3, v1

    .line 356
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioEncodingBr(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v1, p9

    int-to-long v3, v1

    .line 357
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioChannels(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move v1, p10

    int-to-long v3, v1

    .line 358
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioSamplingRate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v1, p11

    int-to-long v3, v1

    .line 359
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioEncoder(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move/from16 v1, p12

    int-to-long v3, v1

    .line 360
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addDurationInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    move-wide/from16 v3, p13

    .line 361
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addFileSizeInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 362
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAuthor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 363
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->endRequestStartCmcRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 365
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0xf2

    .line 366
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v2, 0x76

    .line 367
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 368
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 370
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 372
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v2
.end method

.method static makeStartLocalRingBackTone(IIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 186
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 188
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->startRequestStartLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 189
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addStreamType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 190
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p2

    .line 191
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addVolume(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p3

    .line 192
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addToneType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 193
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->endRequestStartLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 195
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe7

    .line 196
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x6c

    .line 197
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 198
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 200
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 202
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartRecord(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 274
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 277
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 281
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->startRequestStartRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 282
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 283
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 284
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addFilepath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 285
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->endRequestStartRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 287
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xef

    .line 288
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x73

    .line 289
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 290
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 292
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 294
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStartVideoEarlyMedia(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1777
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1779
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->startRequestStartVideoEarlymedia(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1780
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p0

    .line 1781
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1782
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->endRequestStartVideoEarlymedia(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1784
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xeb

    .line 1785
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x5d

    .line 1786
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1787
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1789
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1791
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeStopCamera(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 828
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCamera: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 833
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->startRequestStopCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 834
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 835
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->endRequestStopCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 837
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xe2

    .line 838
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x43

    .line 839
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 840
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 842
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 844
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeStopLocalRingBackTone(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 207
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 209
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->startRequestStopLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 210
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 211
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->endRequestStopLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 213
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0xe8

    .line 214
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x6d

    .line 215
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 216
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 218
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 220
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeStopRecord(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 299
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 301
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->startRequestStopRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 302
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 303
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 304
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->endRequestStopRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 306
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf0

    .line 307
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x74

    .line 308
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 309
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 311
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 313
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeTransferCall(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1220
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1222
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1223
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->startRequestTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1224
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1225
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1226
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addTargetUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-lez p3, :cond_0

    int-to-long p0, p3

    .line 1229
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addReplacingSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1231
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->endRequestTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1233
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xd4

    .line 1234
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x13

    .line 1235
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1236
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1238
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1240
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateAudioInterface(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 2

    .line 166
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 168
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 169
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->startRequestUpdateAudioInterface(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 170
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 171
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 172
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->endRequestUpdateAudioInterface(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 174
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xe1

    .line 175
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x46

    .line 176
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 177
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 179
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 181
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1578
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1581
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1582
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v2

    .line 1585
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->startRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p4, v2, :cond_1

    .line 1588
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addReasonText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p3, p3

    .line 1591
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addCause(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1592
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addCodecType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1593
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addAction(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 1594
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1595
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->endRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1598
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xce

    .line 1599
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0xf

    .line 1600
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1601
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1602
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1604
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateCmcExtCallCount(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1753
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeUpdateCmcExtCallCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1758
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->startRequestUpdateCmcExtCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p0

    .line 1760
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p0, p1

    .line 1761
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->addCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1763
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->endRequestUpdateCmcExtCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1766
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xf4

    .line 1767
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x4c

    .line 1768
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1769
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1770
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1772
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method static makeUpdateConfCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 2

    .line 1198
    new-instance p0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1200
    invoke-virtual {p0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    .line 1201
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->startRequestUpdateConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, p1

    .line 1202
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p1, p2

    .line 1203
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addCmd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p1, p3

    .line 1204
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addParticipantId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1205
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1206
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->endRequestUpdateConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1208
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xd7

    .line 1209
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x1f

    .line 1210
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1211
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1213
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1215
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p2
.end method

.method static makeUpdateWithIdc(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 3

    .line 1961
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1964
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1965
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 1968
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->startRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v2, :cond_1

    .line 1971
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addIdcExtra(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1974
    :cond_1
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addAction(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long p0, p0

    .line 1975
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1976
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->endRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1979
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p1, 0xce

    .line 1980
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0xf

    .line 1981
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1982
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1983
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    .line 1985
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object p1
.end method

.method private static prepareComposerData(Landroid/os/Bundle;Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 10

    const/4 v0, -0x1

    if-eqz p0, :cond_d

    .line 383
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 386
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "importance"

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 387
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 388
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 390
    invoke-virtual {p1, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 391
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_1
    move v7, v0

    goto :goto_2

    :sswitch_0
    const-string v9, "longitude"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_1
    const-string v9, "image"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_2
    const-string/jumbo v9, "radius"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    goto :goto_2

    :sswitch_3
    const-string v9, "latitude"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_2

    :sswitch_4
    const-string/jumbo v9, "subject"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v5, v8

    goto :goto_0

    :pswitch_1
    move v2, v8

    goto :goto_0

    :pswitch_2
    move v6, v8

    goto :goto_0

    :pswitch_3
    move v4, v8

    goto :goto_0

    :pswitch_4
    move v3, v8

    goto :goto_0

    .line 411
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->startComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v2, v0, :cond_7

    .line 413
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addImage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    if-eq v3, v0, :cond_8

    .line 417
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_8
    if-eq v4, v0, :cond_9

    .line 421
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addLatitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v5, v0, :cond_a

    .line 425
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addLongitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v6, v0, :cond_b

    .line 429
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addRadius(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 432
    :cond_b
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 434
    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 433
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addImportance(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 437
    :cond_c
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->endComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    :cond_d
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_4
        -0x55d45394 -> :sswitch_3
        -0x37f1936e -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x83009af -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;
.super Lcom/google/flatbuffers/Table;
.source "RequestXdmUpdateAkaResp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRecvMng(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 1

    long-to-int p1, p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 39
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addSid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 1

    const/4 v0, 0x0

    long-to-int p1, p1

    .line 35
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static createAkaRespVector(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I
    .locals 2

    .line 37
    array-length v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createRequestXdmUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;JIJ)I
    .locals 1

    const/4 v0, 0x3

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 28
    invoke-static {p0, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;->addRecvMng(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 29
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;->addAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 30
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;->addSid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 31
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;->endRequestXdmUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endRequestXdmUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsRequestXdmUpdateAkaResp(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;
    .locals 1

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;->getRootAsRequestXdmUpdateAkaResp(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsRequestXdmUpdateAkaResp(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;
    .locals 2

    .line 13
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;

    move-result-object p0

    return-object p0
.end method

.method public static startAkaRespVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startRequestXdmUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmUpdateAkaResp;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public akaResp(I)I
    .locals 2

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector(I)I

    move-result p0

    mul-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public akaRespAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public akaRespLength()I
    .locals 1

    const/4 v0, 0x6

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__vector_len(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recvMng()J
    .locals 4

    const/16 v0, 0x8

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public sid()J
    .locals 4

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, p0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

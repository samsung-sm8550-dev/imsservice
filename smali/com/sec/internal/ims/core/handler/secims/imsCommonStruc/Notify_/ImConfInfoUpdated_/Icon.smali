.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
.super Lcom/google/flatbuffers/Table;
.source "Icon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addIconLocation(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addIcontype(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createIcon(Lcom/google/flatbuffers/FlatBufferBuilder;IIII)I
    .locals 1

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 31
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->addIconLocation(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 32
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 33
    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 34
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->addIcontype(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 35
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->endIcon(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endIcon(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result p0

    return p0
.end method

.method public static getRootAsIcon(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .locals 1

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->getRootAsIcon(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsIcon(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static startIcon(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x4

    .line 38
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/Icon;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public iconLocation()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public iconLocationAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public icontype()I
    .locals 2

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

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public participant()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public participantAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public timestamp()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__string(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public timestampAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

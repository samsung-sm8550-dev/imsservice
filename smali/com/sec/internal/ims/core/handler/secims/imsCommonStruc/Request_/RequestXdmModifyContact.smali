.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;
.super Lcom/google/flatbuffers/Table;
.source "RequestXdmModifyContact.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addContact(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addContactId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addEtag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addImpu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 1

    const/4 v0, 0x0

    long-to-int p1, p1

    .line 47
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addUuid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createRequestXdmModifyContact(Lcom/google/flatbuffers/FlatBufferBuilder;JIIIII)I
    .locals 1

    const/4 v0, 0x6

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 37
    invoke-static {p0, p7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->addContact(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 38
    invoke-static {p0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->addEtag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 39
    invoke-static {p0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->addUuid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 40
    invoke-static {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->addContactId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 41
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->addImpu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 42
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->addRid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 43
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->endRequestXdmModifyContact(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endRequestXdmModifyContact(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    const/4 v1, 0x6

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/16 v1, 0x8

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/16 v1, 0xa

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    const/16 v1, 0xc

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->required(II)V

    return v0
.end method

.method public static getRootAsRequestXdmModifyContact(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;
    .locals 1

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;-><init>()V

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->getRootAsRequestXdmModifyContact(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsRequestXdmModifyContact(Ljava/nio/ByteBuffer;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;
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

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;

    move-result-object p0

    return-object p0
.end method

.method public static startRequestXdmModifyContact(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x6

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    iput-object p2, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public contact()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;
    .locals 1

    .line 26
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestXdmModifyContact;->contact(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;

    move-result-object p0

    return-object p0
.end method

.method public contact(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;
    .locals 2

    const/16 v0, 0xe

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/Table;->__indirect(I)I

    move-result v0

    iget-object p0, p0, Lcom/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;->__assign(ILjava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Contact;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public contactId()Ljava/lang/String;
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

.method public contactIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public etag()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    .line 24
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

.method public etagAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public impu()Ljava/lang/String;
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

.method public impuAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public rid()J
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

.method public uuid()Ljava/lang/String;
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

.method public uuidAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/google/flatbuffers/Table;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

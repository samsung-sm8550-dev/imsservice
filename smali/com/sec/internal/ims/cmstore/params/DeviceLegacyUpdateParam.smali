.class public Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;
.super Ljava/lang/Object;
.source "DeviceLegacyUpdateParam.java"


# instance fields
.field public mCorrelationTag:Ljava/lang/String;

.field public mLine:Ljava/lang/String;

.field public mMId:Ljava/lang/String;

.field public mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

.field public mRowId:J

.field public mTRId:Ljava/lang/String;

.field public mTableindex:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    .line 19
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    int-to-long p1, p3

    .line 20
    iput-wide p1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    .line 21
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTRId:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceLegacyUpdateParam [mTableindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTableindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mOperation:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCorrelationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mCorrelationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mMId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTRId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mTRId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/DeviceLegacyUpdateParam;->mLine:Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

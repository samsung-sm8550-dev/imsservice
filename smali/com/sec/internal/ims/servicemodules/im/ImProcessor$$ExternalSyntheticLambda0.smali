.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$12:I

.field public final synthetic f$13:Z

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$15:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/Set;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 0
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/util/Set;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    move v1, p7

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$6:Z

    move v1, p8

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$7:Z

    move v1, p9

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$8:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$9:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$10:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$11:Ljava/lang/String;

    move v1, p13

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$12:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$13:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$14:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$15:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$3:Ljava/util/Set;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$6:Z

    iget-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$7:Z

    iget-boolean v9, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$8:Z

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$9:Ljava/lang/String;

    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$10:Ljava/lang/String;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$11:Ljava/lang/String;

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$12:I

    iget-boolean v14, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$13:Z

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$14:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda0;->f$15:Ljava/util/List;

    move-object/from16 v16, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    invoke-static/range {v0 .. v15}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->$r8$lambda$yDuDpwhbXGR8XOG4uqjdisbieoA(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    return-object v0
.end method

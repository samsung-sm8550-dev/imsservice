.class final synthetic Lcom/google/firebase/iid/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzola:Lcom/google/firebase/iid/zzm;

.field private final zzolb:Lcom/google/firebase/iid/zzt;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzm;Lcom/google/firebase/iid/zzt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzq;->zzola:Lcom/google/firebase/iid/zzm;

    iput-object p2, p0, Lcom/google/firebase/iid/zzq;->zzolb:Lcom/google/firebase/iid/zzt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/firebase/iid/zzq;->zzola:Lcom/google/firebase/iid/zzm;

    iget-object p0, p0, Lcom/google/firebase/iid/zzq;->zzolb:Lcom/google/firebase/iid/zzt;

    iget p0, p0, Lcom/google/firebase/iid/zzt;->zzino:I

    invoke-virtual {v0, p0}, Lcom/google/firebase/iid/zzm;->zzec(I)V

    return-void
.end method

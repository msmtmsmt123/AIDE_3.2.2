.class public Lcom/google/android/gms/common/internal/k$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/k$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "i"
.end annotation


# instance fields
.field final synthetic j6:Lcom/google/android/gms/common/internal/k;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/k$i;->j6:Lcom/google/android/gms/common/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->DW()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k$i;->j6:Lcom/google/android/gms/common/internal/k;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/k$i;->j6:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/k;->U2()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/k;->j6(Lcom/google/android/gms/common/internal/v;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/k$i;->j6:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->v5(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/k$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k$i;->j6:Lcom/google/android/gms/common/internal/k;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->v5(Lcom/google/android/gms/common/internal/k;)Lcom/google/android/gms/common/internal/k$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/k$c;->j6(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

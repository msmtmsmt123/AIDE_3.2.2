.class Lcom/google/android/gms/analytics/av$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/av;->Zo()V
.end annotation


# instance fields
.field final synthetic j6:Lcom/google/android/gms/analytics/av;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/av;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/av$1;->j6:Lcom/google/android/gms/analytics/av;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/av$1;->j6:Lcom/google/android/gms/analytics/av;

    invoke-static {v0}, Lcom/google/android/gms/analytics/av;->j6(Lcom/google/android/gms/analytics/av;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/av$1;->j6:Lcom/google/android/gms/analytics/av;

    iget-object v2, p0, Lcom/google/android/gms/analytics/av$1;->j6:Lcom/google/android/gms/analytics/av;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/av;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/av;->j6(Lcom/google/android/gms/analytics/av;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/av$1;->j6:Lcom/google/android/gms/analytics/av;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/av;->j6(Lcom/google/android/gms/analytics/av;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/av$1;->j6:Lcom/google/android/gms/analytics/av;

    invoke-static {v0}, Lcom/google/android/gms/analytics/av;->j6(Lcom/google/android/gms/analytics/av;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class abstract Lcom/google/android/gms/tagmanager/bs;
.super Lcom/google/android/gms/tagmanager/w;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/w;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract DW(Ljava/util/Map;)V
.end method

.method public j6(Ljava/util/Map;)Lcom/google/android/gms/internal/d;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/bs;->DW(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/bu;->j6()Lcom/google/android/gms/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public j6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

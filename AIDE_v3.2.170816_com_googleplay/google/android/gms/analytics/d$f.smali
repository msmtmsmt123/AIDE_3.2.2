.class public Lcom/google/android/gms/analytics/d$f;
.super Lcom/google/android/gms/analytics/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/d$d",
        "<",
        "Lcom/google/android/gms/analytics/d$f;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/d$d;-><init>()V

    const-string/jumbo v0, "&t"

    const-string/jumbo v1, "transaction"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$f;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$d;

    return-void
.end method


# virtual methods
.method public DW(D)Lcom/google/android/gms/analytics/d$f;
    .locals 3

    const-string/jumbo v0, "&tt"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$f;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$d;

    return-object p0
.end method

.method public DW(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$f;
    .locals 1

    const-string/jumbo v0, "&ta"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/d$f;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$d;

    return-object p0
.end method

.method public FH(D)Lcom/google/android/gms/analytics/d$f;
    .locals 3

    const-string/jumbo v0, "&ts"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$f;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$d;

    return-object p0
.end method

.method public FH(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$f;
    .locals 1

    const-string/jumbo v0, "&cu"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/d$f;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$d;

    return-object p0
.end method

.method public j6(D)Lcom/google/android/gms/analytics/d$f;
    .locals 3

    const-string/jumbo v0, "&tr"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/d$f;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$d;

    return-object p0
.end method

.method public j6(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$f;
    .locals 1

    const-string/jumbo v0, "&ti"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/d$f;->j6(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/d$d;

    return-object p0
.end method

.method public bridge synthetic j6()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/analytics/d$d;->j6()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

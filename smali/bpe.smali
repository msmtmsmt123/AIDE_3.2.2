.class public Lbpe;
.super Lbnn;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbnn;-><init>([B)V

    .line 15
    return-void
.end method


# virtual methods
.method gn()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method j6(Lbnp;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x4

    iget-object v1, p0, Lbpe;->j6:[B

    invoke-virtual {p1, v0, v1}, Lbnp;->j6(I[B)V

    .line 39
    return-void
.end method

.method u7()I
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lbpe;->j6:[B

    array-length v0, v0

    invoke-static {v0}, Lbqd;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lbpe;->j6:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

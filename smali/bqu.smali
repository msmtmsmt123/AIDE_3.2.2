.class public Lbqu;
.super Lbor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbor;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p1}, Lbor;->FH()[B

    move-result-object v0

    invoke-virtual {p1}, Lbor;->Hw()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lbor;-><init>([BI)V

    .line 48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetscapeCertType: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbqu;->j6:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

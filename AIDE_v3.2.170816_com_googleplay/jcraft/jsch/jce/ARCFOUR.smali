.class public Lcom/jcraft/jsch/jce/ARCFOUR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# instance fields
.field private j6:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x10

    return v0
.end method

.method public FH()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public j6()I
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x8

    return v0
.end method

.method public j6(I[B[B)V
    .locals 4

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 43
    const-string/jumbo v0, "NoPadding"

    .line 45
    array-length v0, p2

    if-le v0, v1, :cond_0

    .line 46
    new-array v0, v1, [B

    .line 47
    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    .line 52
    :cond_0
    :try_start_0
    const-string/jumbo v0, "RC4"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    .line 53
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v0, "RC4"

    invoke-direct {v1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 54
    const-class v2, Ljavax/crypto/Cipher;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    if-nez p1, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 55
    :goto_0
    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 54
    monitor-exit v2

    .line 65
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    .line 63
    throw v0
.end method

.method public j6([BII[BI)V
    .locals 6

    .prologue
    .line 67
    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR;->j6:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    .line 68
    return-void
.end method

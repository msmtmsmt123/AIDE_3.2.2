.class public Lcom/jcraft/jsch/jce/PBKDF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/PBKDF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6([B[BII)[B
    .locals 3

    .prologue
    .line 41
    array-length v0, p1

    new-array v1, v0, [C

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 47
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    mul-int/lit8 v2, p4, 0x8

    invoke-direct {v0, v1, p2, p3, v2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 49
    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_1
    return-object v0

    .line 43
    :cond_0
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    goto :goto_2
.end method

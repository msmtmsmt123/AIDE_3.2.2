.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
.end annotation


# instance fields
.field final synthetic DW:Lcom/jcraft/jsch/ChannelSftp;

.field private final synthetic EQ:[B

.field private FH:Z

.field private Hw:Z

.field private final synthetic J0:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private VH:I

.field private Zo:I

.field private gn:I

.field j6:[B

.field private tp:Lcom/jcraft/jsch/ChannelSftp$Header;

.field private u7:I

.field private v5:[I

.field private final synthetic we:[J


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    .line 763
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 764
    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:Z

    .line 765
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:Z

    .line 766
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:[I

    .line 767
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    .line 768
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    .line 769
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:I

    .line 770
    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:I

    .line 771
    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 821
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:Z

    if-eqz v0, :cond_0

    .line 860
    :goto_0
    return-void

    .line 852
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    .line 853
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6()V

    .line 854
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:Z

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    throw v0

    .line 856
    :catch_1
    move-exception v0

    .line 857
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:Z

    if-eqz v0, :cond_0

    .line 830
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:Z

    if-nez v0, :cond_1

    .line 835
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:I

    if-gt v0, v1, :cond_2

    .line 846
    :cond_1
    return-void

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:I
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 824
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    .line 825
    return-void
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 774
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    .line 775
    return-void
.end method

.method public write([BII)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 778
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:Z

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    .line 780
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    .line 781
    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:Z

    .line 784
    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:Z

    if-eqz v0, :cond_1

    .line 785
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v6, p3

    move v5, p2

    .line 790
    :cond_2
    if-gtz v6, :cond_3

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6(J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 813
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    .line 814
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 817
    :catch_0
    move-exception v0

    throw v0

    .line 791
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v0

    .line 792
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:I

    .line 793
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    int-to-long v10, v0

    add-long/2addr v8, v10

    aput-wide v8, v1, v2

    .line 794
    add-int/2addr v5, v0

    .line 795
    sub-int/2addr v6, v0

    .line 796
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    if-eq v0, v1, :cond_4

    .line 797
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_2

    .line 798
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:[I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    .line 801
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_6

    .line 802
    :cond_5
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 818
    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    :cond_6
    :try_start_2
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 819
    :cond_7
    return-void
.end method

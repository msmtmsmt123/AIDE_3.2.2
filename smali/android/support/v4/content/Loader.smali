.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field J0:I

.field J8:Landroid/support/v4/content/g;

.field Mr:Z

.field QX:Z

.field Ws:Landroid/content/Context;

.field XL:Z

.field aM:Z

.field j3:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->QX:Z

    .line 39
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->XL:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->aM:Z

    .line 41
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->j3:Z

    .line 42
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->Mr:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->Ws:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/g;->j6(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public EQ()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->QX:Z

    return v0
.end method

.method public FH(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    invoke-static {p1, v0}, Lh;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 370
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J0()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->aM:Z

    return v0
.end method

.method public final J8()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->QX:Z

    .line 196
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->aM:Z

    .line 197
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->XL:Z

    .line 198
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->VH()V

    .line 199
    return-void
.end method

.method public Mr()V
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->Mr:Z

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->j3:Z

    .line 342
    :cond_0
    return-void
.end method

.method public QX()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->QX:Z

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->gn()V

    .line 245
    return-void
.end method

.method public U2()V
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->QX:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->Ws()V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->j3:Z

    goto :goto_0
.end method

.method protected VH()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public Ws()V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->j6()V

    .line 219
    return-void
.end method

.method public XL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->u7()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->aM:Z

    .line 293
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->QX:Z

    .line 294
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->XL:Z

    .line 295
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->j3:Z

    .line 296
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->Mr:Z

    .line 297
    return-void
.end method

.method public aM()Z
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->j3:Z

    .line 315
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->j3:Z

    .line 316
    iget-boolean v1, p0, Landroid/support/v4/content/Loader;->Mr:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->Mr:Z

    .line 317
    return v0
.end method

.method protected gn()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public j3()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->Mr:Z

    .line 329
    return-void
.end method

.method protected j6()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public j6(ILandroid/support/v4/content/g;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    .line 134
    iput p1, p0, Landroid/support/v4/content/Loader;->J0:I

    .line 135
    return-void
.end method

.method public j6(Landroid/support/v4/content/g;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    if-eq v0, p1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    .line 150
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->J0:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 394
    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->J8:Landroid/support/v4/content/g;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->QX:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->j3:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->Mr:Z

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->QX:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->j3:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 398
    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->Mr:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 400
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->XL:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->aM:Z

    if-eqz v0, :cond_3

    .line 401
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->XL:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 402
    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->aM:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 404
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    invoke-static {p0, v0}, Lh;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 378
    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget v1, p0, Landroid/support/v4/content/Loader;->J0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tp()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v4/content/Loader;->Ws:Landroid/content/Context;

    return-object v0
.end method

.method protected u7()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public we()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->XL:Z

    return v0
.end method
.class public Lcom/aide/appwizard/runtime/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private DW:Lorg/w3c/dom/Element;

.field private FH:I

.field final synthetic j6:Lcom/aide/appwizard/runtime/b;


# direct methods
.method public constructor <init>(Lcom/aide/appwizard/runtime/b;Lorg/w3c/dom/Element;I)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/aide/appwizard/runtime/e;->j6:Lcom/aide/appwizard/runtime/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p2, p0, Lcom/aide/appwizard/runtime/e;->DW:Lorg/w3c/dom/Element;

    .line 398
    iput p3, p0, Lcom/aide/appwizard/runtime/e;->FH:I

    .line 399
    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->j6:Lcom/aide/appwizard/runtime/b;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/e;->DW:Lorg/w3c/dom/Element;

    const-string/jumbo v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/runtime/b;->j6(Lcom/aide/appwizard/runtime/b;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DW(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->DW:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->j6:Lcom/aide/appwizard/runtime/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/b;->j6(Lcom/aide/appwizard/runtime/b;I)V

    .line 426
    return-void
.end method

.method public FH()Lcom/aide/appwizard/runtime/d;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->j6:Lcom/aide/appwizard/runtime/b;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/b;->DW()Lcom/aide/appwizard/runtime/d;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->j6:Lcom/aide/appwizard/runtime/b;

    iget-object v1, p0, Lcom/aide/appwizard/runtime/e;->DW:Lorg/w3c/dom/Element;

    const-string/jumbo v2, "title"

    invoke-static {v0, v1, v2}, Lcom/aide/appwizard/runtime/b;->j6(Lcom/aide/appwizard/runtime/b;Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/aide/appwizard/runtime/e;->FH:I

    return v0
.end method

.method public j6(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->DW:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "layout"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->j6:Lcom/aide/appwizard/runtime/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/b;->j6(Lcom/aide/appwizard/runtime/b;I)V

    .line 415
    return-void
.end method

.method public v5()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->DW:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/appwizard/runtime/e;->DW:Lorg/w3c/dom/Element;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 436
    iget-object v0, p0, Lcom/aide/appwizard/runtime/e;->j6:Lcom/aide/appwizard/runtime/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/aide/appwizard/runtime/b;->j6(Lcom/aide/appwizard/runtime/b;I)V

    .line 437
    return-void
.end method

.class public Lom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Z
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/aide/ui/j;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Z

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public g_()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/aide/ui/j;->rN()Ltq;

    move-result-object v0

    invoke-virtual {v0}, Ltq;->FH()Z

    move-result v0

    return v0
.end method

.method public j6()Lcom/aide/common/m;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/aide/common/m;

    const/16 v1, 0x15

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/aide/common/m;-><init>(IZZZ)V

    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "Go Back"

    return-object v0
.end method

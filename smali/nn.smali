.class public Lnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lur;
.implements Lvd;
.implements Lvh;


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
    invoke-static {}, Lcom/aide/ui/j;->a8()Luf;

    move-result-object v0

    invoke-virtual {v0}, Luf;->er()Z

    move-result v0

    return v0
.end method

.method public VH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string/jumbo v0, "Design"

    return-object v0
.end method

.method public Zo()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0d0145

    return v0
.end method

.method public f_()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0d011e

    return v0
.end method

.method public g_()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/aide/ui/j;->a8()Luf;

    move-result-object v0

    invoke-virtual {v0}, Luf;->rN()Z

    move-result v0

    return v0
.end method

.method public h_()Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lnn;->g_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aide/ui/j;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->vy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aide/ui/j;->ef()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->we()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()Lcom/aide/common/m;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/aide/common/m;

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/aide/common/m;-><init>(IZZZ)V

    return-object v0
.end method

.method public j6(Z)Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lnn;->h_()Z

    move-result v0

    return v0
.end method

.method public v5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "Design"

    return-object v0
.end method

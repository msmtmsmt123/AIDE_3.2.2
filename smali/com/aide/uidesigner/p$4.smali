.class final Lcom/aide/uidesigner/p$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/uidesigner/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/p;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 163
    const-string/jumbo v1, "Small Text"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v1, 0x1010042

    invoke-static {v0, v1}, Lcom/aide/uidesigner/o;->j6(Landroid/widget/TextView;I)V

    .line 165
    return-object v0
.end method
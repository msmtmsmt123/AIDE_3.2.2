.class Lcom/aide/common/m$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/m$2;->j6(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DW:Landroid/widget/EditText;

.field final synthetic FH:Lcom/aide/common/m$2;

.field final synthetic j6:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/aide/common/m$2;Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/aide/common/m$2$2;->FH:Lcom/aide/common/m$2;

    iput-object p2, p0, Lcom/aide/common/m$2$2;->j6:Landroid/app/Activity;

    iput-object p3, p0, Lcom/aide/common/m$2$2;->DW:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/aide/common/m$2$2;->j6:Landroid/app/Activity;

    const-string/jumbo v1, "input_method"

    .line 677
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 678
    iget-object v1, p0, Lcom/aide/common/m$2$2;->DW:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 679
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 680
    return-void
.end method
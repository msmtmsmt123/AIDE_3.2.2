.class Lcom/aide/ui/scm/b$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/scm/b$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j6:Lcom/aide/ui/scm/b$16;


# direct methods
.method constructor <init>(Lcom/aide/ui/scm/b$16;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/aide/ui/scm/b$16$1;->j6:Lcom/aide/ui/scm/b$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/aide/ui/scm/b$16$1;->j6:Lcom/aide/ui/scm/b$16;

    iget-object v0, v0, Lcom/aide/ui/scm/b$16;->FH:Lcom/aide/ui/scm/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/scm/b$a;->j6(Lcom/aide/ui/scm/b$a;Lcom/aide/ui/scm/b$c;)Z

    .line 361
    return-void
.end method

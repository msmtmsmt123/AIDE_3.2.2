.class Lcom/aide/ui/build/java/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aide/common/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/java/a;->tp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/y",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic j6:Lcom/aide/ui/build/java/a;


# direct methods
.method constructor <init>(Lcom/aide/ui/build/java/a;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/aide/ui/build/java/a$3;->j6:Lcom/aide/ui/build/java/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/build/java/a$3;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aide/ui/build/java/a$3;->j6:Lcom/aide/ui/build/java/a;

    invoke-static {v0, p1}, Lcom/aide/ui/build/java/a;->DW(Lcom/aide/ui/build/java/a;Ljava/lang/String;)V

    .line 218
    return-void
.end method
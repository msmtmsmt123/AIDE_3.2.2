.class public abstract Lcom/google/android/gms/common/images/e;
.super Ljava/lang/Object;


# instance fields
.field protected DW:I

.field protected FH:Lcom/google/android/gms/common/images/a;

.field protected Hw:I

.field final j6:Lcom/google/android/gms/common/images/f;


# direct methods
.method private j6(Landroid/content/Context;Lcom/google/android/gms/internal/j;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/e;->Hw:I

    if-lez v0, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/k;

    iget v0, p0, Lcom/google/android/gms/common/images/e;->Hw:I

    invoke-direct {v2, p3, v0}, Lcom/google/android/gms/internal/k;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/j;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/common/images/e;->Hw:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/e;->j6(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/j;->DW(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected j6(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/i;->j6(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method j6(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/google/android/gms/internal/l;->j6(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/e;->Hw:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/i;->j6(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/e;->FH:Lcom/google/android/gms/common/images/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/images/e;->FH:Lcom/google/android/gms/common/images/a;

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->j6:Lcom/google/android/gms/common/images/f;

    iget-object v2, v2, Lcom/google/android/gms/common/images/f;->j6:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/a;->j6(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, v3}, Lcom/google/android/gms/common/images/e;->j6(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method j6(Landroid/content/Context;Lcom/google/android/gms/internal/j;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/e;->DW:I

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/images/e;->DW:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/e;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/j;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/images/e;->FH:Lcom/google/android/gms/common/images/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/images/e;->FH:Lcom/google/android/gms/common/images/a;

    iget-object v2, p0, Lcom/google/android/gms/common/images/e;->j6:Lcom/google/android/gms/common/images/f;

    iget-object v2, v2, Lcom/google/android/gms/common/images/f;->j6:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/a;->j6(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    invoke-virtual {p0, v0, p3, v3, v3}, Lcom/google/android/gms/common/images/e;->j6(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract j6(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.class Landroid/support/v4/view/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static DW(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public static FH(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static Hw(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public static j6(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 38
    return-void
.end method

.method public static j6(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 59
    return-void
.end method

.method public static j6(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 43
    return-void
.end method

.method public static j6(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.class final Lcom/aide/ui/scm/GitConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/GitConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/aide/ui/scm/GitConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/GitConfiguration$1;->j6(Landroid/os/Parcel;)Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public j6(Landroid/os/Parcel;)Lcom/aide/ui/scm/GitConfiguration;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/aide/ui/scm/GitConfiguration;

    invoke-direct {v0, p1}, Lcom/aide/ui/scm/GitConfiguration;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public j6(I)[Lcom/aide/ui/scm/GitConfiguration;
    .locals 1

    .prologue
    .line 16
    new-array v0, p1, [Lcom/aide/ui/scm/GitConfiguration;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/aide/ui/scm/GitConfiguration$1;->j6(I)[Lcom/aide/ui/scm/GitConfiguration;

    move-result-object v0

    return-object v0
.end method

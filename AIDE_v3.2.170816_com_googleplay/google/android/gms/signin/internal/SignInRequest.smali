.class public Lcom/google/android/gms/signin/internal/SignInRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/signin/internal/SignInRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DW:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

.field final j6:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/SignInRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/internal/ResolveAccountRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->DW:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    return-void
.end method


# virtual methods
.method public j6()Lcom/google/android/gms/common/internal/ResolveAccountRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/SignInRequest;->DW:Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/g;->j6(Lcom/google/android/gms/signin/internal/SignInRequest;Landroid/os/Parcel;I)V

    return-void
.end method

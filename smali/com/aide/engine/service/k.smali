.class public abstract Lcom/aide/engine/service/k;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/aide/engine/service/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {p0, p0, v0}, Lcom/aide/engine/service/k;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/aide/engine/service/j;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/aide/engine/service/j;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/aide/engine/service/j;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/aide/engine/service/l;

    invoke-direct {v0, p0}, Lcom/aide/engine/service/l;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/aide/engine/service/k;->j6()V

    goto :goto_0

    .line 53
    :sswitch_2
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/aide/engine/service/k;->j6(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/aide/engine/service/k;->DW()V

    goto :goto_0

    .line 67
    :sswitch_4
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 71
    sget-object v0, Lcom/aide/engine/SyntaxError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/engine/SyntaxError;

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 74
    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/aide/engine/service/k;->j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V

    goto :goto_0

    .line 73
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 79
    :sswitch_5
    const-string/jumbo v0, "com.aide.engine.service.IEngineErrorListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/aide/engine/service/k;->DW(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

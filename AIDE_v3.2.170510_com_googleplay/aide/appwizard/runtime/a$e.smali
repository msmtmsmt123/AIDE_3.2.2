.class public final enum Lcom/aide/appwizard/runtime/a$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aide/appwizard/runtime/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/appwizard/runtime/a$e;

.field public static final enum FH:Lcom/aide/appwizard/runtime/a$e;

.field public static final enum Hw:Lcom/aide/appwizard/runtime/a$e;

.field public static final enum VH:Lcom/aide/appwizard/runtime/a$e;

.field public static final enum Zo:Lcom/aide/appwizard/runtime/a$e;

.field public static final enum j6:Lcom/aide/appwizard/runtime/a$e;

.field private static final synthetic u7:[Lcom/aide/appwizard/runtime/a$e;

.field public static final enum v5:Lcom/aide/appwizard/runtime/a$e;


# instance fields
.field public gn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    new-instance v0, Lcom/aide/appwizard/runtime/a$e;

    const-string/jumbo v1, "HoloDark"

    const-string/jumbo v2, "Holo Dark"

    invoke-direct {v0, v1, v4, v2}, Lcom/aide/appwizard/runtime/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->j6:Lcom/aide/appwizard/runtime/a$e;

    .line 350
    new-instance v0, Lcom/aide/appwizard/runtime/a$e;

    const-string/jumbo v1, "HoloLight"

    const-string/jumbo v2, "Holo Light"

    invoke-direct {v0, v1, v5, v2}, Lcom/aide/appwizard/runtime/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->DW:Lcom/aide/appwizard/runtime/a$e;

    .line 351
    new-instance v0, Lcom/aide/appwizard/runtime/a$e;

    const-string/jumbo v1, "HoloLightHoloActionBar"

    const-string/jumbo v2, "Holo Light Holo ActionBar"

    invoke-direct {v0, v1, v6, v2}, Lcom/aide/appwizard/runtime/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->FH:Lcom/aide/appwizard/runtime/a$e;

    .line 352
    new-instance v0, Lcom/aide/appwizard/runtime/a$e;

    const-string/jumbo v1, "HoloLightDarkActionBar"

    const-string/jumbo v2, "Holo Light Dark ActionBar"

    invoke-direct {v0, v1, v7, v2}, Lcom/aide/appwizard/runtime/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->Hw:Lcom/aide/appwizard/runtime/a$e;

    .line 353
    new-instance v0, Lcom/aide/appwizard/runtime/a$e;

    const-string/jumbo v1, "DeviceDefault"

    const-string/jumbo v2, "Device Default Dark"

    invoke-direct {v0, v1, v8, v2}, Lcom/aide/appwizard/runtime/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->v5:Lcom/aide/appwizard/runtime/a$e;

    .line 354
    new-instance v0, Lcom/aide/appwizard/runtime/a$e;

    const-string/jumbo v1, "DeviceDefaultLight"

    const/4 v2, 0x5

    const-string/jumbo v3, "Device Default Light"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->Zo:Lcom/aide/appwizard/runtime/a$e;

    .line 355
    new-instance v0, Lcom/aide/appwizard/runtime/a$e;

    const-string/jumbo v1, "DeviceDefaultLightDarkActionBar"

    const/4 v2, 0x6

    const-string/jumbo v3, "Device Default Light Dark ActionBar"

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/appwizard/runtime/a$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->VH:Lcom/aide/appwizard/runtime/a$e;

    .line 347
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/aide/appwizard/runtime/a$e;

    sget-object v1, Lcom/aide/appwizard/runtime/a$e;->j6:Lcom/aide/appwizard/runtime/a$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aide/appwizard/runtime/a$e;->DW:Lcom/aide/appwizard/runtime/a$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aide/appwizard/runtime/a$e;->FH:Lcom/aide/appwizard/runtime/a$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aide/appwizard/runtime/a$e;->Hw:Lcom/aide/appwizard/runtime/a$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aide/appwizard/runtime/a$e;->v5:Lcom/aide/appwizard/runtime/a$e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/aide/appwizard/runtime/a$e;->Zo:Lcom/aide/appwizard/runtime/a$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aide/appwizard/runtime/a$e;->VH:Lcom/aide/appwizard/runtime/a$e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/appwizard/runtime/a$e;->u7:[Lcom/aide/appwizard/runtime/a$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 363
    iput-object p3, p0, Lcom/aide/appwizard/runtime/a$e;->gn:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public static j6(Ljava/lang/String;)Lcom/aide/appwizard/runtime/a$e;
    .locals 5

    .prologue
    .line 368
    invoke-static {}, Lcom/aide/appwizard/runtime/a$e;->values()[Lcom/aide/appwizard/runtime/a$e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 370
    iget-object v4, v0, Lcom/aide/appwizard/runtime/a$e;->gn:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 375
    :goto_1
    return-object v0

    .line 368
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 375
    :cond_1
    sget-object v0, Lcom/aide/appwizard/runtime/a$e;->Hw:Lcom/aide/appwizard/runtime/a$e;

    goto :goto_1
.end method

.method public static j6()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-static {}, Lcom/aide/appwizard/runtime/a$e;->values()[Lcom/aide/appwizard/runtime/a$e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 383
    iget-object v4, v4, Lcom/aide/appwizard/runtime/a$e;->gn:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/appwizard/runtime/a$e;
    .locals 1

    .prologue
    .line 347
    const-class v0, Lcom/aide/appwizard/runtime/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/a$e;

    return-object v0
.end method

.method public static values()[Lcom/aide/appwizard/runtime/a$e;
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/aide/appwizard/runtime/a$e;->u7:[Lcom/aide/appwizard/runtime/a$e;

    invoke-virtual {v0}, [Lcom/aide/appwizard/runtime/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/appwizard/runtime/a$e;

    return-object v0
.end method

.class public final enum Lvl;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DW:Lvl;

.field public static final enum FH:Lvl;

.field private static final synthetic Hw:[Lvl;

.field public static final enum j6:Lvl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lvl;

    const-string/jumbo v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lvl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvl;->j6:Lvl;

    .line 38
    new-instance v0, Lvl;

    const-string/jumbo v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lvl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvl;->DW:Lvl;

    .line 39
    new-instance v0, Lvl;

    const-string/jumbo v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lvl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvl;->FH:Lvl;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lvl;

    sget-object v1, Lvl;->j6:Lvl;

    aput-object v1, v0, v2

    sget-object v1, Lvl;->DW:Lvl;

    aput-object v1, v0, v3

    sget-object v1, Lvl;->FH:Lvl;

    aput-object v1, v0, v4

    sput-object v0, Lvl;->Hw:[Lvl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static j6(I)Lvl;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lvl;->values()[Lvl;

    move-result-object v0

    .line 45
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 47
    :cond_0
    sget-object v0, Lvl;->DW:Lvl;

    .line 49
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lvl;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lvl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvl;

    return-object v0
.end method

.method public static values()[Lvl;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lvl;->Hw:[Lvl;

    invoke-virtual {v0}, [Lvl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvl;

    return-object v0
.end method

.class public Lcom/aide/ui/MainActivity;
.super Lcom/aide/ui/ThemedActionbarActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/aide/ui/AIDEEditorPager$b;
.implements Lov$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/MainActivity$a;
    }
.end annotation


# instance fields
.field private DW:Lcom/aide/common/KeyStrokeDetector;

.field private EQ:Z

.field private FH:Lcom/aide/common/p;

.field private Hw:Lcom/aide/common/p;

.field private J0:I

.field private J8:Z

.field private Mr:Lcom/aide/ui/g;

.field private QX:Z

.field private U2:Lcom/aide/ui/n;

.field private VH:Lcom/aide/ui/k;

.field private Ws:Z

.field private XL:I

.field private Zo:Lcom/aide/ui/p;

.field private a8:Landroid/view/View;

.field private aM:Landroid/os/Handler;

.field private er:Z

.field private gn:Z

.field private j3:Lcom/aide/ui/MainActivity$a;

.field private j6:J

.field private lg:Z

.field private rN:J

.field private tp:Ljava/lang/Object;

.field private u7:Lcom/aide/ui/l;

.field private v5:Lcom/aide/ui/o;

.field private we:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    .line 92
    new-instance v0, Lcom/aide/common/p;

    const-string/jumbo v1, "Starting..."

    invoke-direct {v0, p0, v1}, Lcom/aide/common/p;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->FH:Lcom/aide/common/p;

    .line 94
    new-instance v0, Lcom/aide/ui/MainActivity$1;

    const-string/jumbo v1, "Analyzing..."

    invoke-direct {v0, p0, p0, v1}, Lcom/aide/ui/MainActivity$1;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->Hw:Lcom/aide/common/p;

    .line 104
    new-instance v0, Lcom/aide/ui/o;

    invoke-direct {v0, p0}, Lcom/aide/ui/o;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->v5:Lcom/aide/ui/o;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Ljava/lang/Object;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/MainActivity;->J0:I

    .line 125
    new-instance v0, Lcom/aide/ui/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aide/ui/MainActivity$a;-><init>(Lcom/aide/ui/MainActivity$1;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->j3:Lcom/aide/ui/MainActivity$a;

    return-void
.end method

.method private CU()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    .line 1048
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1049
    const-string/jumbo v1, "first_seen_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->J0:I

    .line 1050
    iget v1, p0, Lcom/aide/ui/MainActivity;->J0:I

    if-ne v1, v3, :cond_0

    .line 1053
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->Hw(Z)Ljava/lang/String;

    move-result-object v1

    .line 1054
    if-nez v1, :cond_2

    .line 1057
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->gn()I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->J0:I

    .line 1058
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aide/ui/MainActivity;->J8:Z

    .line 1065
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1066
    const-string/jumbo v2, "first_seen_version"

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->gn()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1067
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1069
    :cond_0
    const-string/jumbo v1, "first_run_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/ui/MainActivity;->rN:J

    .line 1070
    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->rN:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1072
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/ui/MainActivity;->rN:J

    .line 1073
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1074
    const-string/jumbo v1, "first_run_time"

    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->rN:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1075
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1082
    :cond_1
    :goto_1
    return-void

    .line 1063
    :cond_2
    const/16 v1, 0x67

    iput v1, p0, Lcom/aide/ui/MainActivity;->J0:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1080
    invoke-static {v0}, Lcom/aide/common/e;->j6(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static DW(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const-string/jumbo v1, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic DW(Lcom/aide/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jO()V

    return-void
.end method

.method private Eq()V
    .locals 1

    .prologue
    .line 1199
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEAnalysisProgressBar;

    .line 1200
    invoke-virtual {v0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6()V

    .line 1201
    return-void
.end method

.method public static FH(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    const-string/jumbo v1, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/ui/MainActivity;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Ljava/lang/Object;

    return-object v0
.end method

.method private FN()V
    .locals 4

    .prologue
    .line 1774
    invoke-static {}, Lcom/aide/ui/e;->Sf()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->J0()Lpz;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Lpz;)V

    .line 1775
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->KD()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    .line 1777
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/aide/ui/MainActivity$10;-><init>(Lcom/aide/ui/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1788
    return-void
.end method

.method public static Hw(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    const-string/jumbo v1, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static VH(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 813
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :goto_0
    return v0

    .line 815
    :catch_0
    move-exception v0

    .line 817
    const v0, 0x7f02008b

    goto :goto_0
.end method

.method private XG()V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->U2:Lcom/aide/ui/n;

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditorPager;->getQuickKeys()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/n;->j6(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method private XX()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 823
    invoke-static {}, Lcom/aide/ui/build/android/m;->FH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    new-instance v0, Lcom/aide/ui/MainActivity$4;

    const-string/jumbo v1, "Old NDK Version Deleter"

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/MainActivity$4;-><init>(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 834
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 835
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 837
    :cond_0
    return-void
.end method

.method private Xa()V
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/l;

    if-eqz v0, :cond_1

    .line 1184
    iget-object v1, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/l;

    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1185
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->vy()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1187
    invoke-static {}, Lcom/aide/ui/e;->gn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/d;->Hw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1184
    :goto_0
    invoke-virtual {v1, v0}, Lcom/aide/ui/l;->j6(Z)V

    .line 1189
    :cond_1
    return-void

    .line 1187
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Zo(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    const-string/jumbo v1, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private Zo(Z)V
    .locals 0

    .prologue
    .line 1892
    iput-boolean p1, p0, Lcom/aide/ui/MainActivity;->gn:Z

    .line 1893
    return-void
.end method

.method private aq()Lcom/aide/ui/AIDEErrorsView;
    .locals 2

    .prologue
    .line 1231
    const v0, 0x7f0d0166

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEErrorsView;

    .line 1233
    if-eqz v0, :cond_0

    .line 1248
    :goto_0
    return-object v0

    .line 1238
    :cond_0
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1239
    if-eqz v0, :cond_1

    .line 1241
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1242
    instance-of v1, v0, Lcom/aide/ui/AIDEErrorsView;

    if-eqz v1, :cond_1

    .line 1244
    check-cast v0, Lcom/aide/ui/AIDEErrorsView;

    goto :goto_0

    .line 1248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private et()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1026
    const-string/jumbo v0, "BrowserLayout"

    invoke-virtual {p0, v0, v3}, Lcom/aide/ui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1027
    const-string/jumbo v1, "CurrentBrowser"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1028
    if-ltz v0, :cond_0

    .line 1030
    invoke-direct {p0, v0, v3}, Lcom/aide/ui/MainActivity;->j6(IZ)V

    .line 1032
    :cond_0
    return-void
.end method

.method private hz()V
    .locals 1

    .prologue
    .line 1205
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->aq()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v0

    .line 1206
    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {v0}, Lcom/aide/ui/AIDEErrorsView;->j6()V

    .line 1209
    const v0, 0x7f0d00a4

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1211
    :cond_0
    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    const-string/jumbo v1, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const-string/jumbo v1, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/MainActivity;)Lcom/aide/common/p;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->FH:Lcom/aide/common/p;

    return-object v0
.end method

.method private j6(IZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1716
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/aide/ui/browsers/BrowserPager;->DW(IZ)V

    .line 1717
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->v5(I)V

    .line 1718
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aide/ui/views/SplitView;->openSplit(Z)V

    .line 1719
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1720
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v0

    invoke-virtual {v0, v1}, Lij;->j6(Z)V

    .line 1721
    return-void

    :cond_0
    move v0, v1

    .line 1716
    goto :goto_0
.end method

.method public static j6(Landroid/app/Activity;Landroid/content/IntentSender;)V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string/jumbo v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public static j6(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-static {}, Lcom/aide/ui/e;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    const-string/jumbo v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 186
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Qq()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    const-string/jumbo v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->u7()V

    .line 167
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/e;->Sf()Lcom/aide/ui/debugger/Debugger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/debugger/Debugger;->J0()Lpz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->j6(Lpz;)V

    .line 168
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->KD()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    .line 169
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->invalidate()V

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/MainActivity$12;

    invoke-direct {v1, p0}, Lcom/aide/ui/MainActivity$12;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static j6(Landroid/content/Context;Lcom/appfour/common/gcm/d;)V
    .locals 3

    .prologue
    .line 234
    invoke-static {p0}, Lpb;->j6(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    iget-object v0, p1, Lcom/appfour/common/gcm/d;->DW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 237
    iget-object v0, p1, Lcom/appfour/common/gcm/d;->FH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->DW(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 238
    iget-object v0, p1, Lcom/appfour/common/gcm/d;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 239
    invoke-static {p0}, Lcom/aide/ui/MainActivity;->VH(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 240
    iget-object v0, p1, Lcom/appfour/common/gcm/d;->v5:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 241
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->j6(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 242
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->FH(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 243
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 244
    const/16 v2, 0x7b

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->j6()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private j6(Landroid/view/Menu;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1577
    move v2, v3

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1579
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1580
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/aide/ui/f;->j6(I)Lqd;

    move-result-object v1

    .line 1581
    if-eqz v1, :cond_1

    .line 1583
    invoke-interface {v1}, Lqd;->g_()Z

    move-result v0

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1584
    instance-of v0, v1, Lqf;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1586
    check-cast v0, Lqf;

    invoke-interface {v0, v3}, Lqf;->j6(Z)Z

    move-result v0

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1588
    :cond_0
    instance-of v0, v1, Lqe;

    if-eqz v0, :cond_1

    .line 1590
    check-cast v1, Lqe;

    invoke-interface {v1}, Lqe;->VH()Ljava/lang/String;

    move-result-object v0

    .line 1591
    if-eqz v0, :cond_1

    .line 1593
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1597
    :cond_1
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/aide/ui/f;->DW(I)Lpr;

    move-result-object v0

    .line 1598
    if-eqz v0, :cond_2

    .line 1600
    invoke-interface {v0}, Lpr;->h_()Z

    move-result v1

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1601
    invoke-interface {v0}, Lpr;->g_()Z

    move-result v0

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1603
    :cond_2
    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1605
    invoke-interface {v4}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/Menu;)V

    .line 1577
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1608
    :cond_4
    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/MainActivity;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->v5(I)V

    return-void
.end method

.method private jJ()V
    .locals 2

    .prologue
    .line 1000
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/aide/common/d;->u7(Landroid/content/Context;)F

    move-result v0

    const v1, 0x44188000    # 610.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1003
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aide/common/d;->j6(Landroid/app/Activity;Z)V

    .line 1011
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/aide/common/d;->FH(Landroid/app/Activity;)V

    .line 1012
    return-void

    .line 1005
    :cond_1
    invoke-static {p0}, Lcom/aide/common/d;->j6(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/aide/common/d;->j6(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method private jO()V
    .locals 7

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v1

    .line 1968
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1970
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    .line 1972
    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 1973
    invoke-static {v5}, Lqa;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1974
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v6

    invoke-virtual {v6, v5}, Lpe;->DW(Ljava/lang/String;)Lpe$a;

    move-result-object v5

    invoke-interface {v5}, Lpe$a;->gn()Z

    move-result v5

    .line 1975
    if-eqz v5, :cond_0

    .line 1976
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " *"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1977
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1978
    if-nez v5, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1980
    :cond_2
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string/jumbo v4, "Close Files"

    new-instance v5, Lcom/aide/ui/MainActivity$14;

    invoke-direct {v5, p0, v1}, Lcom/aide/ui/MainActivity$14;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    invoke-static {v0, v4, v2, v3, v5}, Lcom/aide/common/m;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aide/common/y;)V

    .line 1992
    return-void
.end method

.method private kQ()V
    .locals 3

    .prologue
    .line 841
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/e;->er()Lox;

    move-result-object v1

    invoke-virtual {v1}, Lox;->DW()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {}, Lcom/aide/ui/e;->er()Lox;

    move-result-object v1

    invoke-virtual {v1}, Lox;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lqa;->VH(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    invoke-static {v0}, Lqa;->VH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 847
    :try_start_0
    invoke-static {v0}, Lqa;->aM(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 851
    invoke-static {v0}, Lcom/aide/common/e;->j6(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static v5(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string/jumbo v1, "EXTRA_SHOWN_FROM_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private v5(I)V
    .locals 2

    .prologue
    .line 1687
    const-string/jumbo v0, "BrowserLayout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aide/ui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1688
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1689
    const-string/jumbo v1, "CurrentBrowser"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1690
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1691
    return-void
.end method

.method private wc()Z
    .locals 1

    .prologue
    .line 1016
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0}, Lpm;->FH()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/aide/ui/h;->cb()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private yO()Landroid/widget/Spinner;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 861
    :try_start_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "action_bar"

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 862
    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 864
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 865
    const-string/jumbo v3, "mTabScrollView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 866
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 868
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 869
    if-nez v0, :cond_0

    move-object v0, v1

    .line 888
    :goto_0
    return-object v0

    .line 874
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "mTabSpinner"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 875
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 877
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_1

    .line 880
    check-cast v0, Landroid/widget/Spinner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 885
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 888
    goto :goto_0
.end method


# virtual methods
.method public BT()V
    .locals 2

    .prologue
    .line 1766
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v0

    sget v1, Lcom/aide/ui/browsers/BrowserPager;->Hw:I

    if-ne v0, v1, :cond_0

    .line 1768
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/SplitView;->closeSplit(Z)V

    .line 1770
    :cond_0
    return-void
.end method

.method public DW()V
    .locals 6

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->wc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 930
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v3

    .line 931
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 933
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getModel()Lpe$a;

    move-result-object v4

    .line 934
    invoke-interface {v4}, Lpe$a;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqa;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Lpe$a;->gn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " *"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    :cond_0
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    .line 938
    invoke-virtual {v4, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 931
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 941
    :cond_1
    return-void
.end method

.method public DW(I)V
    .locals 2

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->aj()V

    .line 911
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->XG()V

    .line 913
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 914
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 916
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 917
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->yO()Landroid/widget/Spinner;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 923
    :cond_0
    return-void
.end method

.method public DW(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Eq()V

    .line 1166
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->hz()V

    .line 1167
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->nw()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/ErrorBrowser;->FH()V

    .line 1168
    return-void
.end method

.method public DW(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1810
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v2

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lij;->j6(Z)V

    .line 1811
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->u7()V

    .line 1813
    if-eqz p1, :cond_2

    .line 1815
    invoke-static {p0}, Lcom/aide/common/d;->gn(Landroid/content/Context;)F

    move-result v0

    const/high16 v2, 0x44480000    # 800.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1816
    :cond_0
    invoke-static {p0}, Lcom/aide/common/d;->gn(Landroid/content/Context;)F

    move-result v0

    const/high16 v2, 0x44070000    # 540.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 1818
    :cond_1
    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->v5(Z)V

    .line 1821
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1810
    goto :goto_0
.end method

.method public EQ()F
    .locals 3

    .prologue
    .line 1215
    invoke-static {p0}, Lcom/aide/common/d;->j6(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->aq()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v0

    .line 1218
    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {v0}, Lcom/aide/ui/AIDEErrorsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    .line 1221
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1222
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1226
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/aide/common/d;->u7(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public FH()V
    .locals 3

    .prologue
    .line 985
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 986
    iget-object v1, p0, Lcom/aide/ui/MainActivity;->Mr:Lcom/aide/ui/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/aide/ui/g;->j6(Landroid/view/View;Z)V

    .line 987
    return-void
.end method

.method public FH(I)V
    .locals 0

    .prologue
    .line 1643
    invoke-static {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->j6(Landroid/app/Activity;I)V

    .line 1644
    return-void
.end method

.method public FH(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1338
    invoke-static {p1}, Lqa;->lg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1340
    const-string/jumbo v3, "java"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "svg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1342
    :cond_0
    invoke-static {p1}, Lqa;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1344
    new-instance v0, Lpz;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lpz;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Lpz;)V

    .line 1346
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph;->Hw(Ljava/lang/String;)V

    .line 1363
    :cond_1
    :goto_0
    return-void

    .line 1351
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1352
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1353
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1358
    :catch_0
    move-exception v0

    .line 1360
    invoke-static {}, Lcom/aide/ui/e;->gn()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No handler found for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public FH(Z)V
    .locals 2

    .prologue
    .line 991
    iput-boolean p1, p0, Lcom/aide/ui/MainActivity;->er:Z

    .line 992
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 994
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jJ()V

    .line 996
    :cond_0
    return-void
.end method

.method public Hw()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lcom/aide/ui/MainActivity;->J0:I

    return v0
.end method

.method public Hw(Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1092
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1093
    const-string/jumbo v1, "last_seen_version"

    const-string/jumbo v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1094
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->VH()Ljava/lang/String;

    move-result-object v3

    .line 1095
    if-eqz p1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1097
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1098
    const-string/jumbo v4, "last_seen_version"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1099
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1101
    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v2, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1126
    :cond_2
    :goto_0
    return-object v0

    .line 1105
    :cond_3
    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1107
    iget-boolean v1, p0, Lcom/aide/ui/MainActivity;->we:Z

    if-nez v1, :cond_2

    .line 1114
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1117
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    .line 1119
    goto :goto_0

    .line 1123
    :catch_0
    move-exception v1

    .line 1125
    invoke-static {v1}, Lcom/aide/common/e;->j6(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public Hw(I)V
    .locals 0

    .prologue
    .line 1725
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->v5(I)V

    .line 1726
    return-void
.end method

.method public I()V
    .locals 1

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1927
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->v5:Lcom/aide/ui/o;

    invoke-virtual {v0}, Lcom/aide/ui/o;->DW()V

    .line 1930
    :goto_0
    return-void

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/ui/k;

    invoke-virtual {v0}, Lcom/aide/ui/k;->DW()V

    goto :goto_0
.end method

.method public J0()V
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Hw:Lcom/aide/common/p;

    invoke-virtual {v0}, Lcom/aide/common/p;->DW()V

    .line 1334
    return-void
.end method

.method public J8()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1466
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v1

    invoke-virtual {v1}, Loz;->v5()Lpz;

    move-result-object v1

    .line 1467
    if-eqz v1, :cond_0

    .line 1469
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v2

    invoke-virtual {v2, v0}, Loz;->j6(Z)V

    .line 1470
    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->j6(Lpz;)V

    .line 1471
    const/4 v0, 0x1

    .line 1473
    :cond_0
    return v0
.end method

.method public KD()Lcom/aide/ui/browsers/DebugBrowser;
    .locals 1

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getDebugBrowser()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    return-object v0
.end method

.method public Mr()V
    .locals 1

    .prologue
    .line 1158
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Eq()V

    .line 1159
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->hz()V

    .line 1160
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->nw()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/ErrorBrowser;->Hw()V

    .line 1161
    return-void
.end method

.method public Mz()V
    .locals 1

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->v5:Lcom/aide/ui/o;

    invoke-virtual {v0}, Lcom/aide/ui/o;->j6()V

    .line 1922
    :goto_0
    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/ui/p;

    invoke-virtual {v0}, Lcom/aide/ui/p;->DW()V

    goto :goto_0
.end method

.method public OW()V
    .locals 3

    .prologue
    .line 2152
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v1

    invoke-virtual {v1}, Lpm;->er()Lcom/aide/ui/trainer/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/c$a;->u7()I

    move-result v1

    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v2

    .line 2153
    invoke-virtual {v2}, Lpm;->er()Lcom/aide/ui/trainer/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/c$a;->VH()[Ljava/lang/String;

    move-result-object v2

    .line 2152
    invoke-static {v0, v1, v2}, Lcom/aide/common/x;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    .line 2155
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0}, Lpm;->FH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2156
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 2159
    :goto_0
    return-void

    .line 2158
    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0
.end method

.method public P8()I
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->U2:Lcom/aide/ui/n;

    invoke-virtual {v0}, Lcom/aide/ui/n;->j6()I

    move-result v0

    return v0
.end method

.method public QX()V
    .locals 6

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->aM:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->j3:Lcom/aide/ui/MainActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1499
    iget v0, p0, Lcom/aide/ui/MainActivity;->XL:I

    if-lez v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->aM:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->j3:Lcom/aide/ui/MainActivity$a;

    iget v2, p0, Lcom/aide/ui/MainActivity;->XL:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1503
    :cond_0
    return-void
.end method

.method public Qq()Z
    .locals 1

    .prologue
    .line 2106
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->QX:Z

    return v0
.end method

.method public SI()Lcom/aide/ui/browsers/FileBrowser;
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    return-object v0
.end method

.method public Sf()Z
    .locals 1

    .prologue
    .line 1897
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->gn:Z

    return v0
.end method

.method public U2()V
    .locals 2

    .prologue
    .line 1659
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Sf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/MainActivity;->Zo(Z)V

    .line 1662
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Sf()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    .line 1663
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->u7()V

    .line 1665
    :cond_0
    return-void
.end method

.method public VH()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1134
    :try_start_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    return-object v0

    .line 1136
    :catch_0
    move-exception v0

    .line 1138
    invoke-static {v0}, Lcom/aide/common/e;->j6(Ljava/lang/Throwable;)V

    .line 1139
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public Ws()V
    .locals 3

    .prologue
    .line 1478
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    invoke-virtual {v0}, Loz;->Hw()Lpz;

    move-result-object v0

    .line 1479
    if-eqz v0, :cond_0

    .line 1481
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Loz;->j6(Z)V

    .line 1482
    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Lpz;)V

    .line 1485
    :cond_0
    return-void
.end method

.method public XL()V
    .locals 4

    .prologue
    .line 1507
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    invoke-virtual {v0}, Lpe;->we()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1509
    const v0, 0x7f0701b6

    const v1, 0x7f0701b5

    new-instance v2, Lcom/aide/ui/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$6;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v3, Lcom/aide/ui/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/aide/ui/MainActivity$7;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/aide/common/m;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1528
    :goto_0
    return-void

    .line 1526
    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->finish()V

    goto :goto_0
.end method

.method public Zo()J
    .locals 2

    .prologue
    .line 1041
    iget-wide v0, p0, Lcom/aide/ui/MainActivity;->rN:J

    return-wide v0
.end method

.method public a8()V
    .locals 2

    .prologue
    .line 1695
    new-instance v0, Lcom/aide/ui/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/aide/ui/MainActivity$9;-><init>(Lcom/aide/ui/MainActivity;)V

    .line 1703
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/SplitView;->toggleSplit(Ljava/lang/Runnable;)V

    .line 1704
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1709
    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1710
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lij;->j6(Z)V

    .line 1712
    :cond_1
    return-void
.end method

.method public aM()V
    .locals 1

    .prologue
    .line 1638
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->FH(I)V

    .line 1639
    return-void
.end method

.method public aj()V
    .locals 1

    .prologue
    .line 2140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/view/View;

    .line 2141
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 2142
    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 2143
    return-void
.end method

.method public br()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2163
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2165
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/aide/ui/MainActivity;->j6(ZLjava/lang/String;Lcom/aide/ui/trainer/c$i;)V

    .line 2167
    :cond_0
    return-void
.end method

.method public ca()Z
    .locals 1

    .prologue
    .line 1934
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->wc()Z

    move-result v0

    return v0
.end method

.method public cb()Lcom/aide/common/KeyStrokeDetector;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->DW:Lcom/aide/common/KeyStrokeDetector;

    return-object v0
.end method

.method public cn()Lcom/aide/ui/views/SplitView;
    .locals 1

    .prologue
    .line 1855
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/SplitView;

    return-object v0
.end method

.method public dx()V
    .locals 1

    .prologue
    .line 1870
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->FH:Lcom/aide/common/p;

    invoke-virtual {v0}, Lcom/aide/common/p;->FH()V

    .line 1878
    :goto_0
    return-void

    .line 1876
    :cond_0
    new-instance v0, Lnd;

    invoke-direct {v0}, Lnd;-><init>()V

    invoke-static {p0, v0}, Lcom/aide/common/m;->j6(Landroid/app/Activity;Lcom/aide/common/m;)V

    goto :goto_0
.end method

.method public ef()V
    .locals 1

    .prologue
    .line 1887
    new-instance v0, Lnk;

    invoke-direct {v0}, Lnk;-><init>()V

    invoke-static {p0, v0}, Lcom/aide/common/m;->j6(Landroid/app/Activity;Lcom/aide/common/m;)V

    .line 1888
    return-void
.end method

.method public ei()Lcom/aide/ui/browsers/BrowserPager;
    .locals 1

    .prologue
    .line 1825
    const v0, 0x7f0d00a1

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/BrowserPager;

    return-object v0
.end method

.method public er()V
    .locals 2

    .prologue
    .line 1748
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1749
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->FH:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V

    .line 1750
    return-void
.end method

.method public g3()V
    .locals 1

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vJ()V

    .line 1911
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->j3()V

    .line 1912
    invoke-static {}, Lcom/aide/ui/e;->er()Lox;

    move-result-object v0

    invoke-virtual {v0}, Lox;->FH()V

    .line 1913
    invoke-static {}, Lcom/aide/ui/e;->XL()Lou;

    move-result-object v0

    invoke-virtual {v0}, Lou;->tp()V

    .line 1914
    return-void
.end method

.method public gW()V
    .locals 2

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1761
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->v5:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V

    .line 1762
    return-void
.end method

.method public gn()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    return v0

    .line 1149
    :catch_0
    move-exception v1

    .line 1151
    invoke-static {v1}, Lcom/aide/common/e;->j6(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j3()V
    .locals 2

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Sf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1650
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/MainActivity;->Zo(Z)V

    .line 1651
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1652
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Sf()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    .line 1653
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->u7()V

    .line 1655
    :cond_0
    return-void
.end method

.method public j6(Landroid/graphics/Rect;)Landroid/view/View;
    .locals 9

    .prologue
    .line 2116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/view/View;

    .line 2117
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 2118
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2119
    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    .line 2120
    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 2121
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2122
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    aget v7, v1, v7

    sub-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    aget v1, v1, v8

    sub-int v1, v7, v1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2124
    return-object v2
.end method

.method public j6(I)V
    .locals 2

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->XG()V

    .line 895
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 896
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 898
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 900
    :cond_0
    return-void
.end method

.method public j6(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/view/View;

    .line 2130
    const v0, 0x7f0d00a6

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 2131
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2132
    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    .line 2133
    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 2134
    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    aget v6, v1, v6

    sub-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x1

    aget v1, v1, v7

    sub-int v1, v6, v1

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2136
    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-static {p1}, Lqa;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 947
    new-instance v2, Lcom/aide/ui/MainActivity$5;

    invoke-direct {v2, p0, v1, p1}, Lcom/aide/ui/MainActivity$5;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 979
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 980
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jJ()V

    .line 981
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1996
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1997
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string/jumbo v1, "Starting App..."

    new-instance v2, Lcom/aide/ui/MainActivity$15;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$15;-><init>(Lcom/aide/ui/MainActivity;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/e;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2013
    invoke-static {}, Lcom/aide/ui/e;->ro()Low;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Low;->j6(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-static {p0}, Lcom/aide/common/d;->DW(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Rate"

    invoke-virtual {p0, v0, v2}, Lcom/aide/ui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "Rated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    const-string/jumbo v0, "Rate"

    invoke-virtual {p0, v0, v2}, Lcom/aide/ui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 446
    const-string/jumbo v1, "Rated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 447
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 449
    sget-object v3, Lcom/aide/ui/e;->j6:Ljava/lang/String;

    const-string/jumbo v4, "rate"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/aide/common/v;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public j6(Lpz;)V
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/aide/ui/MainActivity;->j6(Lpz;Z)V

    .line 1368
    return-void
.end method

.method public j6(Lpz;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1372
    if-eqz p1, :cond_1

    iget-object v0, p1, Lpz;->j6:Ljava/lang/String;

    invoke-static {v0}, Lqa;->J8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1374
    iget-object v0, p1, Lpz;->j6:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v1

    invoke-virtual {v1}, Lpe;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v1, p1, Lpz;->DW:I

    iget v2, p1, Lpz;->FH:I

    iget v3, p1, Lpz;->Hw:I

    iget v4, p1, Lpz;->v5:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V

    .line 1377
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->j3()V

    .line 1378
    :cond_0
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    invoke-virtual {v0, v5}, Loz;->j6(Z)V

    .line 1405
    :cond_1
    :goto_0
    return-void

    .line 1382
    :cond_2
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    invoke-virtual {v0}, Loz;->j6()Z

    move-result v1

    .line 1383
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Loz;->j6(Z)V

    .line 1386
    :try_start_0
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    iget-object v2, p1, Lpz;->j6:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lpe;->j6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    if-eqz v1, :cond_3

    .line 1397
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    invoke-virtual {v0, v5}, Loz;->j6(Z)V

    .line 1400
    :cond_3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v1, p1, Lpz;->DW:I

    iget v2, p1, Lpz;->FH:I

    iget v3, p1, Lpz;->Hw:I

    iget v4, p1, Lpz;->v5:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V

    .line 1401
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->aM()V

    .line 1402
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    invoke-virtual {v0, v5}, Loz;->j6(Z)V

    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1390
    :try_start_1
    invoke-static {}, Lcom/aide/ui/e;->gn()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lpz;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " could not be loaded!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1395
    if-eqz v1, :cond_1

    .line 1397
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    invoke-virtual {v0, v5}, Loz;->j6(Z)V

    goto :goto_0

    .line 1395
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 1397
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v1

    invoke-virtual {v1, v5}, Loz;->j6(Z)V

    :cond_4
    throw v0
.end method

.method public j6(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1803
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->U2:Lcom/aide/ui/n;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->QX:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/aide/ui/n;->j6(Z)V

    .line 1804
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v0

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lij;->j6(Z)V

    .line 1805
    return-void

    :cond_0
    move v0, v2

    .line 1803
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1804
    goto :goto_1
.end method

.method public j6(ZLjava/lang/String;Lcom/aide/ui/trainer/c$i;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2171
    iput-boolean v2, p0, Lcom/aide/ui/MainActivity;->lg:Z

    .line 2172
    if-eqz p1, :cond_1

    .line 2174
    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->v5(Z)V

    .line 2189
    :goto_0
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lpe;->j6(ZZ)V

    .line 2190
    if-eqz p2, :cond_3

    .line 2192
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lpm;->j6(Ljava/lang/String;)V

    .line 2198
    :cond_0
    :goto_1
    invoke-static {p1}, Lcom/aide/ui/e;->j6(Z)V

    .line 2199
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V

    .line 2200
    return-void

    .line 2178
    :cond_1
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    invoke-virtual {v0}, Lpe;->Hw()Ljava/lang/String;

    move-result-object v0

    .line 2179
    if-eqz v0, :cond_2

    .line 2181
    invoke-static {}, Lcom/aide/ui/e;->er()Lox;

    move-result-object v1

    invoke-static {v0}, Lqa;->v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lox;->j6(Ljava/lang/String;)V

    goto :goto_0

    .line 2185
    :cond_2
    invoke-static {}, Lcom/aide/ui/e;->er()Lox;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/e;->er()Lox;

    move-result-object v1

    invoke-virtual {v1}, Lox;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lox;->j6(Ljava/lang/String;)V

    goto :goto_0

    .line 2194
    :cond_3
    if-eqz p3, :cond_0

    .line 2196
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lpm;->j6(Lcom/aide/ui/trainer/c$i;)V

    goto :goto_1
.end method

.method public j6()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 459
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v1

    invoke-virtual {v1}, Lph;->J0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v1

    invoke-virtual {v1}, Lph;->yS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v1

    invoke-virtual {v1}, Lph;->u7()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lod;->DW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string/jumbo v2, "ValuableApps"

    invoke-virtual {p0, v2, v0}, Lcom/aide/ui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 464
    const-string/jumbo v4, "ValuableApps"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 465
    new-instance v5, Ljava/util/HashSet;

    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 466
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 470
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 473
    const-string/jumbo v2, "ValuableApps"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 475
    const-string/jumbo v1, "Do you want to get more exposure for your app?"

    const-string/jumbo v2, "If you have built something great using AIDE please write about it in our Google+ community."

    const-string/jumbo v4, "Open Google+"

    new-instance v5, Lcom/aide/ui/MainActivity$16;

    invoke-direct {v5, p0}, Lcom/aide/ui/MainActivity$16;-><init>(Lcom/aide/ui/MainActivity;)V

    const-string/jumbo v6, "Not now"

    move-object v0, p0

    .line 476
    invoke-static/range {v0 .. v7}, Lcom/aide/common/m;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 491
    :goto_0
    return v3

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method public lg()V
    .locals 2

    .prologue
    .line 1730
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v0

    sget v1, Lcom/aide/ui/browsers/BrowserPager;->DW:I

    if-ne v0, v1, :cond_0

    .line 1732
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->v5(Z)V

    .line 1738
    :goto_0
    return-void

    .line 1736
    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->yS()V

    goto :goto_0
.end method

.method public lp()Landroid/view/View;
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/view/View;

    return-object v0
.end method

.method public nw()Lcom/aide/ui/browsers/ErrorBrowser;
    .locals 1

    .prologue
    .line 1835
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getErrorBrowser()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1272
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 1274
    if-ne p2, v1, :cond_0

    invoke-static {p3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Landroid/content/Intent;)V

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    const v0, 0x123abc

    if-ne p1, v0, :cond_2

    .line 1278
    invoke-static {}, Lcom/aide/ui/e;->cn()Loy;

    move-result-object v0

    invoke-virtual {v0, p3}, Loy;->j6(Landroid/content/Intent;)V

    goto :goto_0

    .line 1280
    :cond_2
    const/16 v0, 0xf

    if-ne p1, v0, :cond_3

    .line 1282
    if-ne p2, v1, :cond_0

    invoke-static {p3}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Landroid/content/Intent;)V

    goto :goto_0

    .line 1284
    :cond_3
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 1286
    if-ne p2, v1, :cond_0

    .line 1288
    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1289
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0}, Lpm;->J0()V

    goto :goto_0

    .line 1290
    :cond_4
    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0}, Lpm;->EQ()V

    goto :goto_0

    .line 1294
    :cond_5
    const/16 v0, 0xe

    if-ne p1, v0, :cond_6

    .line 1296
    if-ne p2, v1, :cond_0

    .line 1298
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0}, Lpm;->J0()V

    goto :goto_0

    .line 1301
    :cond_6
    const/16 v0, 0x10

    if-ne p1, v0, :cond_7

    .line 1303
    invoke-static {p0}, Lcom/aide/ui/q;->DW(Landroid/app/Activity;)V

    goto :goto_0

    .line 1305
    :cond_7
    const/16 v0, 0x11

    if-ne p1, v0, :cond_8

    .line 1307
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->dx()V

    .line 1308
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v0

    invoke-virtual {v0}, Lij;->Hw()V

    .line 1309
    sget-object v0, Lcom/aide/ui/build/c;->j6:Lcom/aide/ui/build/android/b;

    invoke-virtual {v0}, Lcom/aide/ui/build/android/b;->VH()V

    goto :goto_0

    .line 1311
    :cond_8
    const/16 v0, 0x12

    if-ne p1, v0, :cond_9

    .line 1313
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->dx()V

    .line 1314
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v0

    invoke-virtual {v0}, Lij;->Hw()V

    .line 1315
    sget-object v0, Lcom/aide/ui/build/c;->DW:Lcom/aide/ui/build/java/a;

    invoke-virtual {v0}, Lcom/aide/ui/build/java/a;->VH()V

    goto :goto_0

    .line 1316
    :cond_9
    const/16 v0, 0x13

    if-ne p1, v0, :cond_a

    .line 1317
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v0

    invoke-virtual {v0}, Lij;->Hw()V

    .line 1318
    sget-object v0, Lcom/aide/ui/build/c;->Hw:Lix;

    invoke-virtual {v0}, Lix;->VH()V

    goto/16 :goto_0

    .line 1319
    :cond_a
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 1320
    invoke-static {}, Lcom/aide/ui/e;->sG()Lij;

    move-result-object v0

    invoke-virtual {v0}, Lij;->Hw()V

    .line 1321
    sget-object v0, Lcom/aide/ui/build/c;->v5:Lcom/aide/ui/build/javascript/a;

    invoke-virtual {v0}, Lcom/aide/ui/build/javascript/a;->VH()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const v5, 0x7f070219

    const/4 v4, 0x0

    .line 1422
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->v5:Lcom/aide/ui/o;

    invoke-virtual {v0}, Lcom/aide/ui/o;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->v5:Lcom/aide/ui/o;

    invoke-virtual {v0}, Lcom/aide/ui/o;->FH()V

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->v5(Z)V

    goto :goto_0

    .line 1432
    :cond_2
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1435
    :cond_3
    invoke-static {p0}, Lcom/aide/common/d;->DW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1438
    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->j6:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_4

    .line 1440
    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto :goto_0

    .line 1444
    :cond_4
    iput-wide v0, p0, Lcom/aide/ui/MainActivity;->j6:J

    .line 1445
    invoke-static {}, Lcom/aide/ui/e;->gn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1450
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1451
    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->j6:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    .line 1453
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->XL()V

    goto :goto_0

    .line 1457
    :cond_6
    iput-wide v0, p0, Lcom/aide/ui/MainActivity;->j6:J

    .line 1458
    invoke-static {}, Lcom/aide/ui/e;->gn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 398
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cb()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aide/common/KeyStrokeDetector;->j6(Landroid/content/Context;)V

    .line 399
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jJ()V

    .line 400
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->u7()V

    .line 401
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 497
    const-string/jumbo v0, "onCreate"

    invoke-static {p0, v0}, Lcom/aide/common/e;->j6(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/aide/common/d;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Ltv/ouya/console/api/e;->j6()Ltv/ouya/console/api/e;

    move-result-object v0

    const-string/jumbo v1, "9b57b7e2-2fa3-44db-9131-04b76a1f491c"

    invoke-virtual {v0, p0, v1}, Ltv/ouya/console/api/e;->j6(Landroid/content/Context;Ljava/lang/String;)V

    .line 504
    :cond_0
    invoke-static {p0}, Lcom/aide/ui/e;->j6(Landroid/content/Context;)V

    .line 506
    invoke-static {p0}, Lcom/aide/common/d;->Hw(Landroid/app/Activity;)V

    .line 508
    iput-boolean v8, p0, Lcom/aide/ui/MainActivity;->lg:Z

    .line 510
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->aM:Landroid/os/Handler;

    .line 512
    invoke-static {p0}, Lcom/aide/ui/h;->j6(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->we:Z

    .line 514
    invoke-static {}, Lcom/aide/ui/e;->vJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/common/d;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/aide/analytics/a;->j6()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    new-instance v0, Lcom/aide/ui/MainActivity$17;

    invoke-direct {v0, p0}, Lcom/aide/ui/MainActivity$17;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {p0, v0}, Lcom/aide/analytics/a;->j6(Landroid/content/Context;Lcom/aide/analytics/b;)V

    .line 528
    :cond_1
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 530
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->wc()Z

    move-result v0

    if-nez v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 535
    :cond_2
    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 538
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_3
    invoke-static {p0, v0}, Lcom/aide/ui/e;->j6(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    .line 543
    new-instance v1, Lcom/aide/ui/g;

    const v2, 0x7f0c0005

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/g;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->Mr:Lcom/aide/ui/g;

    .line 545
    new-instance v1, Lcom/aide/common/KeyStrokeDetector;

    invoke-direct {v1, p0}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->DW:Lcom/aide/common/KeyStrokeDetector;

    .line 547
    invoke-static {p0, p0}, Lcom/aide/ui/h;->j6(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 548
    invoke-static {}, Lcom/aide/ui/h;->VH()I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->XL:I

    .line 550
    const v1, 0x7f030026

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->setContentView(I)V

    .line 561
    invoke-static {p0}, Lcom/aide/common/d;->DW(Landroid/app/Activity;)V

    .line 563
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v1

    if-nez v1, :cond_4

    .line 565
    const v1, 0x7f0d0098

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/d;->j6(Landroid/view/View;)V

    .line 568
    :cond_4
    new-instance v1, Lcom/aide/ui/n;

    invoke-direct {v1, p0}, Lcom/aide/ui/n;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->U2:Lcom/aide/ui/n;

    .line 569
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->XG()V

    .line 571
    new-instance v1, Lcom/aide/ui/l;

    const v2, 0x7f0d00a5

    invoke-direct {v1, p0, v2}, Lcom/aide/ui/l;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/l;

    .line 572
    iget-object v1, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/l;

    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/l;->j6(Z)V

    .line 573
    iget-object v1, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/l;

    new-instance v2, Lcom/aide/ui/MainActivity$18;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$18;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/aide/ui/l;->j6(Landroid/view/View$OnClickListener;)V

    .line 582
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/aide/ui/h;->sh()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v8

    :goto_0
    invoke-virtual {v2, v1}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/MainActivity$19;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$19;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/SplitView;->setOnSplitChangeListener(Lcom/aide/ui/views/SplitView$a;)V

    .line 597
    const v1, 0x7f0d009c

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/MainActivity$20;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$20;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 608
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 630
    :goto_1
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 632
    invoke-static {}, Lcom/aide/ui/e;->U2()Lcom/aide/ui/build/a;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/MainActivity$21;

    invoke-direct {v2, p0}, Lcom/aide/ui/MainActivity$21;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/aide/ui/build/a;->j6(Lcom/aide/ui/build/a$a;)V

    .line 643
    :cond_5
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/aide/common/d;->DW(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 645
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 648
    :cond_6
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpe;->j6(Ljava/lang/String;)V

    .line 650
    sget-object v0, Lcom/aide/ui/e;->j6:Ljava/lang/String;

    const-string/jumbo v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 651
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ro()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/LogCatBrowser;->VH()V

    .line 652
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->KD()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    .line 655
    :cond_7
    invoke-static {}, Lcom/aide/ui/e;->rN()Loz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Lpz;

    move-result-object v1

    invoke-virtual {v0, v1}, Loz;->j6(Lpz;)V

    .line 657
    invoke-static {}, Lcom/aide/ui/e;->aM()Lov;

    move-result-object v0

    invoke-virtual {v0, p0}, Lov;->j6(Lov$a;)V

    .line 659
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aide/ui/AIDEEditorPager;->setSoftKeyboardListener(Lcom/aide/ui/AIDEEditorPager$b;)V

    .line 661
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jJ()V

    .line 662
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->u7()V

    .line 664
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->CU()V

    .line 666
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->J8:Z

    if-eqz v0, :cond_8

    .line 668
    const-string/jumbo v0, "First run after inital install"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 671
    :cond_8
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 673
    const-string/jumbo v0, "Shown from trainer notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 676
    :cond_9
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 678
    const-string/jumbo v0, "Shown from promo notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 681
    :cond_a
    invoke-static {}, Lcom/aide/ui/e;->Zo()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->J0()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 683
    invoke-static {v9}, Lcom/aide/ui/e;->j6(Z)V

    .line 686
    :cond_b
    invoke-static {}, Lcom/aide/ui/m;->v5()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 687
    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->gn()Z

    move-result v0

    if-nez v0, :cond_11

    .line 688
    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->FH()Z

    move-result v0

    if-nez v0, :cond_11

    .line 689
    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->QX()Z

    move-result v0

    if-nez v0, :cond_11

    .line 690
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/aide/ui/e;->Zo()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 691
    invoke-static {}, Lcom/aide/ui/m;->Hw()Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 693
    invoke-static {}, Lcom/aide/ui/e;->gn()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/m;->Hw()Ljava/util/GregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/aide/ui/MainActivity;->VH(Landroid/content/Context;)I

    move-result v4

    const-string/jumbo v5, "20% off special offer"

    const-string/jumbo v6, "Special offer"

    const-string/jumbo v7, "Save 20% on an annual subscription"

    invoke-static/range {v1 .. v7}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :goto_2
    invoke-static {}, Lcom/aide/common/d;->j6()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 704
    invoke-static {}, Ltv/ouya/console/api/e;->j6()Ltv/ouya/console/api/e;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/e;->v5()Z

    move-result v0

    if-nez v0, :cond_12

    .line 706
    const-string/jumbo v1, "AIDE for OUYA"

    const-string/jumbo v2, "This version of AIDE is only intended to run on the OUYA. Contact info@appfour.com for details."

    new-instance v4, Lcom/aide/ui/MainActivity$22;

    invoke-direct {v4, p0}, Lcom/aide/ui/MainActivity$22;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v5, Lcom/aide/ui/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/aide/ui/MainActivity$2;-><init>(Lcom/aide/ui/MainActivity;)V

    move-object v0, p0

    move v3, v9

    invoke-static/range {v0 .. v5}, Lcom/aide/common/m;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 806
    :goto_3
    return-void

    :cond_d
    move v1, v9

    .line 582
    goto/16 :goto_0

    .line 611
    :cond_e
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->wc()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 613
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 614
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 615
    invoke-static {p0}, Lcom/aide/common/d;->j6(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v1

    invoke-virtual {v1}, Lpm;->vy()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 617
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 619
    :cond_f
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto/16 :goto_1

    .line 623
    :cond_10
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 624
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 625
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    const v1, 0x7f0d00a4

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/c;

    invoke-direct {v2, p0}, Lcom/aide/ui/c;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    const v1, 0x7f0d009e

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/d;

    invoke-direct {v2, p0}, Lcom/aide/ui/d;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 698
    :cond_11
    invoke-static {}, Lcom/aide/ui/e;->gn()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 725
    :cond_12
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 727
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v0

    invoke-virtual {v0}, Lpm;->DW()V

    .line 729
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 731
    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 735
    :cond_13
    invoke-static {p0}, Lcom/aide/ui/q;->Hw(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 740
    :cond_14
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->et()V

    .line 742
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 743
    :goto_4
    if-nez v8, :cond_1d

    .line 745
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    invoke-virtual {v0}, Lpe;->VH()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 747
    invoke-static {}, Lcom/aide/ui/e;->nw()Lns;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v1

    invoke-virtual {v1}, Lpe;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lns;->DW(Ljava/lang/String;)V

    .line 749
    :cond_15
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->J0()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 751
    invoke-static {}, Lcom/aide/ui/e;->nw()Lns;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v1

    invoke-virtual {v1}, Lph;->we()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lns;->j6(Ljava/util/List;)V

    .line 754
    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->kQ()V

    .line 756
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->XX()V

    .line 758
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 759
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 761
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    goto/16 :goto_3

    :cond_17
    move v8, v9

    .line 742
    goto :goto_4

    .line 763
    :cond_18
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 764
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 766
    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 768
    :cond_19
    sget-object v0, Lcom/aide/ui/e;->j6:Ljava/lang/String;

    const-string/jumbo v1, "com.aide.ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 769
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 770
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 772
    invoke-static {p0}, Lcom/aide/ui/q;->Hw(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 774
    :cond_1a
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 775
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 776
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 778
    const-string/jumbo v0, "Shown from GCM notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/ui/q;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 781
    :cond_1b
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 782
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 784
    const-string/jumbo v0, "Shown from upgrade notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 785
    new-instance v0, Lcom/aide/ui/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/aide/ui/MainActivity$3;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {p0, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 796
    :cond_1c
    invoke-static {p0}, Lcom/aide/ui/q;->j6(Landroid/app/Activity;)V

    goto/16 :goto_3

    .line 801
    :cond_1d
    invoke-static {p0}, Lcom/aide/ui/q;->FH(Landroid/app/Activity;)V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1410
    invoke-static {p0, p1}, Lcom/aide/common/m;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1534
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1544
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1540
    :cond_0
    const v1, 0x7f0c000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1541
    new-instance v0, Lcom/aide/ui/p;

    invoke-direct {v0, p1}, Lcom/aide/ui/p;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/ui/p;

    .line 1542
    new-instance v0, Lcom/aide/ui/k;

    invoke-direct {v0, p1}, Lcom/aide/ui/k;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/ui/k;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy - finishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/common/e;->j6(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-super {p0}, Lcom/aide/ui/ThemedActionbarActivity;->onDestroy()V

    .line 348
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->aM:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->j3:Lcom/aide/ui/MainActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    invoke-static {}, Lcom/aide/ui/e;->aM()Lov;

    move-result-object v0

    invoke-virtual {v0, p0}, Lov;->DW(Lov$a;)V

    .line 351
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->tp()V

    .line 352
    invoke-static {p0, p0}, Lcom/aide/ui/h;->DW(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 354
    invoke-static {}, Lcom/aide/ui/e;->we()V

    .line 355
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->DW:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;)V

    .line 1255
    invoke-super {p0, p1, p2}, Lcom/aide/ui/ThemedActionbarActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1261
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->gn()V

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->DW:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;)V

    .line 1266
    invoke-super {p0, p1, p2}, Lcom/aide/ui/ThemedActionbarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string/jumbo v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/aide/common/e;->j6(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 262
    if-eqz p1, :cond_1

    const-string/jumbo v0, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const-string/jumbo v0, "Shown from trainer notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v0, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    const-string/jumbo v0, "Shown from promo notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 273
    invoke-static {p0}, Lcom/aide/ui/q;->Hw(Landroid/app/Activity;)V

    goto :goto_0

    .line 275
    :cond_3
    if-eqz p1, :cond_4

    const-string/jumbo v0, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    const-string/jumbo v0, "Shown from gcm notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/ui/q;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_4
    if-eqz p1, :cond_5

    const-string/jumbo v0, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    .line 281
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 283
    const-string/jumbo v0, "Shown from upgrade notification"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->DW(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 286
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 287
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 289
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 290
    invoke-static {p0, v0}, Loy;->j6(Landroid/app/Activity;Landroid/content/IntentSender;)V

    goto :goto_0

    .line 292
    :cond_6
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 293
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_SHOWN_FROM_NOTIFICATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 295
    invoke-static {}, Lcom/aide/ui/e;->aM()Lov;

    move-result-object v0

    invoke-virtual {v0}, Lov;->FH()I

    move-result v0

    if-lez v0, :cond_7

    .line 296
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->yS()V

    .line 297
    :cond_7
    invoke-static {}, Lcom/aide/ui/e;->U2()Lcom/aide/ui/build/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/a;->DW()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/aide/ui/e;->U2()Lcom/aide/ui/build/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/a;->j6()Z

    move-result v0

    if-nez v0, :cond_8

    .line 298
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->dx()V

    goto/16 :goto_0

    .line 299
    :cond_8
    invoke-static {}, Lcom/aide/ui/e;->ei()Lcom/aide/ui/scm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/scm/b;->Hw()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 300
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sG()V

    goto/16 :goto_0

    .line 301
    :cond_9
    invoke-static {}, Lcom/aide/ui/e;->nw()Lns;

    move-result-object v0

    invoke-virtual {v0}, Lns;->VH()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V

    goto/16 :goto_0

    .line 304
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 306
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 308
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 309
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "NavigateFile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 311
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "NavigateLine"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 312
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "NavigateColumn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 313
    new-instance v0, Lpz;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "NavigateFile"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lpz;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Lpz;)V

    goto/16 :goto_0

    .line 316
    :cond_c
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1613
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 1615
    invoke-static {}, Lcom/aide/ui/e;->QX()Lpm;

    move-result-object v1

    invoke-virtual {v1}, Lpm;->vy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    .line 1633
    :cond_0
    :goto_0
    return v0

    .line 1619
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/aide/ui/f;->j6(I)Lqd;

    move-result-object v1

    .line 1620
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lqd;->g_()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Main Menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 1623
    invoke-interface {v1}, Lqd;->DW()Z

    goto :goto_0

    .line 1626
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/aide/ui/f;->DW(I)Lpr;

    move-result-object v1

    .line 1627
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lpr;->h_()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Action bar command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lpr;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 1630
    invoke-interface {v1}, Lpr;->DW()Z

    goto :goto_0

    .line 1633
    :cond_3
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    const-string/jumbo v0, "onPause"

    invoke-static {p0, v0}, Lcom/aide/common/e;->j6(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget v0, p0, Lcom/aide/ui/MainActivity;->XL:I

    if-lez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lpe;->j6(ZZ)V

    .line 333
    :cond_0
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-static {}, Lcom/aide/ui/e;->EQ()Lcom/aide/ui/trainer/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/b;->FH()V

    .line 336
    :cond_1
    iput-boolean v2, p0, Lcom/aide/ui/MainActivity;->QX:Z

    .line 338
    invoke-super {p0}, Lcom/aide/ui/ThemedActionbarActivity;->onPause()V

    .line 339
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    .line 1550
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1552
    invoke-static {}, Lcom/aide/ui/e;->J0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1554
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/Menu;)V

    .line 1556
    invoke-static {p0}, Lcom/aide/common/d;->j6(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    const v0, 0x7f0d0166

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1559
    if-eqz v2, :cond_0

    .line 1561
    invoke-static {p0}, Lcom/aide/common/d;->u7(Landroid/content/Context;)F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/ui/p;

    if-eqz v0, :cond_1

    .line 1567
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/ui/p;

    invoke-virtual {v0}, Lcom/aide/ui/p;->FH()V

    .line 1568
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/ui/k;

    invoke-virtual {v0}, Lcom/aide/ui/k;->FH()V

    .line 1572
    :cond_1
    return v1

    .line 1561
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 412
    invoke-super {p0}, Lcom/aide/ui/ThemedActionbarActivity;->onResume()V

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->QX:Z

    .line 416
    iget-object v1, p0, Lcom/aide/ui/MainActivity;->tp:Ljava/lang/Object;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->EQ:Z

    if-eqz v0, :cond_1

    .line 423
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lpe;->j6(ZZ)V

    .line 424
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V

    .line 434
    :goto_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->u7()V

    .line 436
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->gn()Z

    .line 439
    :cond_0
    return-void

    .line 419
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 428
    :cond_1
    invoke-static {}, Lcom/aide/ui/e;->nw()Lns;

    move-result-object v0

    invoke-virtual {v0}, Lns;->FH()V

    .line 429
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vJ()V

    .line 431
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->BT()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    const-string/jumbo v0, "dummy"

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 361
    const-string/jumbo v0, "send_analytics_data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 363
    invoke-static {}, Lcom/aide/analytics/a;->DW()V

    .line 370
    :goto_0
    invoke-static {}, Lcom/aide/ui/h;->VH()I

    move-result v0

    iput v0, p0, Lcom/aide/ui/MainActivity;->XL:I

    .line 372
    const-string/jumbo v0, "user_androidjar"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "user_m2repositories"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    invoke-static {}, Lcom/aide/ui/e;->a8()Lph;

    move-result-object v0

    invoke-virtual {v0}, Lph;->j3()V

    .line 375
    :cond_1
    invoke-static {}, Lcom/aide/ui/e;->XL()Lou;

    move-result-object v0

    invoke-virtual {v0}, Lou;->Hw()V

    .line 377
    sget-object v0, Lcom/aide/ui/e;->j6:Ljava/lang/String;

    const-string/jumbo v2, "com.aide.web"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ro()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/LogCatBrowser;->J8()V

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/aide/ui/h;->sh()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    .line 383
    const-string/jumbo v0, "light_theme"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "app_language"

    .line 384
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "editor_tabs"

    .line 385
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "send_analytics_data"

    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    :cond_3
    iput-boolean v1, p0, Lcom/aide/ui/MainActivity;->EQ:Z

    .line 389
    :cond_4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->EQ()V

    .line 390
    const-string/jumbo v0, "editor_font_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->we()V

    .line 392
    :cond_5
    return-void

    .line 367
    :cond_6
    const-string/jumbo v0, "Setting changed"

    const-string/jumbo v2, "key"

    invoke-static {v2, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/aide/analytics/a;->j6(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 381
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2019
    invoke-super {p0}, Lcom/aide/ui/ThemedActionbarActivity;->onStart()V

    .line 2020
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2021
    const-string/jumbo v0, "isPremiumKeyInstalled"

    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v4

    invoke-virtual {v4}, Lpb;->gn()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    const-string/jumbo v0, "isPremium"

    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v4

    invoke-virtual {v4}, Lpb;->FH()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    const-string/jumbo v4, "isPremiumHacked"

    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->gn()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v0

    invoke-virtual {v0}, Lpb;->FH()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    const-string/jumbo v0, "isUiBuilderKeyInstalled"

    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v4

    invoke-virtual {v4}, Lpb;->Mr()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    const-string/jumbo v0, "isUiBuilderLicensed"

    invoke-static {}, Lcom/aide/ui/e;->Mr()Lpb;

    move-result-object v4

    invoke-virtual {v4}, Lpb;->j3()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    const-string/jumbo v0, "Main"

    invoke-static {p0, v0, v3}, Lcom/aide/analytics/a;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    .line 2040
    invoke-static {}, Lcom/aide/ui/e;->Zo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    invoke-static {}, Lcom/aide/ui/e;->VH()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "Trainer view"

    :goto_1
    invoke-static {v0}, Lcom/aide/analytics/a;->j6(Ljava/lang/String;)V

    .line 2047
    :cond_0
    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2048
    if-nez v0, :cond_1

    const-string/jumbo v0, "unknown"

    .line 2055
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/aide/ui/e;->ef()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2058
    const-string/jumbo v0, "x86"

    .line 2061
    :cond_2
    const-string/jumbo v3, "Session data"

    invoke-static {v3, v1, v0}, Lcom/aide/analytics/a;->j6(Ljava/lang/String;ILjava/lang/String;)V

    .line 2062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CPU arch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 2063
    invoke-static {p0}, Lcom/aide/common/d;->DW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2065
    const-string/jumbo v0, "Android TV detected"

    invoke-static {v0}, Lcom/aide/analytics/a;->DW(Ljava/lang/String;)V

    .line 2068
    :cond_3
    const-string/jumbo v0, "installreferrerdata"

    invoke-virtual {p0, v0, v2}, Lcom/aide/ui/MainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 2069
    const-string/jumbo v2, "AIDE installed"

    invoke-static {v2, v0}, Lcom/aide/analytics/a;->j6(Ljava/lang/String;Ljava/io/File;)V

    .line 2070
    sget-object v2, Lcom/aide/ui/e;->j6:Ljava/lang/String;

    const-string/jumbo v3, "com.aide.phonegap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2072
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2073
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.aide.premium.key"

    .line 2072
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2074
    const-string/jumbo v0, "AIDE Premium Key installed"

    invoke-static {v0, v2}, Lcom/aide/analytics/a;->j6(Ljava/lang/String;Ljava/io/File;)V

    .line 2076
    :cond_4
    iput-boolean v1, p0, Lcom/aide/ui/MainActivity;->Ws:Z

    .line 2081
    return-void

    :cond_5
    move v0, v2

    .line 2023
    goto/16 :goto_0

    .line 2042
    :cond_6
    const-string/jumbo v0, "Expert view"

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 2086
    invoke-super {p0}, Lcom/aide/ui/ThemedActionbarActivity;->onStop()V

    .line 2087
    const-string/jumbo v0, "Main"

    invoke-static {p0, v0}, Lcom/aide/analytics/a;->DW(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->Ws:Z

    .line 2102
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 1415
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1416
    invoke-super {p0}, Lcom/aide/ui/ThemedActionbarActivity;->onUserLeaveHint()V

    .line 1417
    return-void
.end method

.method public rN()V
    .locals 2

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1743
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->j6:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V

    .line 1744
    return-void
.end method

.method public recreate()V
    .locals 0

    .prologue
    .line 2205
    invoke-static {}, Lcom/aide/common/m;->j6()V

    .line 2206
    invoke-super {p0}, Lcom/aide/ui/ThemedActionbarActivity;->recreate()V

    .line 2207
    return-void
.end method

.method public ro()Lcom/aide/ui/browsers/LogCatBrowser;
    .locals 1

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getLogCatBrowser()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v0

    return-object v0
.end method

.method public sG()V
    .locals 1

    .prologue
    .line 1882
    new-instance v0, Lno;

    invoke-direct {v0}, Lno;-><init>()V

    invoke-static {p0, v0}, Lcom/aide/common/m;->j6(Landroid/app/Activity;Lcom/aide/common/m;)V

    .line 1883
    return-void
.end method

.method public sh()Lcom/aide/ui/AIDEEditorPager;
    .locals 1

    .prologue
    .line 1860
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditorPager;

    return-object v0
.end method

.method public sy()Z
    .locals 1

    .prologue
    .line 2111
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->Ws:Z

    return v0
.end method

.method public tp()Z
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/ui/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/ui/p;

    invoke-virtual {v0}, Lcom/aide/ui/p;->j6()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/ui/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/ui/k;

    .line 1194
    invoke-virtual {v0}, Lcom/aide/ui/k;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1193
    :goto_0
    return v0

    .line 1194
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u7()V
    .locals 1

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->lg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->invalidateOptionsMenu()V

    .line 1177
    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Xa()V

    .line 1178
    return-void
.end method

.method public v5(Z)V
    .locals 2

    .prologue
    .line 1669
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/MainActivity;->v5(I)V

    .line 1671
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->cn()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/aide/ui/MainActivity$8;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V

    .line 1681
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->j3()V

    .line 1683
    :cond_0
    return-void
.end method

.method public v5()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->J8:Z

    return v0
.end method

.method public vJ()V
    .locals 2

    .prologue
    .line 1902
    invoke-static {}, Lcom/aide/ui/e;->tp()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1904
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpe;->j6(Z)V

    .line 1906
    :cond_0
    return-void
.end method

.method public vy()V
    .locals 2

    .prologue
    .line 1792
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1793
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->Hw:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V

    .line 1794
    return-void
.end method

.method public we()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Hw:Lcom/aide/common/p;

    invoke-virtual {v0}, Lcom/aide/common/p;->j6()V

    .line 1329
    return-void
.end method

.method public x9()V
    .locals 6

    .prologue
    .line 1939
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v5

    .line 1940
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1941
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    .line 1943
    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 1944
    invoke-static {v3}, Lqa;->Zo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1945
    invoke-static {}, Lcom/aide/ui/e;->j3()Lpe;

    move-result-object v4

    invoke-virtual {v4, v3}, Lpe;->DW(Ljava/lang/String;)Lpe$a;

    move-result-object v3

    invoke-interface {v3}, Lpe$a;->gn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " *"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1949
    :cond_1
    invoke-static {}, Lcom/aide/ui/e;->u7()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string/jumbo v1, "Open Files"

    const-string/jumbo v3, "Close Files..."

    new-instance v4, Lcom/aide/ui/MainActivity$11;

    invoke-direct {v4, p0, v5}, Lcom/aide/ui/MainActivity$11;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    new-instance v5, Lcom/aide/ui/MainActivity$13;

    invoke-direct {v5, p0}, Lcom/aide/ui/MainActivity$13;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static/range {v0 .. v5}, Lcom/aide/common/m;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/y;Ljava/lang/Runnable;)V

    .line 1963
    return-void
.end method

.method public yS()V
    .locals 2

    .prologue
    .line 1754
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sh()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->QX()V

    .line 1755
    sget v0, Lcom/aide/ui/browsers/BrowserPager;->DW:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V

    .line 1756
    return-void
.end method

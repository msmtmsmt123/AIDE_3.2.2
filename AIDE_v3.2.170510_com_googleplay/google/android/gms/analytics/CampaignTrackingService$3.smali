.class Lcom/google/android/gms/analytics/CampaignTrackingService$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/CampaignTrackingService;->j6(Lcom/google/android/gms/analytics/internal/g;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DW:Lcom/google/android/gms/analytics/internal/g;

.field final synthetic FH:Lcom/google/android/gms/analytics/CampaignTrackingService;

.field final synthetic j6:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/CampaignTrackingService;ILcom/google/android/gms/analytics/internal/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$3;->FH:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iput p2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$3;->j6:I

    iput-object p3, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$3;->DW:Lcom/google/android/gms/analytics/internal/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$3;->FH:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iget v1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$3;->j6:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/CampaignTrackingService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$3;->DW:Lcom/google/android/gms/analytics/internal/g;

    const-string/jumbo v2, "Install campaign broadcast processed"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/analytics/internal/g;->j6(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

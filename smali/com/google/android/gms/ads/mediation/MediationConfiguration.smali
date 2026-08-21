###### Class com.google.android.gms.ads.mediation.MediationConfiguration (com.google.android.gms.ads.mediation.MediationConfiguration)
.class public Lcom/google/android/gms/ads/mediation/MediationConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzeik:Landroid/os/Bundle;

.field private final zzeio:Lcom/google/android/gms/ads/AdFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeio:Lcom/google/android/gms/ads/AdFormat;

    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeik:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/google/android/gms/ads/AdFormat;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeio:Lcom/google/android/gms/ads/AdFormat;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->zzeik:Landroid/os/Bundle;

    return-object v0
.end method

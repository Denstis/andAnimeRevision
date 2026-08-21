###### Class com.google.android.gms.ads.mediation.MediationAdapter (com.google.android.gms.ads.mediation.MediationAdapter)
.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
    }
.end annotation


# virtual methods
.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

###### Class com.google.android.gms.ads.mediation.MediationAdapter.zza (com.google.android.gms.ads.mediation.MediationAdapter$zza)
.class public final Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzein:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaaz()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzein:I

    const-string v2, "capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final zzdc(I)Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
    .registers 2

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzein:I

    return-object p0
.end method

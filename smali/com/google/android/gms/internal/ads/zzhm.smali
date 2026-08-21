###### Class com.google.android.gms.internal.ads.zzhm (com.google.android.gms.internal.ads.zzhm)
.class final Lcom/google/android/gms/internal/ads/zzhm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahd:Lcom/google/android/gms/internal/ads/zzhj;

.field private final synthetic zzahj:Lcom/google/android/gms/internal/ads/zzil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhj;Lcom/google/android/gms/internal/ads/zzil;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzahj:Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzahj:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhj;->zza(Lcom/google/android/gms/internal/ads/zzhj;)Lcom/google/android/gms/internal/ads/zzhg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhm;->zzahj:Lcom/google/android/gms/internal/ads/zzil;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhg;->zzb(Lcom/google/android/gms/internal/ads/zzil;)V

    return-void
.end method

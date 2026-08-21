###### Class com.google.android.gms.internal.ads.zzhp (com.google.android.gms.internal.ads.zzhp)
.class final Lcom/google/android/gms/internal/ads/zzhp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahd:Lcom/google/android/gms/internal/ads/zzhj;

.field private final synthetic zzajp:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhj;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzajp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhj;->zza(Lcom/google/android/gms/internal/ads/zzhj;)Lcom/google/android/gms/internal/ads/zzhg;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhp;->zzajp:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhg;->zzq(I)V

    return-void
.end method

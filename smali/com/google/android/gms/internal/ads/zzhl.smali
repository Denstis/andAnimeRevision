###### Class com.google.android.gms.internal.ads.zzhl (com.google.android.gms.internal.ads.zzhl)
.class final Lcom/google/android/gms/internal/ads/zzhl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahd:Lcom/google/android/gms/internal/ads/zzhj;

.field private final synthetic zzahg:Ljava/lang/String;

.field private final synthetic zzahh:J

.field private final synthetic zzahi:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhj;Ljava/lang/String;JJ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhj;->zza(Lcom/google/android/gms/internal/ads/zzhj;)Lcom/google/android/gms/internal/ads/zzhg;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahh:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzhl;->zzahi:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhg;->zza(Ljava/lang/String;JJ)V

    return-void
.end method

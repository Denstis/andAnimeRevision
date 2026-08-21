###### Class com.google.android.gms.internal.ads.zzhn (com.google.android.gms.internal.ads.zzhn)
.class final Lcom/google/android/gms/internal/ads/zzhn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahd:Lcom/google/android/gms/internal/ads/zzhj;

.field private final synthetic zzahk:I

.field private final synthetic zzahl:J

.field private final synthetic zzahm:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhj;IJJ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahk:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahl:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahm:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahd:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhj;->zza(Lcom/google/android/gms/internal/ads/zzhj;)Lcom/google/android/gms/internal/ads/zzhg;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahk:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahl:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzahm:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzhg;->zza(IJJ)V

    return-void
.end method

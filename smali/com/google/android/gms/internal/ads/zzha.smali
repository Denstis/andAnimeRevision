###### Class com.google.android.gms.internal.ads.zzha (com.google.android.gms.internal.ads.zzha)
.class public final Lcom/google/android/gms/internal/ads/zzha;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public zzadn:Ljava/lang/Object;

.field public zzaet:I

.field private zzagg:Ljava/lang/Object;

.field public zzagh:J

.field private zzagi:Z

.field private zzagj:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzha;
    .registers 9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzagg:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzha;->zzadn:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzaet:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzha;->zzagh:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzha;->zzagj:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzha;->zzagi:Z

    return-object p0
.end method

.method public final zzer()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzha;->zzagj:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzga;->zzdg(J)J

    move-result-wide v0

    return-wide v0
.end method

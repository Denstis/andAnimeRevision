###### Class com.google.android.gms.internal.ads.zzaz (com.google.android.gms.internal.ads.zzaz)
.class public Lcom/google/android/gms/internal/ads/zzaz;
.super Lcom/google/android/gms/internal/ads/zzdvl;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static zzcp:Lcom/google/android/gms/internal/ads/zzdvt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvt;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdvt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaz;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvn;Lcom/google/android/gms/internal/ads/zzba;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvl;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->size()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdvl;->zza(Lcom/google/android/gms/internal/ads/zzdvn;JLcom/google/android/gms/internal/ads/zzba;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdvn;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "model("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

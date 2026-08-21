###### Class com.google.android.gms.internal.ads.zzaap (com.google.android.gms.internal.ads.zzaap)
.class public final Lcom/google/android/gms/internal/ads/zzaap;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zzcve:Lcom/google/android/gms/internal/ads/zzaak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaak<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzcvf:Lcom/google/android/gms/internal/ads/zzaak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaak<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static zzcvg:Lcom/google/android/gms/internal/ads/zzaak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaak<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzcvh:Lcom/google/android/gms/internal/ads/zzaak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaak<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzcvi:Lcom/google/android/gms/internal/ads/zzaak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaak<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    const-string v1, "gads:consent:gmscore:dsid:enabled"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaam;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaap;->zzcve:Lcom/google/android/gms/internal/ads/zzaak;

    const-string v1, "gads:consent:gmscore:lat:enabled"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaam;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaap;->zzcvf:Lcom/google/android/gms/internal/ads/zzaak;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaam;

    sget v2, Lcom/google/android/gms/internal/ads/zzaan;->zzcvc:I

    const-string v3, "gads:consent:gmscore:backend_url"

    const-string v4, "https://adrervice.google.com/getconfig/pubvendors"

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaap;->zzcvg:Lcom/google/android/gms/internal/ads/zzaak;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaam;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzaan;->zzcva:I

    const-string v4, "gads:consent:gmscore:time_out"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaap;->zzcvh:Lcom/google/android/gms/internal/ads/zzaak;

    const-string v1, "gads:consent:gmscore:enabled"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaam;->zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaak;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaap;->zzcvi:Lcom/google/android/gms/internal/ads/zzaak;

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/ads/zzaaq;)V
    .registers 1

    return-void
.end method

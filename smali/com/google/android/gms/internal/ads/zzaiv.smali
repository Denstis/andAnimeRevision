###### Class com.google.android.gms.internal.ads.zzaiv (com.google.android.gms.internal.ads.zzaiv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzaiv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzair;


# static fields
.field static final zzdba:Lcom/google/android/gms/internal/ads/zzair;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzdba:Lcom/google/android/gms/internal/ads/zzair;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzais;->zze(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

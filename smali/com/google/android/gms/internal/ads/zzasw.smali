###### Class com.google.android.gms.internal.ads.zzasw (com.google.android.gms.internal.ads.zzasw)
.class final synthetic Lcom/google/android/gms/internal/ads/zzasw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatc;


# static fields
.field static final zzdpu:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzasw;->zzdpu:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbeb;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getGmpAppId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

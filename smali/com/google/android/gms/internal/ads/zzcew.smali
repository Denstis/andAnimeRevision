###### Class com.google.android.gms.internal.ads.zzcew (com.google.android.gms.internal.ads.zzcew)
.class public final Lcom/google/android/gms/internal/ads/zzcew;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzfvn:Lcom/google/android/gms/internal/ads/zzaiq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaiq<",
            "Lcom/google/android/gms/internal/ads/zzcew;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzfvk:Lcom/google/android/gms/internal/ads/zzcfd;

.field public final zzfvl:Lorg/json/JSONObject;

.field public final zzfvm:Lcom/google/android/gms/internal/ads/zzapk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcez;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcew;->zzfvn:Lcom/google/android/gms/internal/ads/zzaiq;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfd;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzapk;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcew;->zzfvk:Lcom/google/android/gms/internal/ads/zzcfd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcew;->zzfvl:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcew;->zzfvm:Lcom/google/android/gms/internal/ads/zzapk;

    return-void
.end method

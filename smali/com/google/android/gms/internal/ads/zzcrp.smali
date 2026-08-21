###### Class com.google.android.gms.internal.ads.zzcrp (com.google.android.gms.internal.ads.zzcrp)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcrp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# static fields
.field static final zzggf:Lcom/google/android/gms/internal/ads/zzcrr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcrp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcrp;->zzggf:Lcom/google/android/gms/internal/ads/zzcrr;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "sdk_prefetch"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

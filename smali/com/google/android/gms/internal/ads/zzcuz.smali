###### Class com.google.android.gms.internal.ads.zzcuz (com.google.android.gms.internal.ads.zzcuz)
.class public final Lcom/google/android/gms/internal/ads/zzcuz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdwb<",
        "Lcom/google/android/gms/internal/ads/zzcui;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzgib:Lcom/google/android/gms/internal/ads/zzcuz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcuz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgib:Lcom/google/android/gms/internal/ads/zzcuz;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzamu()Lcom/google/android/gms/internal/ads/zzcuz;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcuz;->zzgib:Lcom/google/android/gms/internal/ads/zzcuz;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcui;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcui;-><init>()V

    return-object v0
.end method

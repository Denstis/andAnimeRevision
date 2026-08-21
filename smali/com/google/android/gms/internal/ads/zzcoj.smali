###### Class com.google.android.gms.internal.ads.zzcoj (com.google.android.gms.internal.ads.zzcoj)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcoj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdal;


# static fields
.field static final zzdos:Lcom/google/android/gms/internal/ads/zzdal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcoj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcoj;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcom;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcom;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcom (com.google.android.gms.internal.ads.zzcom)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcom;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# instance fields
.field private final zzgei:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgei:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcom;->zzgei:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "android_permissions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

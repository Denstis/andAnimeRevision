###### Class com.google.android.gms.internal.ads.zzbel (com.google.android.gms.internal.ads.zzbel)
.class public Lcom/google/android/gms/internal/ads/zzbel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbel$zza;
    }
.end annotation


# instance fields
.field private final zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzeju:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlk:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbel$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbel$zza;->zza(Lcom/google/android/gms/internal/ads/zzbel$zza;)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbel$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzlk:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbel$zza;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeju:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbel$zza;Lcom/google/android/gms/internal/ads/zzbek;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbel;-><init>(Lcom/google/android/gms/internal/ads/zzbel$zza;)V

    return-void
.end method


# virtual methods
.method final zzabp()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzlk:Landroid/content/Context;

    return-object v0
.end method

.method final zzabq()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzeju:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method final zzabr()Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object v0
.end method

.method final zzabs()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzlk:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaul;->zzr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzbel.zza (com.google.android.gms.internal.ads.zzbel$zza)
.class public final Lcom/google/android/gms/internal/ads/zzbel$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

.field private zzeju:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private zzzc:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbel$zza;)Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbel$zza;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzzc:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbel$zza;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzeju:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaxl;)Lcom/google/android/gms/internal/ads/zzbel$zza;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object p0
.end method

.method public final zzbs(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbel$zza;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzeju:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbel$zza;->zzzc:Landroid/content/Context;

    return-object p0
.end method

###### Class com.google.android.gms.internal.ads.zzbfs (com.google.android.gms.internal.ads.zzbfs)
.class final Lcom/google/android/gms/internal/ads/zzbfs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcvm;


# instance fields
.field private final synthetic zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

.field private zzezd:Landroid/content/Context;

.field private zzeze:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbez;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfs;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method


# virtual methods
.method public final zzadm()Lcom/google/android/gms/internal/ads/zzcvj;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzezd:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzezd:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeze:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbez;)V

    return-object v0
.end method

.method public final synthetic zzbt(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvm;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzezd:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zzfm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcvm;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfs;->zzeze:Ljava/lang/String;

    return-object p0
.end method

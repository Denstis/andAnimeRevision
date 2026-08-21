###### Class com.google.android.gms.internal.ads.zzbfv (com.google.android.gms.internal.ads.zzbfv)
.class final Lcom/google/android/gms/internal/ads/zzbfv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcmy;


# instance fields
.field private zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

.field private final synthetic zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

.field private zzezp:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbez;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfv;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcmy;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzezp:Lcom/google/android/gms/internal/ads/zzcnc;

    return-object p0
.end method

.method public final zzado()Lcom/google/android/gms/internal/ads/zzcmz;
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzezp:Lcom/google/android/gms/internal/ads/zzcnc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzezp:Lcom/google/android/gms/internal/ads/zzcnc;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbli;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbli;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcbx;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcbx;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcxa;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcxa;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzbfy;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzcnc;Lcom/google/android/gms/internal/ads/zzbli;Lcom/google/android/gms/internal/ads/zzcbx;Lcom/google/android/gms/internal/ads/zzbmk;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/android/gms/internal/ads/zzbez;)V

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzcmy;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbmk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfv;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    return-object p0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzcmy;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

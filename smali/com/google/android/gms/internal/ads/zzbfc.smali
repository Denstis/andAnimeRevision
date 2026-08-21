###### Class com.google.android.gms.internal.ads.zzbfc (com.google.android.gms.internal.ads.zzbfc)
.class final Lcom/google/android/gms/internal/ads/zzbfc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtk;


# instance fields
.field private zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

.field private zzelt:Lcom/google/android/gms/internal/ads/zzbth;

.field private final synthetic zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

.field private zzerr:Lcom/google/android/gms/internal/ads/zzbpn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbez;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzbtk;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbmk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbtk;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbpn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbth;)Lcom/google/android/gms/internal/ads/zzbtk;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbth;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    return-object p0
.end method

.method public final zzacd()Lcom/google/android/gms/internal/ads/zzbtl;
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbpn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbth;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzelt:Lcom/google/android/gms/internal/ads/zzbth;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbli;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbli;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcws;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcws;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbmf;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbmf;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcbx;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcbx;-><init>()V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzbfc;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcxa;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzcxa;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzbfb;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbth;Lcom/google/android/gms/internal/ads/zzbli;Lcom/google/android/gms/internal/ads/zzcws;Lcom/google/android/gms/internal/ads/zzbmf;Lcom/google/android/gms/internal/ads/zzcbx;Lcom/google/android/gms/internal/ads/zzbpn;Lcom/google/android/gms/internal/ads/zzbmk;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/android/gms/internal/ads/zzbez;)V

    return-object v0
.end method

.method public final synthetic zzace()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzacd()Lcom/google/android/gms/internal/ads/zzbtl;

    move-result-object v0

    return-object v0
.end method

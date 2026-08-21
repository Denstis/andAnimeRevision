###### Class com.google.android.gms.internal.ads.zzbfn (com.google.android.gms.internal.ads.zzbfn)
.class final Lcom/google/android/gms/internal/ads/zzbfn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsr;


# instance fields
.field private zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

.field private final synthetic zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

.field private zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

.field private zzewq:Lcom/google/android/gms/internal/ads/zzcle;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbez;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbfn;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzace()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzadf()Lcom/google/android/gms/internal/ads/zzbso;

    move-result-object v0

    return-object v0
.end method

.method public final zzadf()Lcom/google/android/gms/internal/ads/zzbso;
    .registers 16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbpn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzerq:Lcom/google/android/gms/internal/ads/zzbfa;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbli;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbli;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcws;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcws;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbmf;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbmf;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcbx;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcbx;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcxa;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzcxa;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzbli;Lcom/google/android/gms/internal/ads/zzcws;Lcom/google/android/gms/internal/ads/zzbmf;Lcom/google/android/gms/internal/ads/zzcbx;Lcom/google/android/gms/internal/ads/zzbpn;Lcom/google/android/gms/internal/ads/zzbmk;Lcom/google/android/gms/internal/ads/zzcxa;Lcom/google/android/gms/internal/ads/zzcle;Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/android/gms/internal/ads/zzbez;)V

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcle;)Lcom/google/android/gms/internal/ads/zzbsr;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcle;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzewq:Lcom/google/android/gms/internal/ads/zzcle;

    return-object p0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbmk;)Lcom/google/android/gms/internal/ads/zzbsr;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbmk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzelq:Lcom/google/android/gms/internal/ads/zzbmk;

    return-object p0
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbpn;)Lcom/google/android/gms/internal/ads/zzbsr;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwh;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbpn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfn;->zzerr:Lcom/google/android/gms/internal/ads/zzbpn;

    return-object p0
.end method

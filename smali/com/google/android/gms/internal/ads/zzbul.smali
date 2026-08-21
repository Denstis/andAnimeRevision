###### Class com.google.android.gms.internal.ads.zzbul (com.google.android.gms.internal.ads.zzbul)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbul;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfla:Lcom/google/android/gms/internal/ads/zzbuz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbuz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzfla:Lcom/google/android/gms/internal/ads/zzbuz;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbuz;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbul;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbul;-><init>(Lcom/google/android/gms/internal/ads/zzbuz;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbul;->zzfla:Lcom/google/android/gms/internal/ads/zzbuz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbuz;->zzahf()V

    return-void
.end method

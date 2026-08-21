###### Class com.google.android.gms.internal.ads.zzcej (com.google.android.gms.internal.ads.zzcej)
.class final Lcom/google/android/gms/internal/ads/zzcej;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpc;


# instance fields
.field private final zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;)V
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjy:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvt;->zzdlq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzlk:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkg:Lcom/google/android/gms/internal/ads/zztx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzbnf:Lcom/google/android/gms/internal/ads/zzasl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzlk:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjy:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvt;->zzdlq:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzasl;->zzj(Landroid/content/Context;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzape;)V
    .registers 2

    return-void
.end method

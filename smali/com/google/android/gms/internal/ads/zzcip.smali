###### Class com.google.android.gms.internal.ads.zzcip (com.google.android.gms.internal.ads.zzcip)
.class public final Lcom/google/android/gms/internal/ads/zzcip;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcgh<",
        "Lcom/google/android/gms/internal/ads/zzbuj;",
        "Lcom/google/android/gms/internal/ads/zzcwm;",
        "Lcom/google/android/gms/internal/ads/zzchk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfbx:Ljava/util/concurrent/Executor;

.field private final zzfyt:Lcom/google/android/gms/internal/ads/zzbtl;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbtl;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzfyt:Lcom/google/android/gms/internal/ads/zzbtl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzfbx:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzcvz;I)Z
    .registers 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgki:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcgf;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcvz;",
            "Lcom/google/android/gms/internal/ads/zzcvr;",
            "Lcom/google/android/gms/internal/ads/zzcgf<",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchk;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcwm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzlk:Landroid/content/Context;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkg:Lcom/google/android/gms/internal/ads/zztx;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjh:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgje:Lcom/google/android/gms/internal/ads/zzcvv;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzawg;->zza(Lcom/google/android/gms/internal/ads/zzawh;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzakd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzgki:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcwm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zztx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzakd;Lcom/google/android/gms/internal/ads/zzaay;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcgf;)Ljava/lang/Object;
    .registers 11

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwm;->zzrp()Lcom/google/android/gms/internal/ads/zzakg;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcwm;->zzrq()Lcom/google/android/gms/internal/ads/zzakl;

    move-result-object v1

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwm;->zzrv()Lcom/google/android/gms/internal/ads/zzakm;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eqz v2, :cond_27

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcip;->zza(Lcom/google/android/gms/internal/ads/zzcvz;I)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbur;->zzb(Lcom/google/android/gms/internal/ads/zzakm;)Lcom/google/android/gms/internal/ads/zzbur;

    move-result-object v4

    goto :goto_5c

    :cond_27
    if-eqz v0, :cond_34

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcip;->zza(Lcom/google/android/gms/internal/ads/zzcvz;I)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzb(Lcom/google/android/gms/internal/ads/zzakg;)Lcom/google/android/gms/internal/ads/zzbur;

    move-result-object v4

    goto :goto_5c

    :cond_34
    if-eqz v0, :cond_42

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzcip;->zza(Lcom/google/android/gms/internal/ads/zzcvz;I)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zza(Lcom/google/android/gms/internal/ads/zzakg;)Lcom/google/android/gms/internal/ads/zzbur;

    move-result-object v4

    goto :goto_5c

    :cond_42
    if-eqz v1, :cond_4f

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcip;->zza(Lcom/google/android/gms/internal/ads/zzcvz;I)Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzb(Lcom/google/android/gms/internal/ads/zzakl;)Lcom/google/android/gms/internal/ads/zzbur;

    move-result-object v4

    goto :goto_5c

    :cond_4f
    if-eqz v1, :cond_b1

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcip;->zza(Lcom/google/android/gms/internal/ads/zzcvz;I)Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbur;->zza(Lcom/google/android/gms/internal/ads/zzakl;)Lcom/google/android/gms/internal/ads/zzbur;

    move-result-object v4

    :goto_5c
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcwe;->zzgki:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbur;->zzahp()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzfyt:Lcom/google/android/gms/internal/ads/zzbtl;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbla;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzffi:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzbla;-><init>(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbvd;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzbvd;-><init>(Lcom/google/android/gms/internal/ads/zzbur;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbwc;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbwc;-><init>(Lcom/google/android/gms/internal/ads/zzakl;Lcom/google/android/gms/internal/ads/zzakg;Lcom/google/android/gms/internal/ads/zzakm;)V

    invoke-virtual {v3, v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzbtl;->zza(Lcom/google/android/gms/internal/ads/zzbla;Lcom/google/android/gms/internal/ads/zzbvd;Lcom/google/android/gms/internal/ads/zzbwc;)Lcom/google/android/gms/internal/ads/zzbus;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->zzack()Lcom/google/android/gms/internal/ads/zzckt;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzchk;->zza(Lcom/google/android/gms/internal/ads/zzakd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->zzacf()Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhb;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzbhb;-><init>(Lcom/google/android/gms/internal/ads/zzcwm;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcip;->zzfbx:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbuq;->zzacl()Lcom/google/android/gms/internal/ads/zzbuj;

    move-result-object p1

    return-object p1

    :cond_a9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcjh;

    const-string p2, "No corresponding native ad listener"

    invoke-direct {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_b1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcjh;

    const-string p2, "No native ad mappers"

    invoke-direct {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcjh;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzcgv (com.google.android.gms.internal.ads.zzcgv)
.class public final Lcom/google/android/gms/internal/ads/zzcgv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcgh<",
        "Lcom/google/android/gms/internal/ads/zzbio;",
        "Lcom/google/android/gms/internal/ads/zzcwm;",
        "Lcom/google/android/gms/internal/ads/zzchk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzfbx:Ljava/util/concurrent/Executor;

.field private final zzfxm:Lcom/google/android/gms/internal/ads/zzbjn;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzbjn;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzfxm:Lcom/google/android/gms/internal/ads/zzbjn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzfbx:Ljava/util/concurrent/Executor;

    return-void
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzlk:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjg:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwi;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzblh:Lcom/google/android/gms/internal/ads/zzaxl;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwf:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_2d

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzlk:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkg:Lcom/google/android/gms/internal/ads/zztx;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjh:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzcwm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Lcom/google/android/gms/internal/ads/zztx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzakd;)V

    return-void

    :cond_2d
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzlk:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgka:Lcom/google/android/gms/internal/ads/zzcvy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvy;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkg:Lcom/google/android/gms/internal/ads/zztx;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjh:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgje:Lcom/google/android/gms/internal/ads/zzcvv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawg;->zza(Lcom/google/android/gms/internal/ads/zzawh;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    move-object v8, p1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzakd;

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzcwm;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Lcom/google/android/gms/internal/ads/zztx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzakd;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzcgf;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzfxm:Lcom/google/android/gms/internal/ads/zzbjn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbla;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzffi:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbla;-><init>(Lcom/google/android/gms/internal/ads/zzcvz;Lcom/google/android/gms/internal/ads/zzcvr;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbiv;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwm;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcgu;->zza(Lcom/google/android/gms/internal/ads/zzcwm;)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v3

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjg:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcvu;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzbiv;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzbkl;Lcom/google/android/gms/internal/ads/zzcvu;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbjn;->zza(Lcom/google/android/gms/internal/ads/zzbla;Lcom/google/android/gms/internal/ads/zzbiv;)Lcom/google/android/gms/internal/ads/zzbir;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbir;->zzadd()Lcom/google/android/gms/internal/ads/zzbqv;

    move-result-object p2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwm;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbqv;->zzq(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->zzacf()Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhb;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzddv:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhb;-><init>(Lcom/google/android/gms/internal/ads/zzcwm;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgv;->zzfbx:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbpm;->zza(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcgf;->zzfxg:Lcom/google/android/gms/internal/ads/zzbnz;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzchk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkm;->zzack()Lcom/google/android/gms/internal/ads/zzckt;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzchk;->zza(Lcom/google/android/gms/internal/ads/zzakd;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbir;->zzadc()Lcom/google/android/gms/internal/ads/zzbio;

    move-result-object p1

    return-object p1
.end method

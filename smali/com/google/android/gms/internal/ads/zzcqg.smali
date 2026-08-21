###### Class com.google.android.gms.internal.ads.zzcqg (com.google.android.gms.internal.ads.zzcqg)
.class public final Lcom/google/android/gms/internal/ads/zzcqg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "Lcom/google/android/gms/internal/ads/zzcqd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdiv:Landroid/content/pm/PackageInfo;

.field private final zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzfoa:Lcom/google/android/gms/internal/ads/zzddl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddl;Lcom/google/android/gms/internal/ads/zzcwe;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzaui;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzdiv:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 10

    const/4 v0, 0x3

    const-string v1, "native_version"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "native_templates"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkj:Ljava/util/ArrayList;

    const-string v1, "native_custom_templates"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcog:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "landscape"

    const-string v2, "portrait"

    const-string v3, "any"

    const/4 v4, 0x2

    const-string v5, "unknown"

    const/4 v6, 0x1

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaay;->versionCode:I

    if-le p1, v0, :cond_61

    const-string p1, "enable_native_media_orientation"

    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaay;->zzbjw:I

    if-eq p1, v6, :cond_55

    if-eq p1, v4, :cond_53

    if-eq p1, v0, :cond_51

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4e

    move-object p1, v5

    goto :goto_56

    :cond_4e
    const-string p1, "square"

    goto :goto_56

    :cond_51
    move-object p1, v2

    goto :goto_56

    :cond_53
    move-object p1, v1

    goto :goto_56

    :cond_55
    move-object p1, v3

    :goto_56
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "native_media_orientation"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzaay;->zzbjv:I

    if-eqz p1, :cond_71

    if-eq p1, v6, :cond_6f

    if-eq p1, v4, :cond_72

    move-object v1, v5

    goto :goto_72

    :cond_6f
    move-object v1, v2

    goto :goto_72

    :cond_71
    move-object v1, v3

    :cond_72
    :goto_72
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7d

    const-string p1, "native_image_orientation"

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaay;->zzbjx:Z

    const-string v0, "native_multiple_images"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzdeh:Lcom/google/android/gms/internal/ads/zzaay;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzaay;->zzbka:Z

    const-string v0, "use_custom_mute"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzdiv:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_99

    const/4 p1, 0x0

    goto :goto_9b

    :cond_99
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_9b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaui;->zzvd()I

    move-result v0

    if-le p1, v0, :cond_ad

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaui;->zzvj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaui;->zzcm(I)V

    :cond_ad
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaui;->zzvi()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_c4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_c4

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c5

    :cond_c4
    const/4 p1, 0x0

    :goto_c5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "native_advanced_settings"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzgdf:I

    if-le p1, v6, :cond_db

    const-string v0, "max_num_ads"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_db
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwe;->zzdkl:Lcom/google/android/gms/internal/ads/zzagd;

    if-eqz p1, :cond_111

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzagd;->zzcyt:I

    const-string v0, "l"

    if-eq p1, v6, :cond_107

    if-eq p1, v4, :cond_105

    const/16 v1, 0x34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Instream ad video aspect ratio "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    goto :goto_107

    :cond_105
    const-string v0, "p"

    :cond_107
    :goto_107
    const-string p1, "ia_var"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "instr"

    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_111
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwe;->zzana()Lcom/google/android/gms/internal/ads/zzada;

    move-result-object p1

    if-eqz p1, :cond_11e

    const-string p1, "has_delayed_banner_listener"

    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_11e
    return-void
.end method

.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzcqd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfoa:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcqf;-><init>(Lcom/google/android/gms/internal/ads/zzcqg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzddl;->zzd(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzamc()Lcom/google/android/gms/internal/ads/zzcqd;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqg;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgki:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgfk:Lcom/google/android/gms/internal/ads/zzcqd;

    return-object v0

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgfk:Lcom/google/android/gms/internal/ads/zzcqd;

    return-object v0

    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzcqk;-><init>(Lcom/google/android/gms/internal/ads/zzcqg;Ljava/util/ArrayList;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzcqf (com.google.android.gms.internal.ads.zzcqf)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcqf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgfj:Lcom/google/android/gms/internal/ads/zzcqg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfj:Lcom/google/android/gms/internal/ads/zzcqg;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfj:Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqg;->zzamc()Lcom/google/android/gms/internal/ads/zzcqd;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcqk (com.google.android.gms.internal.ads.zzcqk)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcqk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqd;


# instance fields
.field private final zzgfj:Lcom/google/android/gms/internal/ads/zzcqg;

.field private final zzgfl:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqg;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgfj:Lcom/google/android/gms/internal/ads/zzcqg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgfl:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgfj:Lcom/google/android/gms/internal/ads/zzcqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqk;->zzgfl:Ljava/util/ArrayList;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zza(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcns (com.google.android.gms.internal.ads.zzcns)
.class public final Lcom/google/android/gms/internal/ads/zzcns;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwe;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the targeting must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    return-void
.end method


# virtual methods
.method public final synthetic zzr(Ljava/lang/Object;)V
    .registers 14

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkg:Lcom/google/android/gms/internal/ads/zztx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    const-string v2, "slotname"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcns;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkn:Ljava/util/Set;

    const-string v2, "new_rewarded"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    const-string v0, "is_new_rewarded"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1f
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyyMMdd"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcbx:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcbx:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :goto_3f
    const-string v4, "cust_age"

    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->extras:Landroid/os/Bundle;

    const-string v3, "extras"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcby:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcby:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_58

    const/4 v3, 0x1

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    :goto_59
    const-string v5, "cust_gender"

    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcbz:Ljava/util/List;

    const-string v3, "kw"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzabj:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zztx;->zzabj:I

    if-eq v3, v4, :cond_71

    const/4 v3, 0x1

    goto :goto_72

    :cond_71
    const/4 v3, 0x0

    :goto_72
    const-string v5, "tag_for_child_directed_treatment"

    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcca:Z

    if-eqz v0, :cond_80

    const-string v3, "test_request"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zztx;->versionCode:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_8f

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zztx;->zzbkg:Z

    if-eqz v3, :cond_8f

    const/4 v3, 0x1

    goto :goto_90

    :cond_8f
    const/4 v3, 0x0

    :goto_90
    const-string v6, "d_imp_hdr"

    invoke-static {p1, v6, v0, v3}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzccb:Ljava/lang/String;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zztx;->versionCode:I

    if-lt v3, v5, :cond_a3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a3

    const/4 v3, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v3, 0x0

    :goto_a4
    const-string v5, "ppid"

    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzng:Landroid/location/Location;

    if-eqz v0, :cond_10e

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    mul-long v5, v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double v8, v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double v8, v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v9, "radius"

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v3, "lat"

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v0, "long"

    invoke-virtual {v8, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v0, "time"

    invoke-virtual {v8, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "uule"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzccd:Ljava/lang/String;

    const-string v3, "url"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzccf:Landroid/os/Bundle;

    const-string v3, "custom_targeting"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzccg:Ljava/util/List;

    const-string v3, "category_exclusions"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcch:Ljava/lang/String;

    const-string v3, "request_agent"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzcci:Ljava/lang/String;

    const-string v3, "request_pkg"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzccj:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zztx;->versionCode:I

    const/4 v5, 0x7

    if-lt v3, v5, :cond_13e

    const/4 v3, 0x1

    goto :goto_13f

    :cond_13e
    const/4 v3, 0x0

    :goto_13f
    const-string v5, "is_designed_for_families"

    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zztx;->versionCode:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_162

    iget v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzabk:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zztx;->zzabk:I

    if-eq v3, v4, :cond_155

    goto :goto_156

    :cond_155
    const/4 v2, 0x0

    :goto_156
    const-string v3, "tag_for_under_age_of_consent"

    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zztx;->zzabl:Ljava/lang/String;

    const-string v1, "max_ad_content_rating"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_162
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbau (com.google.android.gms.internal.ads.zzbau)
.class public final Lcom/google/android/gms/internal/ads/zzbau;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Lcom/google/android/gms/internal/ads/zzazj;",
        ">;"
    }
.end annotation


# instance fields
.field private zzedc:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_43

    :try_start_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/content/Context;I)I

    move-result p3
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    goto :goto_43

    :catch_14
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Could not parse "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in a video GMSG: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :cond_43
    :goto_43
    return p3
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzayw;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzayw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "minBufferMs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "maxBufferMs"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bufferForPlaybackMs"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "socketReceiveBufferSize"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_31

    :try_start_2a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzayw;->zzcs(I)V

    :cond_31
    if-eqz v1, :cond_3a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzayw;->zzct(I)V

    :cond_3a
    if-eqz v2, :cond_43

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzayw;->zzcu(I)V

    :cond_43
    if-eqz v3, :cond_4c

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzayw;->zzcv(I)V

    :cond_4c
    if-eqz p1, :cond_68

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzayw;->zzcw(I)V
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_55} :catch_56

    goto :goto_68

    :catch_56
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v1, p0, p1

    const-string p1, "Could not parse buffer parameters in loadControl video GMSG: (%s, %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 14

    check-cast p1, Lcom/google/android/gms/internal/ads/zzazj;

    const-string v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    const-string p1, "Action missing from video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "google.afma.Notify_dt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video GMSG: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :cond_56
    const-string v1, "background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string v0, "color"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string p1, "Color parameter missing from color video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_72
    :try_start_72
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzazj;->setBackgroundColor(I)V
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_79} :catch_7a

    return-void

    :catch_7a
    const-string p1, "Invalid color parameter in video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_80
    const-string v1, "decoderProps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d1

    const-string v0, "mimeTypes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_9e

    const-string p2, "No MIME types specified for decoder properties inspection."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    const-string p2, "missingMimeTypes"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzayw;->zza(Lcom/google/android/gms/internal/ads/zzazj;Ljava/lang/String;)V

    return-void

    :cond_9e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_af

    const-string p2, "Video decoder properties available on API versions >= 16."

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    const-string p2, "deficientApiVersion"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzayw;->zza(Lcom/google/android/gms/internal/ads/zzazj;Ljava/lang/String;)V

    return-void

    :cond_af
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    :goto_bb
    if-ge v2, v1, :cond_cd

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaww;->zzem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    :cond_cd
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->zza(Lcom/google/android/gms/internal/ads/zzazj;Ljava/util/Map;)V

    return-void

    :cond_d1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->zzxk()Lcom/google/android/gms/internal/ads/zzazc;

    move-result-object v1

    if-nez v1, :cond_dd

    const-string p1, "Could not get underlay container for a video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_dd
    const-string v3, "new"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "position"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "y"

    const-string v6, "x"

    if-nez v3, :cond_2f8

    if-eqz v4, :cond_f3

    goto/16 :goto_2f8

    :cond_f3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->zzxl()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object v3

    const-string v4, "currentTime"

    if-eqz v3, :cond_140

    const-string v7, "timeupdate"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_134

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_111

    const-string p1, "currentTime parameter missing from timeupdate video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_111
    :try_start_111
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzbco;->zze(F)V
    :try_end_118
    .catch Ljava/lang/NumberFormatException; {:try_start_111 .. :try_end_118} :catch_119

    return-void

    :catch_119
    nop

    const-string p2, "Could not parse currentTime parameter from timeupdate video GMSG: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12b

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_130

    :cond_12b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_130
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_134
    const-string v7, "skip"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_140

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbco;->zzaap()V

    return-void

    :cond_140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazc;->zzxg()Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object v1

    if-nez v1, :cond_14a

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayw;->zzb(Lcom/google/android/gms/internal/ads/zzazj;)V

    return-void

    :cond_14a
    const-string v3, "click"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v6, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, p2, v5, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, p1

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzayw;->zze(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_172
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    const-string p1, "time"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_188

    const-string p1, "Time parameter missing from currentTime video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_188
    :try_start_188
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzayw;->seekTo(I)V
    :try_end_194
    .catch Ljava/lang/NumberFormatException; {:try_start_188 .. :try_end_194} :catch_195

    return-void

    :catch_195
    nop

    const-string p2, "Could not parse time parameter from currentTime video GMSG: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1a7

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1ac

    :cond_1a7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1ac
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_1b0
    const-string v3, "hide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bd

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1bd
    const-string v3, "load"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzhk()V

    return-void

    :cond_1c9
    const-string v3, "loadControl"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Lcom/google/android/gms/internal/ads/zzayw;Ljava/util/Map;)V

    return-void

    :cond_1d5
    const-string v3, "muted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f1

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1ed

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzxa()V

    return-void

    :cond_1ed
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzxb()V

    return-void

    :cond_1f1
    const-string v3, "pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fd

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->pause()V

    return-void

    :cond_1fd
    const-string v3, "play"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_209

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->play()V

    return-void

    :cond_209
    const-string v3, "show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_215

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_215
    const-string v3, "src"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_271

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string v3, "demuxed"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_26d

    :try_start_232
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_23e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_24d

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4
    :try_end_24a
    .catch Lorg/json/JSONException; {:try_start_232 .. :try_end_24a} :catch_24f

    add-int/lit8 v4, v4, 0x1

    goto :goto_23e

    :cond_24d
    move-object v0, v3

    goto :goto_26d

    :catch_24f
    nop

    const-string v0, "Malformed demuxed URL list for playback: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_261

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_266

    :cond_261
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_266
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v2

    :cond_26d
    :goto_26d
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzc(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_271
    const-string v3, "touchMove"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_298

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "dx"

    invoke-static {v0, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "dy"

    invoke-static {v0, p2, v4, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    int-to-float v0, v3

    int-to-float p2, p2

    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzayw;->zza(FF)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzedc:Z

    if-nez p2, :cond_297

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->zzsv()V

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzbau;->zzedc:Z

    :cond_297
    return-void

    :cond_298
    const-string p1, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2ae

    const-string p1, "Level parameter missing from volume video GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_2ae
    :try_start_2ae
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzayw;->setVolume(F)V
    :try_end_2b5
    .catch Ljava/lang/NumberFormatException; {:try_start_2ae .. :try_end_2b5} :catch_2b6

    return-void

    :catch_2b6
    nop

    const-string p2, "Could not parse volume parameter from volume video GMSG: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2c8

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2cd

    :cond_2c8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2cd
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_2d1
    const-string p1, "watermark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2dd

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzxc()V

    return-void

    :cond_2dd
    const-string p1, "Unknown video action: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2ee

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2f4

    :cond_2ee
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2f4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    return-void

    :cond_2f8
    :goto_2f8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, v6, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v0, p2, v5, v2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    const-string v7, "w"

    invoke-static {v0, p2, v7, v6}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "h"

    invoke-static {v0, p2, v8, v6}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->zzxt()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->zzxs()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    :try_start_323
    const-string p1, "player"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_32f
    .catch Ljava/lang/NumberFormatException; {:try_start_323 .. :try_end_32f} :catch_331

    move v8, v2

    goto :goto_332

    :catch_331
    const/4 v8, 0x0

    :goto_332
    const-string p1, "spherical"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v3, :cond_361

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazc;->zzxg()Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object p1

    if-nez p1, :cond_361

    new-instance v10, Lcom/google/android/gms/internal/ads/zzazk;

    const-string p1, "flags"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v10, p1}, Lcom/google/android/gms/internal/ads/zzazk;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzazc;->zza(IIIIIZLcom/google/android/gms/internal/ads/zzazk;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazc;->zzxg()Lcom/google/android/gms/internal/ads/zzayw;

    move-result-object p1

    if-eqz p1, :cond_360

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbau;->zza(Lcom/google/android/gms/internal/ads/zzayw;Ljava/util/Map;)V

    :cond_360
    return-void

    :cond_361
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzazc;->zze(IIII)V

    return-void
.end method

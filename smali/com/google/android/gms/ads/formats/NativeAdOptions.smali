###### Class com.google.android.gms.ads.formats.NativeAdOptions (com.google.android.gms.ads.formats.NativeAdOptions)
.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;,
        Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
    }
.end annotation


# static fields
.field public static final ADCHOICES_BOTTOM_LEFT:I = 0x3

.field public static final ADCHOICES_BOTTOM_RIGHT:I = 0x2

.field public static final ADCHOICES_TOP_LEFT:I = 0x0

.field public static final ADCHOICES_TOP_RIGHT:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_ANY:I = 0x1

.field public static final NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE:I = 0x2

.field public static final NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT:I = 0x3

.field public static final NATIVE_MEDIA_ASPECT_RATIO_SQUARE:I = 0x4

.field public static final NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN:I = 0x0

.field public static final ORIENTATION_ANY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_LANDSCAPE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_PORTRAIT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final zzbju:Z

.field private final zzbjv:I

.field private final zzbjw:I

.field private final zzbjx:Z

.field private final zzbjy:I

.field private final zzbjz:Lcom/google/android/gms/ads/VideoOptions;

.field private final zzbka:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbju:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjv:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjw:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzd(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjx:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zze(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjy:I

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzf(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    invoke-static {p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzg(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbka:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/zza;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAdChoicesPlacement()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjy:I

    return v0
.end method

.method public final getImageOrientation()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjv:I

    return v0
.end method

.method public final getMediaAspectRatio()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjw:I

    return v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final shouldRequestMultipleImages()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbjx:Z

    return v0
.end method

.method public final shouldReturnUrlsForImageAssets()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbju:Z

    return v0
.end method

.method public final zzje()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions;->zzbka:Z

    return v0
.end method

###### Class com.google.android.gms.ads.formats.NativeAdOptions.AdChoicesPlacement (com.google.android.gms.ads.formats.NativeAdOptions$AdChoicesPlacement)
.class public interface abstract annotation Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdChoicesPlacement"
.end annotation

###### Class com.google.android.gms.ads.formats.NativeAdOptions.Builder (com.google.android.gms.ads.formats.NativeAdOptions$Builder)
.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzbju:Z

.field private zzbjv:I

.field private zzbjw:I

.field private zzbjx:Z

.field private zzbjy:I

.field private zzbjz:Lcom/google/android/gms/ads/VideoOptions;

.field private zzbka:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbju:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjv:I

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjw:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjx:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjy:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbka:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbju:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjv:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjw:I

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjx:Z

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjy:I

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbka:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/zza;)V

    return-object v0
.end method

.method public final setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjy:I

    return-object p0
.end method

.method public final setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjv:I

    return-object p0
.end method

.method public final setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjw:I

    return-object p0
.end method

.method public final setRequestCustomMuteThisAd(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbka:Z

    return-object p0
.end method

.method public final setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjx:Z

    return-object p0
.end method

.method public final setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbju:Z

    return-object p0
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

###### Class com.google.android.gms.ads.formats.NativeAdOptions.NativeMediaAspectRatio (com.google.android.gms.ads.formats.NativeAdOptions$NativeMediaAspectRatio)
.class public interface abstract annotation Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NativeMediaAspectRatio"
.end annotation

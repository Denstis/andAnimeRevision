###### Class com.google.android.gms.ads.AdRequest (com.google.android.gms.ads.AdRequest)
.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$MaxAdContentRating;,
        Lcom/google/android/gms/ads/AdRequest$TagForUnderAgeOfConsent;,
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_AD_CONTENT_RATING_G:Ljava/lang/String; = "G"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_MA:Ljava/lang/String; = "MA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_PG:Ljava/lang/String; = "PG"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_T:Ljava/lang/String; = "T"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final zzaaz:Lcom/google/android/gms/internal/ads/zzwz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwz;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzwy;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzwz;-><init>(Lcom/google/android/gms/internal/ads/zzwy;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zza;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwz;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwz;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwz;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final getGender()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwz;->getGender()I

    move-result v0

    return v0
.end method

.method public final getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwz;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwz;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwz;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object p1

    return-object p1
.end method

.method public final getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwz;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final isTestDevice(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwz;->isTestDevice(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final zzdb()Lcom/google/android/gms/internal/ads/zzwz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaaz:Lcom/google/android/gms/internal/ads/zzwz;

    return-object v0
.end method

###### Class com.google.android.gms.ads.AdRequest.Builder (com.google.android.gms.ads.AdRequest$Builder)
.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzabb:Lcom/google/android/gms/internal/ads/zzwy;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    const-string v1, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzwy;->zzcb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/ads/zzwy;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    return-object p0
.end method


# virtual methods
.method public final addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwy;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzca(Ljava/lang/String;)V

    return-object p0
.end method

.method public final addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public final addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "_emulatorLiveAds"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    const-string p2, "B3EEABB8EE11C2BE770B684D95219ECB"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzwy;->zzcc(Ljava/lang/String;)V

    :cond_1c
    return-object p0
.end method

.method public final addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzcb(Ljava/lang/String;)V

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/ads/AdRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/zza;)V

    return-object v0
.end method

.method public final setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public final setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 7

    const-string v0, "Content URL must be non-null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x200

    if-gt v0, v3, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Content URL must not exceed %d in length.  Provided length was %d."

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzcd(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzcg(I)V

    return-object p0
.end method

.method public final setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzt(Z)V

    return-object p0
.end method

.method public final setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zza(Landroid/location/Location;)V

    return-object p0
.end method

.method public final setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzch(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzcf(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzch(I)V

    return-object p0
.end method

.method public final tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzabb:Lcom/google/android/gms/internal/ads/zzwy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzs(Z)V

    return-object p0
.end method

###### Class com.google.android.gms.ads.AdRequest.MaxAdContentRating (com.google.android.gms.ads.AdRequest$MaxAdContentRating)
.class public interface abstract annotation Lcom/google/android/gms/ads/AdRequest$MaxAdContentRating;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MaxAdContentRating"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.ads.AdRequest.TagForUnderAgeOfConsent (com.google.android.gms.ads.AdRequest$TagForUnderAgeOfConsent)
.class public interface abstract annotation Lcom/google/android/gms/ads/AdRequest$TagForUnderAgeOfConsent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TagForUnderAgeOfConsent"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

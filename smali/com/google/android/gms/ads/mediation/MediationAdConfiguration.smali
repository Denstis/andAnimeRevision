###### Class com.google.android.gms.ads.mediation.MediationAdConfiguration (com.google.android.gms.ads.mediation.MediationAdConfiguration)
.class public Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment;
    }
.end annotation


# static fields
.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:I = 0x0

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:I = 0x1

.field public static final TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED:I = -0x1


# instance fields
.field private final zzabl:Ljava/lang/String;

.field private final zzddp:I

.field private final zzdeu:Ljava/lang/String;

.field private final zzeij:Ljava/lang/String;

.field private final zzeik:Landroid/os/Bundle;

.field private final zzeil:Landroid/os/Bundle;

.field private final zzeim:I

.field private final zzlk:Landroid/content/Context;

.field private final zznf:Z

.field private final zzng:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeij:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeik:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeil:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzlk:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zznf:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzng:Landroid/location/Location;

    iput p7, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzddp:I

    iput p8, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeim:I

    iput-object p9, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzabl:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzdeu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBidResponse()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeij:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzlk:Landroid/content/Context;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzng:Landroid/location/Location;

    return-object v0
.end method

.method public getMaxAdContentRating()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzabl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediationExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeil:Landroid/os/Bundle;

    return-object v0
.end method

.method public getServerParameters()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeik:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWatermark()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzdeu:Ljava/lang/String;

    return-object v0
.end method

.method public isTestRequest()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zznf:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzddp:I

    return v0
.end method

.method public taggedForUnderAgeTreatment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->zzeim:I

    return v0
.end method

###### Class com.google.android.gms.ads.mediation.MediationAdConfiguration.TagForChildDirectedTreatment (com.google.android.gms.ads.mediation.MediationAdConfiguration$TagForChildDirectedTreatment)
.class public interface abstract annotation Lcom/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TagForChildDirectedTreatment"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

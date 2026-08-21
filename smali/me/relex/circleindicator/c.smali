###### Class me.relex.circleindicator.c (me.relex.circleindicator.c)
.class public final Lme/relex/circleindicator/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CircleIndicator:[I

.field public static final CircleIndicator_ci_animator:I = 0x0

.field public static final CircleIndicator_ci_animator_reverse:I = 0x1

.field public static final CircleIndicator_ci_drawable:I = 0x2

.field public static final CircleIndicator_ci_drawable_unselected:I = 0x3

.field public static final CircleIndicator_ci_gravity:I = 0x4

.field public static final CircleIndicator_ci_height:I = 0x5

.field public static final CircleIndicator_ci_margin:I = 0x6

.field public static final CircleIndicator_ci_orientation:I = 0x7

.field public static final CircleIndicator_ci_width:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lme/relex/circleindicator/c;->CircleIndicator:[I

    return-void

    :array_a
    .array-data 4
        0x7f030083
        0x7f030084
        0x7f030085
        0x7f030086
        0x7f030087
        0x7f030088
        0x7f030089
        0x7f03008a
        0x7f03008b
    .end array-data
.end method

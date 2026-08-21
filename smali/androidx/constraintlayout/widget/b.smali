###### Class androidx.constraintlayout.widget.b (androidx.constraintlayout.widget.b)
.class public Landroidx/constraintlayout/widget/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/b$b;
    }
.end annotation


# static fields
.field private static final b:[I

.field private static c:Landroid/util/SparseIntArray;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_29a

    sput-object v1, Landroidx/constraintlayout/widget/b;->b:[I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v1, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_constraint_referenced_ids:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/g;->ConstraintSet_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_29a
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;II)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_b
    return p2
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/b$b;
    .registers 5

    new-instance v0, Landroidx/constraintlayout/widget/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/widget/b$b;-><init>(Landroidx/constraintlayout/widget/b$a;)V

    sget-object v1, Landroidx/constraintlayout/widget/g;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/b$b;Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private a(Landroidx/constraintlayout/widget/b$b;Landroid/content/res/TypedArray;)V
    .registers 10

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2bb

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget-object v3, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_2bc

    packed-switch v3, :pswitch_data_32a

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "   "

    const-string v6, "ConstraintSet"

    packed-switch v3, :pswitch_data_336

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attribute 0x"

    :goto_27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroidx/constraintlayout/widget/b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b7

    :pswitch_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    goto :goto_27

    :pswitch_4e
    iget-boolean v3, p1, Landroidx/constraintlayout/widget/b$b;->r0:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p1, Landroidx/constraintlayout/widget/b$b;->r0:Z

    goto/16 :goto_2b7

    :pswitch_58
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroidx/constraintlayout/widget/b$b;->v0:Ljava/lang/String;

    goto/16 :goto_2b7

    :pswitch_60
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->s0:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->s0:I

    goto/16 :goto_2b7

    :pswitch_6a
    const-string v2, "CURRENTLY UNSUPPORTED"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b7

    :pswitch_71
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->q0:F

    goto/16 :goto_2b7

    :pswitch_79
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->p0:F

    goto/16 :goto_2b7

    :pswitch_81
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->z:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->z:F

    goto/16 :goto_2b7

    :pswitch_8b
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->y:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->y:I

    goto/16 :goto_2b7

    :pswitch_95
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->x:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->x:I

    goto/16 :goto_2b7

    :pswitch_9f
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->X:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->X:F

    goto/16 :goto_2b7

    :pswitch_a9
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->g0:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->g0:F

    goto/16 :goto_2b7

    :pswitch_b3
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->f0:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->f0:F

    goto/16 :goto_2b7

    :pswitch_bd
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->e0:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->e0:F

    goto/16 :goto_2b7

    :pswitch_c7
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->d0:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->d0:F

    goto/16 :goto_2b7

    :pswitch_d1
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->c0:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->c0:F

    goto/16 :goto_2b7

    :pswitch_db
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->b0:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->b0:F

    goto/16 :goto_2b7

    :pswitch_e5
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->a0:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->a0:F

    goto/16 :goto_2b7

    :pswitch_ef
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->Z:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->Z:F

    goto/16 :goto_2b7

    :pswitch_f9
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->Y:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->Y:F

    goto/16 :goto_2b7

    :pswitch_103
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroidx/constraintlayout/widget/b$b;->V:Z

    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->W:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->W:F

    goto/16 :goto_2b7

    :pswitch_110
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->U:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->U:F

    goto/16 :goto_2b7

    :pswitch_11a
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->T:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->T:I

    goto/16 :goto_2b7

    :pswitch_124
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->S:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->S:I

    goto/16 :goto_2b7

    :pswitch_12e
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->Q:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->Q:F

    goto/16 :goto_2b7

    :pswitch_138
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->R:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->R:F

    goto/16 :goto_2b7

    :pswitch_142
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->d:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->d:I

    goto/16 :goto_2b7

    :pswitch_14c
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->v:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->v:F

    goto/16 :goto_2b7

    :pswitch_156
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->l:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->l:I

    goto/16 :goto_2b7

    :pswitch_160
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->m:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->m:I

    goto/16 :goto_2b7

    :pswitch_16a
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->F:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->F:I

    goto/16 :goto_2b7

    :pswitch_174
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->r:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->r:I

    goto/16 :goto_2b7

    :pswitch_17e
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->q:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->q:I

    goto/16 :goto_2b7

    :pswitch_188
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->I:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->I:I

    goto/16 :goto_2b7

    :pswitch_192
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->k:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->k:I

    goto/16 :goto_2b7

    :pswitch_19c
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->j:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->j:I

    goto/16 :goto_2b7

    :pswitch_1a6
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->E:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->E:I

    goto/16 :goto_2b7

    :pswitch_1b0
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->C:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->C:I

    goto/16 :goto_2b7

    :pswitch_1ba
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->i:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->i:I

    goto/16 :goto_2b7

    :pswitch_1c4
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->h:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->h:I

    goto/16 :goto_2b7

    :pswitch_1ce
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->D:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->D:I

    goto/16 :goto_2b7

    :pswitch_1d8
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->b:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->b:I

    goto/16 :goto_2b7

    :pswitch_1e2
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->J:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->J:I

    sget-object v2, Landroidx/constraintlayout/widget/b;->b:[I

    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->J:I

    aget v2, v2, v3

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->J:I

    goto/16 :goto_2b7

    :pswitch_1f4
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->c:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->c:I

    goto/16 :goto_2b7

    :pswitch_1fe
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->u:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->u:F

    goto/16 :goto_2b7

    :pswitch_208
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->g:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->g:F

    goto/16 :goto_2b7

    :pswitch_212
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->f:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->f:I

    goto/16 :goto_2b7

    :pswitch_21c
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->e:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->e:I

    goto/16 :goto_2b7

    :pswitch_226
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->L:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->L:I

    goto/16 :goto_2b7

    :pswitch_230
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->P:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->P:I

    goto/16 :goto_2b7

    :pswitch_23a
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->M:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->M:I

    goto/16 :goto_2b7

    :pswitch_244
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->K:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->K:I

    goto/16 :goto_2b7

    :pswitch_24e
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->O:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->O:I

    goto :goto_2b7

    :pswitch_257
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->N:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->N:I

    goto :goto_2b7

    :pswitch_260
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->s:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->s:I

    goto :goto_2b7

    :pswitch_269
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->t:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->t:I

    goto :goto_2b7

    :pswitch_272
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->H:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->H:I

    goto :goto_2b7

    :pswitch_27b
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->B:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->B:I

    goto :goto_2b7

    :pswitch_284
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->A:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->A:I

    goto :goto_2b7

    :pswitch_28d
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroidx/constraintlayout/widget/b$b;->w:Ljava/lang/String;

    goto :goto_2b7

    :pswitch_294
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->n:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->n:I

    goto :goto_2b7

    :pswitch_29d
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->o:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->o:I

    goto :goto_2b7

    :pswitch_2a6
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->G:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->G:I

    goto :goto_2b7

    :pswitch_2af
    iget v3, p1, Landroidx/constraintlayout/widget/b$b;->p:I

    invoke-static {p2, v2, v3}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroidx/constraintlayout/widget/b$b;->p:I

    :goto_2b7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_2bb
    return-void

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_2af
        :pswitch_2a6
        :pswitch_29d
        :pswitch_294
        :pswitch_28d
        :pswitch_284
        :pswitch_27b
        :pswitch_272
        :pswitch_269
        :pswitch_260
        :pswitch_257
        :pswitch_24e
        :pswitch_244
        :pswitch_23a
        :pswitch_230
        :pswitch_226
        :pswitch_21c
        :pswitch_212
        :pswitch_208
        :pswitch_1fe
        :pswitch_1f4
        :pswitch_1e2
        :pswitch_1d8
        :pswitch_1ce
        :pswitch_1c4
        :pswitch_1ba
        :pswitch_1b0
        :pswitch_1a6
        :pswitch_19c
        :pswitch_192
        :pswitch_188
        :pswitch_17e
        :pswitch_174
        :pswitch_16a
        :pswitch_160
        :pswitch_156
        :pswitch_14c
        :pswitch_142
        :pswitch_138
        :pswitch_12e
        :pswitch_124
        :pswitch_11a
        :pswitch_110
        :pswitch_103
        :pswitch_f9
        :pswitch_ef
        :pswitch_e5
        :pswitch_db
        :pswitch_d1
        :pswitch_c7
        :pswitch_bd
        :pswitch_b3
        :pswitch_a9
    .end packed-switch

    :pswitch_data_32a
    .packed-switch 0x3c
        :pswitch_9f
        :pswitch_95
        :pswitch_8b
        :pswitch_81
    .end packed-switch

    :pswitch_data_336
    .packed-switch 0x45
        :pswitch_79
        :pswitch_71
        :pswitch_6a
        :pswitch_60
        :pswitch_58
        :pswitch_4e
        :pswitch_46
    .end packed-switch
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)[I
    .registers 12

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    array-length v5, p2

    if-ge v3, v5, :cond_64

    aget-object v5, p2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :try_start_19
    const-class v6, Landroidx/constraintlayout/widget/f;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    const/4 v6, 0x0

    :goto_26
    if-nez v6, :cond_36

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v6, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_36
    if-nez v6, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_5c

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5c

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_5c

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_5c
    add-int/lit8 v5, v4, 0x1

    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_10

    :cond_64
    array-length p1, p2

    if-eq v4, p1, :cond_6b

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_6b
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_c
    const/4 v1, 0x1

    if-eq v0, v1, :cond_49

    if-eqz v0, :cond_38

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/4 v1, 0x3

    goto :goto_3b

    :cond_16
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/b$b;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iput-boolean v1, v2, Landroidx/constraintlayout/widget/b$b;->a:Z

    :cond_2c
    iget-object v0, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/b$b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_38
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_3b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_3f} :catch_45
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3f} :catch_40

    goto :goto_c

    :catch_40
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catch_45
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_49
    :goto_49
    return-void
.end method

.method a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_10
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_ea

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v3, :cond_e2

    iget-object v7, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_de

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/b$b;

    instance-of v8, v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_43

    iput v4, v7, Landroidx/constraintlayout/widget/b$b;->t0:I

    :cond_43
    iget v8, v7, Landroidx/constraintlayout/widget/b$b;->t0:I

    if-eq v8, v3, :cond_71

    if-eq v8, v4, :cond_4a

    goto :goto_71

    :cond_4a
    move-object v3, v5

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    iget v4, v7, Landroidx/constraintlayout/widget/b$b;->s0:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget-boolean v4, v7, Landroidx/constraintlayout/widget/b$b;->r0:Z

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    iget-object v4, v7, Landroidx/constraintlayout/widget/b$b;->u0:[I

    if-eqz v4, :cond_62

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    goto :goto_71

    :cond_62
    iget-object v4, v7, Landroidx/constraintlayout/widget/b$b;->v0:Ljava/lang/String;

    if-eqz v4, :cond_71

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/widget/b;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v7, Landroidx/constraintlayout/widget/b$b;->u0:[I

    iget-object v4, v7, Landroidx/constraintlayout/widget/b$b;->u0:[I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    :cond_71
    :goto_71
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/b$b;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->J:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_de

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->U:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->X:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->Y:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->Z:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->a0:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->b0:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->c0:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_b3

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->c0:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    :cond_b3
    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->d0:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_c0

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->d0:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_c0
    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->e0:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->f0:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_de

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->g0:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v3, v7, Landroidx/constraintlayout/widget/b$b;->V:Z

    if-eqz v3, :cond_de

    iget v3, v7, Landroidx/constraintlayout/widget/b$b;->W:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    :cond_de
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_e2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ea
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ee
    :goto_ee
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_161

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/b$b;

    iget v5, v2, Landroidx/constraintlayout/widget/b$b;->t0:I

    if-eq v5, v3, :cond_142

    if-eq v5, v4, :cond_109

    goto :goto_142

    :cond_109
    new-instance v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    iget-object v6, v2, Landroidx/constraintlayout/widget/b$b;->u0:[I

    if-eqz v6, :cond_121

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    goto :goto_130

    :cond_121
    iget-object v6, v2, Landroidx/constraintlayout/widget/b$b;->v0:Ljava/lang/String;

    if-eqz v6, :cond_130

    invoke-direct {p0, v5, v6}, Landroidx/constraintlayout/widget/b;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v2, Landroidx/constraintlayout/widget/b$b;->u0:[I

    iget-object v6, v2, Landroidx/constraintlayout/widget/b$b;->u0:[I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    :cond_130
    :goto_130
    iget v6, v2, Landroidx/constraintlayout/widget/b$b;->s0:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/constraintlayout/widget/a;->a()V

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/widget/b$b;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_142
    :goto_142
    iget-boolean v5, v2, Landroidx/constraintlayout/widget/b$b;->a:Z

    if-eqz v5, :cond_ee

    new-instance v5, Landroidx/constraintlayout/widget/d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/b$b;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {p1, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ee

    :cond_161
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/c;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_5b

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/c$a;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_53

    iget-object v5, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    iget-object v5, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/b$b;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/b$b;-><init>(Landroidx/constraintlayout/widget/b$a;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v5, p0, Landroidx/constraintlayout/widget/b;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/b$b;

    instance-of v6, v2, Landroidx/constraintlayout/widget/a;

    if-eqz v6, :cond_4d

    check-cast v2, Landroidx/constraintlayout/widget/a;

    invoke-static {v5, v2, v4, v3}, Landroidx/constraintlayout/widget/b$b;->a(Landroidx/constraintlayout/widget/b$b;Landroidx/constraintlayout/widget/a;ILandroidx/constraintlayout/widget/c$a;)V

    :cond_4d
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/b$b;->a(Landroidx/constraintlayout/widget/b$b;ILandroidx/constraintlayout/widget/c$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_53
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    return-void
.end method

###### Class androidx.constraintlayout.widget.b.a (androidx.constraintlayout.widget.b$a)
.class synthetic Landroidx/constraintlayout/widget/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class androidx.constraintlayout.widget.b.C0015b (androidx.constraintlayout.widget.b$b)
.class Landroidx/constraintlayout/widget/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:F

.field public R:F

.field public S:I

.field public T:I

.field public U:F

.field public V:Z

.field public W:F

.field public X:F

.field public Y:F

.field public Z:F

.field a:Z

.field public a0:F

.field public b:I

.field public b0:F

.field public c:I

.field public c0:F

.field d:I

.field public d0:F

.field public e:I

.field public e0:F

.field public f:I

.field public f0:F

.field public g:F

.field public g0:F

.field public h:I

.field public h0:Z

.field public i:I

.field public i0:Z

.field public j:I

.field public j0:I

.field public k:I

.field public k0:I

.field public l:I

.field public l0:I

.field public m:I

.field public m0:I

.field public n:I

.field public n0:I

.field public o:I

.field public o0:I

.field public p:I

.field public p0:F

.field public q:I

.field public q0:F

.field public r:I

.field public r0:Z

.field public s:I

.field public s0:I

.field public t:I

.field public t0:I

.field public u:F

.field public u0:[I

.field public v:F

.field public v0:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->e:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->f:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->g:F

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->h:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->i:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->j:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->k:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->l:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->m:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->n:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->o:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->p:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->q:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->r:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->s:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->t:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->v:F

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/constraintlayout/widget/b$b;->w:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->x:I

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->y:I

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->z:F

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->A:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->B:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->C:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->D:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->E:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->F:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->G:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->H:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->I:I

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->J:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->K:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->L:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->M:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->N:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->O:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->P:I

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->Q:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->R:F

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->S:I

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->T:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroidx/constraintlayout/widget/b$b;->U:F

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->V:Z

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->W:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->X:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->Y:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->Z:F

    iput v3, p0, Landroidx/constraintlayout/widget/b$b;->a0:F

    iput v3, p0, Landroidx/constraintlayout/widget/b$b;->b0:F

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, p0, Landroidx/constraintlayout/widget/b$b;->c0:F

    iput v4, p0, Landroidx/constraintlayout/widget/b$b;->d0:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->e0:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->f0:F

    iput v2, p0, Landroidx/constraintlayout/widget/b$b;->g0:F

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->h0:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->i0:Z

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->j0:I

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->k0:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->l0:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->m0:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->n0:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->o0:I

    iput v3, p0, Landroidx/constraintlayout/widget/b$b;->p0:F

    iput v3, p0, Landroidx/constraintlayout/widget/b$b;->q0:F

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->r0:Z

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->s0:I

    iput v1, p0, Landroidx/constraintlayout/widget/b$b;->t0:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/constraintlayout/widget/b$a;)V
    .registers 2

    invoke-direct {p0}, Landroidx/constraintlayout/widget/b$b;-><init>()V

    return-void
.end method

.method private a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .registers 4

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->d:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->h:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->i:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->j:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->k:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->l:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->m:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->n:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->o:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->p:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->q:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->r:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->s:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->t:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->v:F

    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/widget/b$b;->w:Ljava/lang/String;

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->x:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->y:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->z:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->A:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->B:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->C:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->g:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->e:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->f:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->b:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->c:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->D:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->E:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->F:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->G:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->Q:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->R:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->T:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->S:I

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/b$b;->h0:Z

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->i0:Z

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->j0:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iput v0, p0, Landroidx/constraintlayout/widget/b$b;->k0:I

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/b$b;->h0:Z

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->l0:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->m0:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->n0:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->o0:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->p0:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->q0:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_ca

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->H:I

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->I:I

    :cond_ca
    return-void
.end method

.method private a(ILandroidx/constraintlayout/widget/c$a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/b$b;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->m0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->U:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->p0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->X:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->q0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->Y:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->r0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->Z:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->s0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->a0:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->t0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->b0:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->u0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->c0:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->v0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->d0:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->w0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->e0:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->x0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->f0:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->y0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->g0:F

    iget p1, p2, Landroidx/constraintlayout/widget/c$a;->o0:F

    iput p1, p0, Landroidx/constraintlayout/widget/b$b;->W:F

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/c$a;->n0:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/b$b;->V:Z

    return-void
.end method

.method private a(Landroidx/constraintlayout/widget/a;ILandroidx/constraintlayout/widget/c$a;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/widget/b$b;->a(ILandroidx/constraintlayout/widget/c$a;)V

    instance-of p2, p1, Landroidx/constraintlayout/widget/Barrier;

    if-eqz p2, :cond_18

    const/4 p2, 0x1

    iput p2, p0, Landroidx/constraintlayout/widget/b$b;->t0:I

    check-cast p1, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/widget/b$b;->s0:I

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/a;->getReferencedIds()[I

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/widget/b$b;->u0:[I

    :cond_18
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/b$b;ILandroidx/constraintlayout/widget/c$a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/b$b;->a(ILandroidx/constraintlayout/widget/c$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/b$b;Landroidx/constraintlayout/widget/a;ILandroidx/constraintlayout/widget/c$a;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/b$b;->a(Landroidx/constraintlayout/widget/a;ILandroidx/constraintlayout/widget/c$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .registers 4

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->h:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->i:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->j:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->k:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->l:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->m:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->n:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->o:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->p:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->q:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->r:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->s:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->t:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->D:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->E:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->F:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->G:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->P:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->x:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->O:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->y:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->v:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->x:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->y:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->z:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iget-object v0, p0, Landroidx/constraintlayout/widget/b$b;->w:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->A:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->B:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->Q:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->R:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->T:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->S:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->h0:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/b$b;->i0:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->j0:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->k0:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->l0:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->m0:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->n0:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->o0:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->p0:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->q0:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->C:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->g:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->e:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->f:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->b:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_cc

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->I:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, p0, Landroidx/constraintlayout/widget/b$b;->H:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_cc
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    return-void
.end method

.method public clone()Landroidx/constraintlayout/widget/b$b;
    .registers 4

    new-instance v0, Landroidx/constraintlayout/widget/b$b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/b$b;-><init>()V

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/b$b;->a:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/b$b;->a:Z

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->b:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->b:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->c:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->c:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->e:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->e:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->f:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->f:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->g:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->g:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->h:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->h:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->i:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->i:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->j:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->j:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->k:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->k:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->l:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->l:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->m:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->m:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->n:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->n:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->o:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->o:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->p:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->p:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->q:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->q:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->r:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->r:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->s:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->s:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->t:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->t:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->u:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->v:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->v:F

    iget-object v1, p0, Landroidx/constraintlayout/widget/b$b;->w:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/widget/b$b;->w:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->A:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->A:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->B:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->B:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->u:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->u:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->u:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->u:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->u:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->u:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->C:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->C:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->D:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->D:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->E:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->E:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->F:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->F:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->G:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->G:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->H:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->H:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->I:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->I:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->J:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->J:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->K:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->K:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->L:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->L:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->M:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->M:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->N:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->N:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->O:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->O:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->P:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->P:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->Q:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->Q:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->R:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->R:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->S:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->S:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->T:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->T:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->U:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->U:F

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/b$b;->V:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/b$b;->V:Z

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->W:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->W:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->X:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->X:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->Y:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->Y:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->Z:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->Z:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->a0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->a0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->b0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->b0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->c0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->c0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->d0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->d0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->e0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->e0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->f0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->f0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->g0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->g0:F

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/b$b;->h0:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/b$b;->h0:Z

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/b$b;->i0:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/b$b;->i0:Z

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->j0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->j0:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->k0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->k0:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->l0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->l0:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->m0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->m0:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->n0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->n0:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->o0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->o0:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->p0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->p0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->q0:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->q0:F

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->s0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->s0:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->t0:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->t0:I

    iget-object v1, p0, Landroidx/constraintlayout/widget/b$b;->u0:[I

    if-eqz v1, :cond_130

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/widget/b$b;->u0:[I

    :cond_130
    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->x:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->x:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->y:I

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->y:I

    iget v1, p0, Landroidx/constraintlayout/widget/b$b;->z:F

    iput v1, v0, Landroidx/constraintlayout/widget/b$b;->z:F

    iget-boolean v1, p0, Landroidx/constraintlayout/widget/b$b;->r0:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/b$b;->r0:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/b$b;->clone()Landroidx/constraintlayout/widget/b$b;

    move-result-object v0

    return-object v0
.end method

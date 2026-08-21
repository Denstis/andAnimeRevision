###### Class com.google.android.exoplayer2.ui.spherical.ProjectionRenderer (com.google.android.exoplayer2.ui.spherical.ProjectionRenderer)
.class final Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;,
        Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$EyeType;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER_CODE:[Ljava/lang/String;


# instance fields
.field private leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:I

.field private rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uniform mat4 uMvpMatrix;"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "uniform mat3 uTexMatrix;"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "attribute vec4 aPosition;"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "attribute vec2 aTexCoords;"

    aput-object v6, v1, v5

    const-string v6, "varying vec2 vTexCoords;"

    const/4 v7, 0x4

    aput-object v6, v1, v7

    const-string v8, "void main() {"

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v10, 0x6

    const-string v11, "  gl_Position = uMvpMatrix * aPosition;"

    aput-object v11, v1, v10

    const/4 v11, 0x7

    const-string v12, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    aput-object v12, v1, v11

    const-string v12, "}"

    const/16 v13, 0x8

    aput-object v12, v1, v13

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    new-array v1, v11, [Ljava/lang/String;

    const-string v11, "#extension GL_OES_EGL_image_external : require"

    aput-object v11, v1, v2

    const-string v2, "precision mediump float;"

    aput-object v2, v1, v3

    const-string v2, "uniform samplerExternalOES uTexture;"

    aput-object v2, v1, v4

    aput-object v6, v1, v5

    aput-object v8, v1, v7

    const-string v2, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    aput-object v2, v1, v9

    aput-object v12, v1, v10

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    new-array v1, v0, [F

    fill-array-data v1, :array_72

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_88

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_9e

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_b4

    sput-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_ca

    sput-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    :array_72
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_88
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_9e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_ca
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_23

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v0

    if-ne v0, v3, :cond_23

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez p0, :cond_23

    const/4 v2, 0x1

    :cond_23
    return v2
.end method


# virtual methods
.method draw(I[FI)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    goto :goto_c

    :cond_a
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    :goto_c
    if-nez v3, :cond_f

    return-void

    :cond_f
    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    iget v4, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    if-ne v1, v2, :cond_2e

    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    goto :goto_3d

    :cond_2e
    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    goto :goto_3d

    :cond_31
    if-ne v4, v2, :cond_3b

    if-ne v1, v2, :cond_38

    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    goto :goto_3d

    :cond_38
    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    goto :goto_3d

    :cond_3b
    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    :goto_3d
    iget v2, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    const/4 v4, 0x0

    invoke-static {v2, v5, v4, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    move-object/from16 v2, p2

    invoke-static {v1, v5, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v1, 0x8d65

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    iget v5, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$000(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    iget v11, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$100(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v16

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$200(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I

    move-result v1

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->access$300(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I

    move-result v2

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->checkGlError()V

    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method init()V
    .registers 3

    sget-object v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->compileProgram([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "uMvpMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->positionHandle:I

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "aTexCoords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->texCoordsHandle:I

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->textureHandle:I

    return-void
.end method

.method public setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->stereoMode:I

    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    if-eqz v0, :cond_20

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    goto :goto_2c

    :cond_20
    new-instance v0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    move-object p1, v0

    :goto_2c
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;

    return-void
.end method

.method shutdown()V
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;->program:I

    if-eqz v0, :cond_7

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_7
    return-void
.end method

###### Class com.google.android.exoplayer2.ui.spherical.ProjectionRenderer.EyeType (com.google.android.exoplayer2.ui.spherical.ProjectionRenderer$EyeType)
.class interface abstract Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$EyeType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EyeType"
.end annotation


# static fields
.field public static final LEFT:I = 0x1

.field public static final MONOCULAR:I = 0x0

.field public static final RIGHT:I = 0x2

###### Class com.google.android.exoplayer2.ui.spherical.ProjectionRenderer.MeshData (com.google.android.exoplayer2.ui.spherical.ProjectionRenderer$MeshData)
.class Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MeshData"
.end annotation


# instance fields
.field private final drawMode:I

.field private final textureBuffer:Ljava/nio/FloatBuffer;

.field private final vertexBuffer:Ljava/nio/FloatBuffer;

.field private final vertexCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->getVertexCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->vertices:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureCoords:[F

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/spherical/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    iget p1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->mode:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 p1, 0x4

    :goto_22
    iput p1, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    goto :goto_29

    :cond_25
    const/4 p1, 0x6

    goto :goto_22

    :cond_27
    const/4 p1, 0x5

    goto :goto_22

    :goto_29
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;
    .registers 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->drawMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;)I
    .registers 1

    iget p0, p0, Lcom/google/android/exoplayer2/ui/spherical/ProjectionRenderer$MeshData;->vertexCount:I

    return p0
.end method

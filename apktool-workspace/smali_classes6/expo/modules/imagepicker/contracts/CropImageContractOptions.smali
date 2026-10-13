.class public final Lexpo/modules/imagepicker/contracts/CropImageContractOptions;
.super Ljava/lang/Object;
.source "CropImageContract.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J1\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/imagepicker/contracts/CropImageContractOptions;",
        "Ljava/io/Serializable;",
        "sourceUri",
        "",
        "options",
        "Lexpo/modules/imagepicker/ImagePickerOptions;",
        "outputFile",
        "Ljava/io/File;",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "<init>",
        "(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)V",
        "getSourceUri",
        "()Ljava/lang/String;",
        "getOptions",
        "()Lexpo/modules/imagepicker/ImagePickerOptions;",
        "getOutputFile",
        "()Ljava/io/File;",
        "getCompressFormat",
        "()Landroid/graphics/Bitmap$CompressFormat;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "expo-image-picker_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final options:Lexpo/modules/imagepicker/ImagePickerOptions;

.field private final outputFile:Ljava/io/File;

.field private final sourceUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 1

    const-string v0, "sourceUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressFormat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    .line 76
    iput-object p3, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    .line 77
    iput-object p4, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/imagepicker/contracts/CropImageContractOptions;Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/Object;)Lexpo/modules/imagepicker/contracts/CropImageContractOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->copy(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public final component3()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public final component4()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Lexpo/modules/imagepicker/contracts/CropImageContractOptions;
    .locals 1

    const-string v0, "sourceUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressFormat"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;-><init>(Ljava/lang/String;Lexpo/modules/imagepicker/ImagePickerOptions;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v3, p1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    iget-object v3, p1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object p1, p1, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 77
    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public final getOptions()Lexpo/modules/imagepicker/ImagePickerOptions;
    .locals 1

    .line 75
    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    return-object v0
.end method

.method public final getOutputFile()Ljava/io/File;
    .locals 1

    .line 76
    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method public final getSourceUri()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    invoke-virtual {v1}, Lexpo/modules/imagepicker/ImagePickerOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->sourceUri:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->options:Lexpo/modules/imagepicker/ImagePickerOptions;

    iget-object v2, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->outputFile:Ljava/io/File;

    iget-object v3, p0, Lexpo/modules/imagepicker/contracts/CropImageContractOptions;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CropImageContractOptions(sourceUri="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", options="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compressFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

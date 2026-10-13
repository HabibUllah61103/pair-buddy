.class public final Lexpo/modules/imagemanipulator/ManipulatorResult;
.super Ljava/lang/Object;
.source "ImageManipulatorContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageManipulatorContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageManipulatorContext.kt\nexpo/modules/imagemanipulator/ManipulatorResult\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CodedException.kt\nexpo/modules/kotlin/exception/CodedExceptionKt\n*L\n1#1,92:1\n1#2:93\n11#3,6:94\n*S KotlinDebug\n*F\n+ 1 ImageManipulatorContext.kt\nexpo/modules/imagemanipulator/ManipulatorResult\n*L\n30#1:94,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c2\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c2\u0003J!\u0010\u000e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/ManipulatorResult;",
        "",
        "value",
        "Landroid/graphics/Bitmap;",
        "error",
        "Lexpo/modules/kotlin/exception/CodedException;",
        "<init>",
        "(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V",
        "map",
        "transformer",
        "Lexpo/modules/imagemanipulator/transformers/ImageTransformer;",
        "get",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "expo-image-manipulator_release"
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
.field private final error:Lexpo/modules/kotlin/exception/CodedException;

.field private final value:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    .line 15
    iput-object p2, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    return-void
.end method

.method private final component1()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final component2()Lexpo/modules/kotlin/exception/CodedException;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    return-object v0
.end method

.method public static synthetic copy$default(Lexpo/modules/imagemanipulator/ManipulatorResult;Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;ILjava/lang/Object;)Lexpo/modules/imagemanipulator/ManipulatorResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/imagemanipulator/ManipulatorResult;->copy(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)Lexpo/modules/imagemanipulator/ManipulatorResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)Lexpo/modules/imagemanipulator/ManipulatorResult;
    .locals 1

    new-instance v0, Lexpo/modules/imagemanipulator/ManipulatorResult;

    invoke-direct {v0, p1, p2}, Lexpo/modules/imagemanipulator/ManipulatorResult;-><init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/imagemanipulator/ManipulatorResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/imagemanipulator/ManipulatorResult;

    iget-object v1, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    iget-object p1, p1, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final get()Landroid/graphics/Bitmap;
    .locals 2

    .line 35
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The result doesn\'t have a value or error"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lexpo/modules/kotlin/exception/CodedException;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final map(Lexpo/modules/imagemanipulator/transformers/ImageTransformer;)Lexpo/modules/imagemanipulator/ManipulatorResult;
    .locals 5

    const-string v0, "transformer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 19
    new-instance p1, Lexpo/modules/imagemanipulator/ManipulatorResult;

    invoke-direct {p1, v1, v0}, Lexpo/modules/imagemanipulator/ManipulatorResult;-><init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V

    return-object p1

    .line 25
    :cond_0
    :try_start_0
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p1, v0}, Lexpo/modules/imagemanipulator/transformers/ImageTransformer;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 23
    new-instance v0, Lexpo/modules/imagemanipulator/ManipulatorResult;

    invoke-direct {v0, p1, v1}, Lexpo/modules/imagemanipulator/ManipulatorResult;-><init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V

    return-object v0

    .line 25
    :cond_1
    const-string p1, "The result doesn\'t have a value or error"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 30
    new-instance v0, Lexpo/modules/imagemanipulator/ManipulatorResult;

    .line 96
    instance-of v2, p1, Lexpo/modules/kotlin/exception/CodedException;

    if-eqz v2, :cond_2

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    goto :goto_0

    .line 97
    :cond_2
    instance-of v2, p1, Lexpo/modules/core/errors/CodedException;

    if-eqz v2, :cond_3

    new-instance v2, Lexpo/modules/kotlin/exception/CodedException;

    check-cast p1, Lexpo/modules/core/errors/CodedException;

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getCode(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lexpo/modules/core/errors/CodedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lexpo/modules/kotlin/exception/CodedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v2

    goto :goto_0

    .line 98
    :cond_3
    new-instance v2, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v2, p1}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    check-cast p1, Lexpo/modules/kotlin/exception/CodedException;

    .line 30
    :goto_0
    invoke-direct {v0, v1, p1}, Lexpo/modules/imagemanipulator/ManipulatorResult;-><init>(Landroid/graphics/Bitmap;Lexpo/modules/kotlin/exception/CodedException;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->value:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lexpo/modules/imagemanipulator/ManipulatorResult;->error:Lexpo/modules/kotlin/exception/CodedException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ManipulatorResult(value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$lambda$13$$inlined$Function$2;
.super Ljava/lang/Object;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagemanipulator/ImageManipulatorModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 ImageManipulatorModule.kt\nexpo/modules/imagemanipulator/ImageManipulatorModule\n+ 4 Either.kt\nexpo/modules/kotlin/types/EitherKt\n*L\n1#1,613:1\n11#2:614\n69#3,3:615\n72#3:619\n73#3,3:621\n76#3,3:625\n43#4:618\n43#4:620\n43#4:624\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$Function$6\n+ 2 ImageManipulatorModule.kt\nexpo/modules/imagemanipulator/ImageManipulatorModule\n*L\n130#1:614\n71#2:618\n72#2:620\n75#2:624\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;


# direct methods
.method public constructor <init>(Lexpo/modules/imagemanipulator/ImageManipulatorModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$lambda$13$$inlined$Function$2;->this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$lambda$13$$inlined$Function$2;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 131
    check-cast p1, Lexpo/modules/kotlin/types/EitherOfThree;

    .line 615
    const-class v0, Landroid/net/Uri;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->isFirstType(Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$lambda$13$$inlined$Function$2;->this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    const-class v1, Landroid/net/Uri;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1}, Lexpo/modules/kotlin/types/EitherOfThree;->getFirstType(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule;->access$createManipulatorContext(Lexpo/modules/imagemanipulator/ImageManipulatorModule;Landroid/net/Uri;)Lexpo/modules/imagemanipulator/ImageManipulatorContext;

    move-result-object p1

    return-object p1

    .line 617
    :cond_0
    const-class v0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->isSecondType(Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-class v0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->getSecondType(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-virtual {p1}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 621
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$lambda$13$$inlined$Function$2;->this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    invoke-static {v0, p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule;->access$createManipulatorContext(Lexpo/modules/imagemanipulator/ImageManipulatorModule;Landroid/graphics/Bitmap;)Lexpo/modules/imagemanipulator/ImageManipulatorContext;

    move-result-object p1

    return-object p1

    .line 623
    :cond_1
    const-class v0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->getThirdType(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-virtual {p1}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 625
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 627
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ImageManipulatorModule$definition$lambda$13$$inlined$Function$2;->this$0:Lexpo/modules/imagemanipulator/ImageManipulatorModule;

    invoke-static {v0, p1}, Lexpo/modules/imagemanipulator/ImageManipulatorModule;->access$createManipulatorContext(Lexpo/modules/imagemanipulator/ImageManipulatorModule;Landroid/graphics/Bitmap;)Lexpo/modules/imagemanipulator/ImageManipulatorContext;

    move-result-object p1

    return-object p1

    .line 626
    :cond_3
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$IllegalArgument;

    const-string v0, "The drawable cannot be converted to a bitmap"

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lexpo/modules/kotlin/exception/Exceptions$IllegalArgument;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

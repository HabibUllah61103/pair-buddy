.class final Lexpo/modules/image/ExpoImageModule$definition$1$11$1;
.super Ljava/lang/Object;
.source "ExpoImageModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/image/ExpoImageModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/image/ExpoImageViewWrapper;",
        "Lexpo/modules/kotlin/types/EitherOfThree<",
        "Ljava/util/List<",
        "+",
        "Lexpo/modules/image/records/SourceMap;",
        ">;",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
        "Landroid/graphics/Bitmap;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoImageModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule$definition$1$11$1\n+ 2 Either.kt\nexpo/modules/kotlin/types/EitherKt\n*L\n1#1,339:1\n43#2:340\n43#2:341\n43#2:342\n43#2:343\n43#2:344\n*S KotlinDebug\n*F\n+ 1 ExpoImageModule.kt\nexpo/modules/image/ExpoImageModule$definition$1$11$1\n*L\n225#1:340\n226#1:341\n230#1:342\n231#1:343\n236#1:344\n*E\n"
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
.field final synthetic this$0:Lexpo/modules/image/ExpoImageModule;


# direct methods
.method constructor <init>(Lexpo/modules/image/ExpoImageModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/image/ExpoImageModule$definition$1$11$1;->this$0:Lexpo/modules/image/ExpoImageModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 219
    check-cast p1, Lexpo/modules/image/ExpoImageViewWrapper;

    check-cast p2, Lexpo/modules/kotlin/types/EitherOfThree;

    invoke-virtual {p0, p1, p2}, Lexpo/modules/image/ExpoImageModule$definition$1$11$1;->invoke(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/kotlin/types/EitherOfThree;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/image/ExpoImageViewWrapper;Lexpo/modules/kotlin/types/EitherOfThree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/image/ExpoImageViewWrapper;",
            "Lexpo/modules/kotlin/types/EitherOfThree<",
            "Ljava/util/List<",
            "Lexpo/modules/image/records/SourceMap;",
            ">;",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lexpo/modules/kotlin/sharedobjects/SharedRef<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 221
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->setSources$expo_image_release(Ljava/util/List;)V

    return-void

    .line 225
    :cond_0
    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p2, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->isFirstType(Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p2, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->getFirstType(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->setSources$expo_image_release(Ljava/util/List;)V

    return-void

    .line 230
    :cond_1
    const-class v0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p2, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->isSecondType(Lkotlin/reflect/KClass;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const-class v0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p2, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->getSecondType(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-virtual {p2}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 232
    new-instance v0, Lexpo/modules/image/records/DecodedSource;

    invoke-direct {v0, p2}, Lexpo/modules/image/records/DecodedSource;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->setSources$expo_image_release(Ljava/util/List;)V

    return-void

    .line 236
    :cond_2
    const-class v0, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p2, v0}, Lexpo/modules/kotlin/types/EitherOfThree;->getThirdType(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/kotlin/sharedobjects/SharedRef;

    invoke-virtual {p2}, Lexpo/modules/kotlin/sharedobjects/SharedRef;->getRef()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 237
    iget-object v0, p0, Lexpo/modules/image/ExpoImageModule$definition$1$11$1;->this$0:Lexpo/modules/image/ExpoImageModule;

    invoke-virtual {v0}, Lexpo/modules/image/ExpoImageModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 238
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 239
    new-instance p2, Lexpo/modules/image/records/DecodedSource;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p2, v1}, Lexpo/modules/image/records/DecodedSource;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lexpo/modules/image/ExpoImageViewWrapper;->setSources$expo_image_release(Ljava/util/List;)V

    return-void

    .line 237
    :cond_3
    new-instance p1, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;

    invoke-direct {p1}, Lexpo/modules/kotlin/exception/Exceptions$ReactContextLost;-><init>()V

    throw p1
.end method
